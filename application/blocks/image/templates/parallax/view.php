<?php defined('C5_EXECUTE') or die('Access Denied.');
$app = \Concrete\Core\Support\Facade\Application::getFacadeApplication();

if (is_object($f) && $f->getFileID()) {
    // $f->getRelativePath()
?>
<picture class="background-cover fixed" style="background-image: url(<?php echo $f->getRelativePath();?>);">
    <img src="<?php echo $f->getRelativePath();?>" alt="<?php echo $f->getTitle();?>">
</picture>
<?php
} elseif ($c->isEditMode()) { ?>
    <div class="ccm-edit-mode-disabled-item"><?php echo t('Empty Image Block.'); ?></div>
<?php
}
