<?php namespace Application\Block\BlockBackgroundVideo;

defined("C5_EXECUTE") or die("Access Denied.");

use Concrete\Core\Block\BlockController;
use Core;
use File;
use Page;
use Permissions;
use URL;

class Controller extends BlockController
{
    public $btFieldsRequired = [];
    protected $btExportFileColumns = ['poster', 'video'];
    protected $btTable = 'btBlockBackgroundVideo';
    protected $btInterfaceWidth = 600;
    protected $btInterfaceHeight = 500;
    protected $btIgnorePageThemeGridFrameworkContainer = false;
    protected $btCacheBlockRecord = true;
    protected $btCacheBlockOutput = true;
    protected $btCacheBlockOutputOnPost = true;
    protected $btCacheBlockOutputForRegisteredUsers = true;
    protected $pkg = false;
    
    public function getBlockTypeName()
    {
        return t("Background Video");
    }

    public function getSearchableContent()
    {
        $content = [];
        $content[] = $this->youtube;
        $content[] = $this->vimeo;
        return implode(" ", $content);
    }

    public function view()
    {
        
        if ($this->poster && ($f = File::getByID($this->poster)) && is_object($f)) {
            $this->set("poster", $f);
        } else {
            $this->set("poster", false);
        }
        $videoType_options = [
            // '' => "-- " . t("None") . " --",
            '1' => "Internal video",
            '2' => "Youtube",
            '3' => "Vimeo"
        ];
        $this->set("videoType_options", $videoType_options);
        $video_id = (int)$this->video;
        $this->video = false;
        if ($video_id > 0 && ($video_file = File::getByID($video_id)) && is_object($video_file)) {
            $fp = new Permissions($video_file);
	        if ($fp->canViewFile()) {
	            $urls = ['relative' => $video_file->getRelativePath()];
		        if (($c = Page::getCurrentPage()) && $c instanceof Page) {
			        $urls['download'] = URL::to('/download_file', $video_id, $c->getCollectionID());
		        }
		        $video_file->urls = $urls;
		        $this->video = $video_file;
            }
        }
        $this->set("video", $this->video);
        $youtube_code = null;
        preg_match('~^(?:https?://)?(?:www\.)?(?:youtube\.com|youtu\.be)/watch\?v=([^&]+)~x', $this->youtube, $matches);
        if (!empty($matches) && isset($matches[1]) && trim($matches[1]) != "") {
            $youtube_code = $matches[1];
        }
        $this->set("youtube", $youtube_code);
        $this->set("vimeo", ($vimeoPlayerID = $this->vimeoPlayerID($this->vimeo)) ? $vimeoPlayerID : null);
    }

    public function add()
    {
        $this->addEdit();
        $this->set("videoType", '1');
    }

    public function edit()
    {
        $this->addEdit();
    }

    protected function addEdit()
    {
        $this->set("videoType_options", [
                // '' => "-- " . t("None") . " --",
                '1' => "Internal video",
                '2' => "Youtube",
                '3' => "Vimeo"
            ]
        );
        $this->requireAsset('core/file-manager');
        $this->set('btFieldsRequired', $this->btFieldsRequired);
        $this->set('identifier_getString', Core::make('helper/validation/identifier')->getString(18));
    }

    public function save($args)
    {
        $args['poster'] = isset($args['poster']) && is_numeric($args['poster']) ? $args['poster'] : 0;
        $args['video'] = isset($args['video']) && is_numeric($args['video']) ? $args['video'] : 0;
        parent::save($args);
    }

    public function validate($args)
    {
        $e = Core::make("helper/validation/error");
        if (in_array("poster", $this->btFieldsRequired) && (trim($args["poster"]) == "" || !is_object(File::getByID($args["poster"])))) {
            $e->add(t("The %s field is required.", t("Poster")));
        }
        if ((in_array("videoType", $this->btFieldsRequired) && (!isset($args["videoType"]) || trim($args["videoType"]) == "")) || (isset($args["videoType"]) && trim($args["videoType"]) != "" && !in_array($args["videoType"], ["1", "2", "3"]))) {
            $e->add(t("The %s field has an invalid value.", t("Video Type")));
        }
        if (in_array("video", $this->btFieldsRequired) && (!isset($args["video"]) || trim($args["video"]) == "" || !is_object(File::getByID($args["video"])))) {
            $e->add(t("The %s field is required.", t("Video")));
        }
        if (in_array("youtube", $this->btFieldsRequired) && trim($args["youtube"]) == "") {
            $e->add(t("The %s field is required.", t("Youtube")));
        } else {
            preg_match('~^(?:https?://)?(?:www\.)?(?:youtube\.com|youtu\.be)/watch\?v=([^&]+)~x', $args["youtube"], $matches);
            if ($args["youtube"] != "" && (!isset($matches[1]) || trim($matches[1]) == "")) {
                $e->add(t("The %s field contains an invalid YouTube URL.", t("Youtube")));
            }
        }
        if (in_array("vimeo", $this->btFieldsRequired) && trim($args["vimeo"]) == "") {
            $e->add(t("The %s field is required.", t("Vimeo")));
        }
        elseif (trim($args["vimeo"]) != "") {
            if (!$this->vimeoPlayerID($args["vimeo"])) {
                $e->add(t("The %s field does not have a valid Vimeo URL.", t("Vimeo")));
            }
        }
        return $e;
    }

    public function composer()
    {
        $this->edit();
    }

    public function vimeoPlayerID($link)
    {
        $regexstr = '~(?:<iframe [^>]*src=")?(?:https?:\/\/(?:[\w]+\.)*vimeo\.com(?:[\/\w:]*(?:\/videos)?)?\/([0-9]+)[^\s]*)"?(?:[^>]*><\/iframe>)?(?:<p>.*<\/p>)?~ix';
        preg_match($regexstr, $link, $matches);
        return $matches ? $matches[1] : false;
    }
}