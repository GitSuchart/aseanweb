<?php namespace Application\Block\BlockCustomLink;

defined("C5_EXECUTE") or die("Access Denied.");

use AssetList;
use Concrete\Core\Block\BlockController;
use Concrete\Core\Editor\LinkAbstractor;
use Core;
use Database;
use Page;

class Controller extends BlockController
{
    public $btFieldsRequired = ['item' => []];
    protected $btExportTables = ['btBlockCustomLink', 'btBlockCustomLinkItemEntries'];
    protected $btTable = 'btBlockCustomLink';
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
        return t("Custom Link");
    }

    public function getSearchableContent()
    {
        $content = [];
        $content[] = $this->title;
        $content[] = $this->content;
        return implode(" ", $content);
    }

    public function view()
    {
        $db = Database::connection();
        $this->set('content', LinkAbstractor::translateFrom($this->content));
        $link_URL = null;
		$link_Object = null;
		$link_Title = trim($this->link_Title);
		if (trim($this->link) != '') {
			switch ($this->link) {
				case 'page':
					if ($this->link_Page > 0 && ($link_Page_c = Page::getByID($this->link_Page)) && !$link_Page_c->error && !$link_Page_c->isInTrash()) {
						$link_Object = $link_Page_c;
						$link_URL = $link_Page_c->getCollectionLink();
						if ($link_Title == '') {
							$link_Title = $link_Page_c->getCollectionName();
						}
					}
					break;
				case 'url':
					$link_URL = $this->link_URL;
					if ($link_Title == '') {
						$link_Title = $link_URL;
					}
					break;
				case 'relative_url':
					$link_URL = $this->link_Relative_URL;
					if ($link_Title == '') {
						$link_Title = $this->link_Relative_URL;
					}
					break;
			}
		}
		$this->set("link_URL", $link_URL);
		$this->set("link_Object", $link_Object);
		$this->set("link_Title", $link_Title);
        $item = [];
        $item_items = $db->fetchAll('SELECT * FROM btBlockCustomLinkItemEntries WHERE bID = ? ORDER BY sortOrder', [$this->bID]);
        foreach ($item_items as $item_item_k => &$item_item_v) {
            $item_item_v["link_Object"] = null;
			$item_item_v["link_Title"] = trim($item_item_v["link_Title"]);
			if (isset($item_item_v["link"]) && trim($item_item_v["link"]) != '') {
				switch ($item_item_v["link"]) {
					case 'page':
						if ($item_item_v["link_Page"] > 0 && ($item_item_v["link_Page_c"] = Page::getByID($item_item_v["link_Page"])) && !$item_item_v["link_Page_c"]->error && !$item_item_v["link_Page_c"]->isInTrash()) {
							$item_item_v["link_Object"] = $item_item_v["link_Page_c"];
							$item_item_v["link_URL"] = $item_item_v["link_Page_c"]->getCollectionLink();
							if ($item_item_v["link_Title"] == '') {
								$item_item_v["link_Title"] = $item_item_v["link_Page_c"]->getCollectionName();
							}
						}
						break;
				    case 'url':
						if ($item_item_v["link_Title"] == '') {
							$item_item_v["link_Title"] = $item_item_v["link_URL"];
						}
						break;
				    case 'relative_url':
						if ($item_item_v["link_Title"] == '') {
							$item_item_v["link_Title"] = $item_item_v["link_Relative_URL"];
						}
						$item_item_v["link_URL"] = $item_item_v["link_Relative_URL"];
						break;
				}
			}
        }
        $this->set('item_items', $item_items);
        $this->set('item', $item);
    }

    public function delete()
    {
        $db = Database::connection();
        $db->delete('btBlockCustomLinkItemEntries', ['bID' => $this->bID]);
        parent::delete();
    }

    public function duplicate($newBID)
    {
        $db = Database::connection();
        $item_items = $db->fetchAll('SELECT * FROM btBlockCustomLinkItemEntries WHERE bID = ? ORDER BY sortOrder', [$this->bID]);
        foreach ($item_items as $item_item) {
            unset($item_item['id']);
            $item_item['bID'] = $newBID;
            $db->insert('btBlockCustomLinkItemEntries', $item_item);
        }
        parent::duplicate($newBID);
    }

    public function add()
    {
        $this->addEdit();
        $item = $this->get('item');
        $this->set('item_items', []);
        $this->set('item', $item);
    }

    public function edit()
    {
        $db = Database::connection();
        $this->addEdit();
        
        $this->set('content', LinkAbstractor::translateFromEditMode($this->content));
        $item = $this->get('item');
        $item_items = $db->fetchAll('SELECT * FROM btBlockCustomLinkItemEntries WHERE bID = ? ORDER BY sortOrder', [$this->bID]);
        $this->set('item', $item);
        $this->set('item_items', $item_items);
    }

    protected function addEdit()
    {
        $this->set("link_Options", $this->getSmartLinkTypeOptions([
  'page',
  'url',
  'relative_url',
], true));
        $item = [];
        $this->set("link_Options", $this->getSmartLinkTypeOptions([
  'page',
  'url',
  'relative_url',
], true));
        $this->set('item', $item);
        $this->set('identifier', new \Concrete\Core\Utility\Service\Identifier());
        $al = AssetList::getInstance();
        $al->register('css', 'repeatable-ft.form', 'blocks/block_custom_link/css_form/repeatable-ft.form.css', [], $this->pkg);
        $al->register('javascript', 'handlebars', 'blocks/block_custom_link/js_form/handlebars-v4.0.4.js', [], $this->pkg);
        $al->register('javascript', 'handlebars-helpers', 'blocks/block_custom_link/js_form/handlebars-helpers.js', [], $this->pkg);
        $this->requireAsset('redactor');
        $this->requireAsset('core/file-manager');
        $this->requireAsset('core/sitemap');
        $this->requireAsset('css', 'repeatable-ft.form');
        $this->requireAsset('javascript', 'handlebars');
        $this->requireAsset('javascript', 'handlebars-helpers');
        $this->set('btFieldsRequired', $this->btFieldsRequired);
        $this->set('identifier_getString', Core::make('helper/validation/identifier')->getString(18));
    }

    public function save($args)
    {
        $db = Database::connection();
        $args['content'] = LinkAbstractor::translateTo($args['content']);
        if (isset($args["link"]) && trim($args["link"]) != '') {
			switch ($args["link"]) {
				case 'page':
					$args["link_File"] = '0';
					$args["link_URL"] = '';
					$args["link_Relative_URL"] = '';
					$args["link_Image"] = '0';
					break;
				case 'url':
					$args["link_Page"] = '0';
					$args["link_Relative_URL"] = '';
					$args["link_File"] = '0';
					$args["link_Image"] = '0';
					break;
				case 'relative_url':
					$args["link_Page"] = '0';
					$args["link_URL"] = '';
					$args["link_File"] = '0';
					$args["link_Image"] = '0';
					break;
				default:
					$args["link_Title"] = '';
					$args["link_Page"] = '0';
					$args["link_File"] = '0';
					$args["link_URL"] = '';
					$args["link_Relative_URL"] = '';
					$args["link_Image"] = '0';
					break;	
			}
		}
		else {
			$args["link_Title"] = '';
			$args["link_Page"] = '0';
			$args["link_File"] = '0';
			$args["link_URL"] = '';
			$args["link_Relative_URL"] = '';
			$args["link_Image"] = '0';
		}
        $rows = $db->fetchAll('SELECT * FROM btBlockCustomLinkItemEntries WHERE bID = ? ORDER BY sortOrder', [$this->bID]);
        $item_items = isset($args['item']) && is_array($args['item']) ? $args['item'] : [];
        $queries = [];
        if (!empty($item_items)) {
            $i = 0;
            foreach ($item_items as $item_item) {
                $data = [
                    'sortOrder' => $i + 1,
                ];
                if (isset($item_item['link']) && trim($item_item['link']) != '') {
					$data['link_Title'] = $item_item['link_Title'];
					$data['link'] = $item_item['link'];
					switch ($item_item['link']) {
						case 'page':
							$data['link_Page'] = $item_item['link_Page'];
							$data['link_URL'] = '';
							$data['link_Relative_URL'] = '';
							break;
                        case 'url':
							$data['link_URL'] = $item_item['link_URL'];
							$data['link_Page'] = '0';
							$data['link_Relative_URL'] = '';
							break;
                        case 'relative_url':
							$data['link_Relative_URL'] = $item_item['link_Relative_URL'];
							$data['link_Page'] = '0';
							$data['link_URL'] = '';
							break;
                        default:
							$data['link'] = '';
							$data['link_Page'] = '0';
							$data['link_URL'] = '';
							$data['link_Relative_URL'] = '';
							break;	
					}
				}
				else {
					$data['link'] = '';
					$data['link_Title'] = '';
					$data['link_Page'] = '0';
					$data['link_URL'] = '';
					$data['link_Relative_URL'] = '';
				}
                if (isset($rows[$i])) {
                    $queries['update'][$rows[$i]['id']] = $data;
                    unset($rows[$i]);
                } else {
                    $data['bID'] = $this->bID;
                    $queries['insert'][] = $data;
                }
                $i++;
            }
        }
        if (!empty($rows)) {
            foreach ($rows as $row) {
                $queries['delete'][] = $row['id'];
            }
        }
        if (!empty($queries)) {
            foreach ($queries as $type => $values) {
                if (!empty($values)) {
                    switch ($type) {
                        case 'update':
                            foreach ($values as $id => $data) {
                                $db->update('btBlockCustomLinkItemEntries', $data, ['id' => $id]);
                            }
                            break;
                        case 'insert':
                            foreach ($values as $data) {
                                $db->insert('btBlockCustomLinkItemEntries', $data);
                            }
                            break;
                        case 'delete':
                            foreach ($values as $value) {
                                $db->delete('btBlockCustomLinkItemEntries', ['id' => $value]);
                            }
                            break;
                    }
                }
            }
        }
        parent::save($args);
    }

    public function validate($args)
    {
        $e = Core::make("helper/validation/error");
        if (in_array("title", $this->btFieldsRequired) && (trim($args["title"]) == "")) {
            $e->add(t("The %s field is required.", t("Title")));
        }
        if (in_array("content", $this->btFieldsRequired) && (trim($args["content"]) == "")) {
            $e->add(t("The %s field is required.", t("Content")));
        }
        if ((in_array("link", $this->btFieldsRequired) && (!isset($args["link"]) || trim($args["link"]) == "")) || (isset($args["link"]) && trim($args["link"]) != "" && !array_key_exists($args["link"], $this->getSmartLinkTypeOptions(['page', 'url', 'relative_url'])))) {
			$e->add(t("The %s field has an invalid value.", t("Link")));
		} elseif (array_key_exists($args["link"], $this->getSmartLinkTypeOptions(['page', 'url', 'relative_url']))) {
			switch ($args["link"]) {
				case 'page':
					if (!isset($args["link_Page"]) || trim($args["link_Page"]) == "" || $args["link_Page"] == "0" || (($page = Page::getByID($args["link_Page"])) && $page->error !== false)) {
						$e->add(t("The %s field for '%s' is required.", t("Page"), t("Link")));
					}
					break;
				case 'url':
					if (!isset($args["link_URL"]) || trim($args["link_URL"]) == "" || !filter_var($args["link_URL"], FILTER_VALIDATE_URL)) {
						$e->add(t("The %s field for '%s' does not have a valid URL.", t("URL"), t("Link")));
					}
					break;
				case 'relative_url':
					if (!isset($args["link_Relative_URL"]) || trim($args["link_Relative_URL"]) == "") {
						$e->add(t("The %s field for '%s' is required.", t("Relative URL"), t("Link")));
					}
					break;	
			}
		}
        $itemEntriesMin = 0;
        $itemEntriesMax = 0;
        $itemEntriesErrors = 0;
        $item = [];
        if (isset($args['item']) && is_array($args['item']) && !empty($args['item'])) {
            if ($itemEntriesMin >= 1 && count($args['item']) < $itemEntriesMin) {
                $e->add(t("The %s field requires at least %s entries, %s entered.", t("Item"), $itemEntriesMin, count($args['item'])));
                $itemEntriesErrors++;
            }
            if ($itemEntriesMax >= 1 && count($args['item']) > $itemEntriesMax) {
                $e->add(t("The %s field is set to a maximum of %s entries, %s entered.", t("Item"), $itemEntriesMax, count($args['item'])));
                $itemEntriesErrors++;
            }
            if ($itemEntriesErrors == 0) {
                foreach ($args['item'] as $item_k => $item_v) {
                    if (is_array($item_v)) {
                        if ((in_array("link", $this->btFieldsRequired['item']) && (!isset($item_v['link']) || trim($item_v['link']) == "")) || (isset($item_v['link']) && trim($item_v['link']) != "" && !array_key_exists($item_v['link'], $this->getSmartLinkTypeOptions(['page', 'url', 'relative_url'])))) {
							$e->add(t("The %s field has an invalid value.", t("Link")));
						} elseif (array_key_exists($item_v['link'], $this->getSmartLinkTypeOptions(['page', 'url', 'relative_url']))) {
							switch ($item_v['link']) {
								case 'page':
									if (!isset($item_v['link_Page']) || trim($item_v['link_Page']) == "" || $item_v['link_Page'] == "0" || (($page = Page::getByID($item_v['link_Page'])) && $page->error !== false)) {
										$e->add(t("The %s field for '%s' is required (%s, row #%s).", t("Page"), t("Link"), t("Item"), $item_k));
									}
									break;
				                case 'url':
									if (!isset($item_v['link_URL']) || trim($item_v['link_URL']) == "" || !filter_var($item_v['link_URL'], FILTER_VALIDATE_URL)) {
										$e->add(t("The %s field for '%s' does not have a valid URL (%s, row #%s).", t("URL"), t("Link"), t("Item"), $item_k));
									}
									break;
				                case 'relative_url':
									if (!isset($item_v['link_Relative_URL']) || trim($item_v['link_Relative_URL']) == "") {
										$e->add(t("The %s field for '%s' is required (%s, row #%s).", t("Relative URL"), t("Link"), t("Item"), $item_k));
									}
									break;	
							}
						}
                    } else {
                        $e->add(t("The values for the %s field, row #%s, are incomplete.", t('Item'), $item_k));
                    }
                }
            }
        } else {
            if ($itemEntriesMin >= 1) {
                $e->add(t("The %s field requires at least %s entries, none entered.", t("Item"), $itemEntriesMin));
            }
        }
        return $e;
    }

    public function composer()
    {
        $al = AssetList::getInstance();
        $al->register('javascript', 'auto-js-' . $this->btHandle, 'blocks/' . $this->btHandle . '/auto.js', [], $this->pkg);
        $this->requireAsset('javascript', 'auto-js-' . $this->btHandle);
        $this->edit();
    }

    protected function getSmartLinkTypeOptions($include = [], $checkNone = false)
	{
		$options = [
			''             => sprintf("-- %s--", t("None")),
			'page'         => t("Page"),
			'url'          => t("External URL"),
			'relative_url' => t("Relative URL"),
			'file'         => t("File"),
			'image'        => t("Image")
		];
		if ($checkNone) {
            $include = array_merge([''], $include);
        }
		$return = [];
		foreach($include as $v){
		    if(isset($options[$v])){
		        $return[$v] = $options[$v];
		    }
		}
		return $return;
	}
}