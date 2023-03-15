<?php
defined('C5_EXECUTE') or die("Access Denied.");
$this->inc('elements/header.php'); ?>

<article>
<?php
	$content = new Area('content');
	$content->display($c);
?>


</article>

<?php  $this->inc('elements/footer.php'); ?>
