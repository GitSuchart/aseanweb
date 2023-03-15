<?php
defined('C5_EXECUTE') or die("Access Denied.");

$page = Page::getCurrentPage();
$pageId = $page->getCollectionID();
if(159 == $pageId){
	$this->inc('elements/header_top.php');
	?>
	<link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath()?>/css/login.css" />
<?php }else{
	$this->inc('elements/header.php');
}
?>

<article class="page-default <?php echo $pageId ?>">
    <div class="section">
        <div class="page-wrapper">
            <div class="block-row">
                <?php View::element('system_errors', array('format' => 'block', 'error' => isset($error) ? $error : null, 'success' => isset($success) ? $success : null, 'message' => isset($message) ? $message : null)); ?>

                <?php print $innerContent; ?>
            </div>
        </div>
    </div>
</article>

<?php
if(159==$pageId){
	$this->inc('elements/footer_bottom.php');
}else{
	$this->inc('elements/footer.php');
}
?>
