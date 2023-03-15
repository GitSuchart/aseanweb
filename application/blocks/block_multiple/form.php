<?php defined("C5_EXECUTE") or die("Access Denied."); ?>

<?php $tabs = [
    ['form-basics-' . $identifier_getString, t('Basics'), true],
    ['form-item_items-' . $identifier_getString, t('Item')]
];
echo Core::make('helper/concrete/ui')->tabs($tabs); ?>

<div class="tab-content">

<div role="tabpanel" class="tab-pane show active" id="form-basics-<?php echo $identifier_getString; ?>">
    <div class="form-group">
    <?php echo $form->label($view->field('title'), t("Title")); ?>
    <?php echo isset($btFieldsRequired) && in_array('title', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo $form->text($view->field('title'), isset($title) ? $title : null, array (
  'maxlength' => 255,
)); ?>
</div><div class="form-group">
    <?php echo $form->label($view->field('content'), t("Content")); ?>
    <?php echo isset($btFieldsRequired) && in_array('content', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo Core::make('editor')->outputBlockEditModeEditor($view->field('content'), isset($content) ? $content : null); ?>
</div><?php $link_ContainerID = 'btBlockMultiple-link-container-' . $identifier_getString; ?>
<div class="ft-smart-link" id="<?php echo $link_ContainerID; ?>">
	<div class="form-group">
		<?php echo $form->label($view->field('link'), t("Link")); ?>
	    <?php echo isset($btFieldsRequired) && in_array('link', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
	    <?php echo $form->select($view->field('link'), $link_Options, $link, array (
  'class' => 'form-control ft-smart-link-type',
)); ?>
	</div>
	
	<div class="form-group">
		<div class="ft-smart-link-options hidden d-none" style="padding-left: 10px;">
			<div class="form-group">
				<?php echo $form->label($view->field('link_Title'), t("Title")); ?>
			    <?php echo $form->text($view->field('link_Title'), isset($link_Title) ? $link_Title : null, []); ?>		
			</div>
			
			<div class="form-group hidden d-none" data-link-type="page">
			<?php echo $form->label($view->field('link_Page'), t("Page")); ?>
            <small class="required"><?php echo t('Required'); ?></small>
            <?php echo Core::make("helper/form/page_selector")->selectPage($view->field('link_Page'), $link_Page); ?>
		</div>

		<div class="form-group hidden d-none" data-link-type="url">
			<?php echo $form->label($view->field('link_URL'), t("URL")); ?>
            <small class="required"><?php echo t('Required'); ?></small>
            <?php echo $form->text($view->field('link_URL'), isset($link_URL) ? $link_URL : null, []); ?>
		</div>

		<div class="form-group hidden d-none" data-link-type="relative_url">
			<?php echo $form->label($view->field('link_Relative_URL'), t("URL")); ?>
            <small class="required"><?php echo t('Required'); ?></small>
            <?php echo $form->text($view->field('link_Relative_URL'), isset($link_Relative_URL) ? $link_Relative_URL : null, []); ?>
		</div>
		</div>
	</div>
</div>


<script type="text/javascript">
	Concrete.event.publish('btBlockMultiple.link.open', {id: '<?php echo $link_ContainerID; ?>'});
	$('#<?php echo $link_ContainerID; ?> .ft-smart-link-type').trigger('change');
</script>
</div>

<div role="tabpanel" class="tab-pane" id="form-item_items-<?php echo $identifier_getString; ?>">
    <script type="text/javascript">
    var CCM_EDITOR_SECURITY_TOKEN = "<?php echo Core::make('helper/validation/token')->generate('editor')?>";
</script>
            <?php
	$core_editor = Core::make('editor');
	if (method_exists($core_editor, 'outputStandardEditorInitJSFunction')) {
		/* @var $core_editor \Concrete\Core\Editor\CkeditorEditor */
		?>
		<script type="text/javascript">var blockDesignerEditor = <?php echo $core_editor->outputStandardEditorInitJSFunction(); ?>;</script>
	<?php
	} else {
	/* @var $core_editor \Concrete\Core\Editor\RedactorEditor */
	if(method_exists($core_editor, 'requireEditorAssets')){
		$core_editor->requireEditorAssets();
	} ?>
		<script type="text/javascript">
			var blockDesignerEditor = function (identifier) {$(identifier).redactor(<?php echo json_encode(array('plugins' => ['concrete5magic'] + $core_editor->getPluginManager()->getSelectedPlugins(), 'minHeight' => 300,'concrete5' => array('filemanager' => $core_editor->allowFileManager(), 'sitemap' => $core_editor->allowSitemap()))); ?>).on('remove', function () {$(this).redactor('core.destroy');});};
		</script>
		<?php
	} ?><?php $repeatable_container_id = 'btBlockMultiple-item-container-' . $identifier_getString; ?>
    <div id="<?php echo $repeatable_container_id; ?>">
        <div class="sortable-items-wrapper">
            <a href="#" class="btn btn-primary add-entry">
                <?php echo t('Add Entry'); ?>
            </a>

            <div class="sortable-items" data-attr-content="<?php echo htmlspecialchars(
                json_encode(
                    [
                        'items' => $item_items,
                        'order' => array_keys($item_items),
                    ]
                )
            ); ?>">
            </div>

            <a href="#" class="btn btn-primary add-entry add-entry-last">
                <?php echo t('Add Entry'); ?>
            </a>
        </div>

        <script class="repeatableTemplate" type="text/x-handlebars-template">
            <div class="sortable-item" data-id="{{id}}">
                <div class="sortable-item-title">
                    <span class="sortable-item-title-default">
                        <?php echo t('Item') . ' ' . t("row") . ' <span>#{{id}}</span>'; ?>
                    </span>
                    <span class="sortable-item-title-generated"></span>
                </div>

                <div class="sortable-item-inner">            <div class="form-group">
    <label for="<?php echo $view->field('item'); ?>[{{id}}][image]" class="control-label"><?php echo t("Image"); ?></label>
    <?php echo isset($btFieldsRequired['item']) && in_array('image', $btFieldsRequired['item']) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <div id="item-image-image-{{id}}" class="ccm-file-selector ft-image-item-image-file-selector">
<concrete-file-input file-id="{{ image }}"
                                                     choose-text="<?php echo t('Choose Image'); ?>"
                                                     input-name="<?php echo $view->field('item'); ?>[{{id}}][image]">
                                </concrete-file-input>
</div>
</div>            <div class="form-group">
    <label for="<?php echo $view->field('item'); ?>[{{id}}][title]" class="control-label"><?php echo t("Title"); ?></label>
    <?php echo isset($btFieldsRequired['item']) && in_array('title', $btFieldsRequired['item']) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <input name="<?php echo $view->field('item'); ?>[{{id}}][title]" id="<?php echo $view->field('item'); ?>[{{id}}][title]" class="form-control" type="text" value="{{ title }}" maxlength="255" />
</div>            <div class="form-group">
    <label for="<?php echo $view->field('item'); ?>[{{id}}][content]" class="control-label"><?php echo t("Content"); ?></label>
    <?php echo isset($btFieldsRequired['item']) && in_array('content', $btFieldsRequired['item']) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <textarea name="<?php echo $view->field('item'); ?>[{{id}}][content]" id="<?php echo $view->field('item'); ?>[{{id}}][content]" class="ft-item-content">{{ content }}</textarea>
</div>            <?php $link_ContainerID = 'btBlockMultiple-link-container-' . $identifier_getString; ?>
<div class="ft-smart-link" id="<?php echo $link_ContainerID; ?>">
	<div class="form-group">
		<label for="<?php echo $view->field('item'); ?>[{{id}}][link]" class="control-label"><?php echo t("Link"); ?></label>
	    <?php echo isset($btFieldsRequired['item']) && in_array('link', $btFieldsRequired['item']) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
	    <?php $itemLink_options = $link_Options; ?>
                    <select name="<?php echo $view->field('item'); ?>[{{id}}][link]" id="<?php echo $view->field('item'); ?>[{{id}}][link]" class="form-control ft-smart-link-type">{{#select link}}<?php foreach ($itemLink_options as $k => $v) {
                        echo "<option value='" . $k . "'>" . $v . "</option>";
                     } ?>{{/select}}</select>
	</div>
	
	<div class="form-group">
		<div class="ft-smart-link-options hidden d-none" style="padding-left: 10px;">
			<div class="form-group">
				<label for="<?php echo $view->field('item'); ?>[{{id}}][link_Title]" class="control-label"><?php echo t("Title"); ?></label>
			    <input name="<?php echo $view->field('item'); ?>[{{id}}][link_Title]" id="<?php echo $view->field('item'); ?>[{{id}}][link_Title]" class="form-control" type="text" value="{{ link_Title }}" />		
			</div>
			
			<div class="form-group hidden d-none" data-link-type="page">
			<label for="<?php echo $view->field('item'); ?>[{{id}}][link_Page]" class="control-label"><?php echo t("Page"); ?></label>
            <small class="required"><?php echo t('Required'); ?></small>
            <div id="item-link_Page-page-{{id}}" class="ft-smart-link-item-link-page-selector">
   <concrete-page-input page-id="{{ link_Page }}" 
                                                        input-name="<?php echo $view->field('item'); ?>[{{id}}][link_Page]" 
                                                        choose-text="<?php echo t('Choose Page') ?>" 
                                                        include-system-pages="false" 
                                                        ask-include-system-pages="false">
                                </concrete-page-input>
</div>
		</div>

		<div class="form-group hidden d-none" data-link-type="url">
			<label for="<?php echo $view->field('item'); ?>[{{id}}][link_URL]" class="control-label"><?php echo t("URL"); ?></label>
            <small class="required"><?php echo t('Required'); ?></small>
            <input name="<?php echo $view->field('item'); ?>[{{id}}][link_URL]" id="<?php echo $view->field('item'); ?>[{{id}}][link_URL]" class="form-control" type="text" value="{{ link_URL }}" />
		</div>

		<div class="form-group hidden d-none" data-link-type="relative_url">
			<label for="<?php echo $view->field('item'); ?>[{{id}}][link_Relative_URL]" class="control-label"><?php echo t("URL"); ?></label>
            <small class="required"><?php echo t('Required'); ?></small>
            <input name="<?php echo $view->field('item'); ?>[{{id}}][link_Relative_URL]" id="<?php echo $view->field('item'); ?>[{{id}}][link_Relative_URL]" class="form-control" type="text" value="{{ link_Relative_URL }}" />
		</div>
		</div>
	</div>
</div>
</div>

                <span class="sortable-item-collapse-toggle"></span>

                <a href="#" class="sortable-item-delete" data-attr-confirm-text="<?php echo t('Are you sure'); ?>">
                    <i class="fa fa-times"></i>
                </a>

                <div class="sortable-item-handle">
                    <i class="fa fa-sort"></i>
                </div>
            </div>
        </script>
    </div>

<script type="text/javascript">
    Concrete.event.publish('btBlockMultiple.item.edit.open', {id: '<?php echo $repeatable_container_id; ?>'});
    $.each($('#<?php echo $repeatable_container_id; ?> input[type="text"].title-me'), function () {
        $(this).trigger('keyup');
    });
</script>
</div>

</div>