<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<?php if (isset($title) && trim($title) != "") { ?>
    <?php echo h($title); ?><?php } ?>
<?php if (isset($content) && trim($content) != "") { ?>
    <?php echo $content; ?><?php } ?>
<?php
if (trim($link_URL) != "") { ?>
    <?php
	$link_Attributes = [];
	$link_Attributes['href'] = $link_URL;
	$link_AttributesHtml = join(' ', array_map(function ($key) use ($link_Attributes) {
		return $key . '="' . $link_Attributes[$key] . '"';
	}, array_keys($link_Attributes)));
	echo sprintf('<a %s>%s</a>', $link_AttributesHtml, $link_Title); ?><?php
} ?>
<?php if (!empty($item_items)) { ?>
    <?php foreach ($item_items as $item_item_key => $item_item) { ?><?php if ($item_item["image"]) { ?>
    <img src="<?php echo $item_item["image"]->getURL(); ?>" alt="<?php echo $item_item["image"]->getTitle(); ?>"/><?php } ?><?php if (isset($item_item["title"]) && trim($item_item["title"]) != "") { ?>
    <?php echo h($item_item["title"]); ?><?php } ?><?php if (isset($item_item["content"]) && trim($item_item["content"]) != "") { ?>
    <?php echo $item_item["content"]; ?><?php } ?><?php
if (trim($item_item["link_URL"]) != "") { ?>
    <?php
	$item_itemlink_Attributes = [];
	$item_itemlink_Attributes['href'] = $item_item["link_URL"];
	$item_item["link_AttributesHtml"] = join(' ', array_map(function ($key) use ($item_itemlink_Attributes) {
		return $key . '="' . $item_itemlink_Attributes[$key] . '"';
	}, array_keys($item_itemlink_Attributes)));
	echo sprintf('<a %s>%s</a>', $item_item["link_AttributesHtml"], $item_item["link_Title"]); ?><?php
} ?><?php } ?><?php } ?>