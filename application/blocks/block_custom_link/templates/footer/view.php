<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<?php if (!empty($item_items)) { ?>
<nav>
	<ul class="nav">
		<?php foreach ($item_items as $item_item_key => $item_item) { ?>
		<li class="nav-item"><a href="<?php echo $item_item["link_URL"];?>" class="nav-link"><?php echo $item_item["link_Title"];?></a></li>
		<?php } ?>
	</ul>
</nav>
<?php } ?>