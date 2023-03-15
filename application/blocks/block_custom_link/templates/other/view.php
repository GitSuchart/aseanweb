<?php defined("C5_EXECUTE") or die("Access Denied."); ?>
<?php if (trim($link_URL) != "") { ?>
<ul>
	<li>
		<a href="<?php echo $link_URL;?>" class="btn btn-square other">
			<svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg" class="link-external">
				<path d="M3 3H9V9H8V4.70711L4 8.70711L3.29289 8.00001L7.2929 4H3V3Z"/>
				<rect x="0.5" y="0.5" width="11" height="11"/>
			</svg>
			<span class="text"><?php echo $link_Title;?></span>
		</a>
	</li>
</ul>
<?php } ?>