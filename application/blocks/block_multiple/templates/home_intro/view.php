<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<?php if (!empty($item_items)) { ?>
<div class="block-multiple">
	<div class="multiple">
		<div class="multiple-list">
			<?php foreach ($item_items as $item_item_key => $item_item) { ?>
			<div class="multiple-item">
				<?php if ($item_item["image"]) { ?>
				<div class="image">
					<img src="<?php echo $item_item["image"]->getURL(); ?>" alt="<?php echo $item_item["image"]->getTitle(); ?>"/>
				</div>
				<?php } ?>
				<?php if ((isset($item_item["title"]) && trim($item_item["title"]) != "") || (isset($item_item["content"]) && trim($item_item["content"]) != "")) { ?>
				<div class="content">
					<?php if (isset($item_item["title"]) && trim($item_item["title"]) != "") { ?>
						<h3 class="title"><?php echo h($item_item["title"]); ?></h3>
					<?php } ?>
					<?php if (isset($item_item["content"]) && trim($item_item["content"]) != "") { echo $item_item["content"]; } ?>
				</div>
				<?php } ?>
			</div>
			<?php } ?>
		</div>
	</div>
</div>
<?php } ?>