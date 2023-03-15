<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<div class="block-simple wave">
	<div class="wave"></div>
	<div class="content">
	<?php if (isset($title) && trim($title) != "") { echo h($title); } ?>
	<?php if (isset($content) && trim($content) != "") { echo $content; } ?>
	</div>
</div>