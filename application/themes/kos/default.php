<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<article>
<?php
	$content = new Area('content');
	$content->setCustomTemplate("image_slider", "image_background.php");
	$content->display($c);
?>

<?php
	$content = new Area('content grid');
	$content->enableGridContainer();
	$content->display($c);
?>

</article>

<?php  $this->inc('elements/footer.php'); ?>
