<?php defined('C5_EXECUTE') or die("Access Denied.");
$pg = Core::make('Application\Controller\PageType\PageGlobal');
$ux = new User();
$page = Page::getCurrentPage();
$pt = $c->getPageTemplateObject();
if (is_object($pt)) {
    $template =  $pt->getPageTemplateHandle();
}
$site = Config::get('concrete.site');
$ih = Loader::helper('image');
$thumb = $page->getAttribute('thumbnail');
$thumb = $thumb!='' ? $ih->getThumbnail($thumb,600,400,'')->src : $this->getThemePath().'/images/thumb.jpg';
$meta_title = $page->getAttribute('meta_title');
$meta_title = $meta_title!='' ? $meta_title : $page->getCollectionName().' - '.$site;

$meta_desc = $page->getAttribute('meta_description');
$meta_desc = $meta_desc!='' ? $meta_desc : $page->getCollectionDescription();

$datePublic = date('M j, Y h : i a', strtotime($c->getCollectionDatePublic()));

$nh = Loader::helper('navigation');

$parent = page::getByID($c->getCollectionParentID());
$parentthumb = $parent->getAttribute('thumbnail');
$parentthumb = $parentthumb!='' ? $ih->getThumbnail($parentthumb,600,400,'')->src : '';
$parenturl = $nh->getLinkToCollection($parent);

$lang = $pg->getLanguages();
$langarea = $lang['area'];
$langpath = $lang['path'];

$_body = '';
$_class = [];

if($c->isEditMode()){
    $_class[] = 'mode-edit';
}
if($ux->checkLogin()){
    $_class[] = 'mode-login';
}

if(count($_class)>0){
    $_body = implode(' ', $_class);
}

define('SITE', $site);
define('THEMEDIR', $this->getThemePath());
define('PAGETYPE', $page->getCollectionTypeHandle());
define('PAGETEMPLATE', $template);
define('CHECKLOGIN', $ux->checkLogin());
define('PAGENAME', $page->getCollectionName());
define('PAGEDESC', $page->getCollectionDescription());
define('PAGETHUMB', $thumb);
define('PAGEID', $page->getCollectionID());
define('PAGEPATH', $nh->getLinkToCollection($page));
define('PARENTID', $page->getCollectionParentID());
define('PARENTNAME', $parent->getCollectionName());
define('PARENTTHUMB', $parentthumb);
define('PARENTPATH', $parenturl);
define('EDITMODE', $c->isEditMode());
define('METATITLE', $meta_title);
define('METADESC', $meta_desc);
define('LANGAREA', $langarea);
define('LANGPATH', $langpath);
define('DATEPUBLIC', $datePublic);
define('BODYCLASS', $_body);
?>