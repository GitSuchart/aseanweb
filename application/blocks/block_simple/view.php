<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<div class="block-simple">
	<?php if ($image) { ?><div class="image"><img src="<?php echo $image->getURL(); ?>" alt="<?php echo $image->getTitle(); ?>"/></div><?php } ?>
	<?php if (isset($title) && trim($title) != "") { ?><div class="title"><h3><?php echo h($title); ?></h3></div><?php } ?>
	<?php if (isset($content) && trim($content) != "") { ?><div class="content"><?php echo $content; ?></div><?php } ?>
	<?php if (trim($link_URL) != "") { ?><div class="link"><a href="<?php echo $link_URL;?>"><?php echo $link_Title;?></a></div><?php } ?>
</div>