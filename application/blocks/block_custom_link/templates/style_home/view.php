<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<div class="block-link">
	<?php if (isset($title) && trim($title) != "") { ?><div class="title"><h2><?php echo h($title); ?></h2></div><?php } ?>
	<?php if (isset($content) && trim($content) != "") { ?><div class="content"><?php echo $content; ?></div><?php } ?>
	<?php if (!empty($item_items)) { ?>
	<div class="link">
		<ul>
	<?php foreach ($item_items as $item_item_key => $item_item) { ?>
		<li><a href="<?php echo $item_item["link_URL"]; ?>" class="btn btn-outline"><?php echo $item_item["link_Title"]; ?><span class="icon-full-arrow-right"></span></a></li>
	<?php } ?>
		</ul>
	</div>
	<?php } ?>
	<?php if (trim($link_URL) != "") { ?>
	<div class="action">
		<a href="<?php echo $link_URL; ?>" class="btn btn-white"><?php echo $link_Title; ?><span class="icon-plus"></span></a>
	</div>
	<?php } ?>
</div>