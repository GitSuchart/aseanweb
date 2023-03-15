<?php defined('C5_EXECUTE') or die("Access Denied."); ?>
</div>

<?php /* ?>
<script src="<?php echo THEMEDIR ?>/libs/scrollreveal.js"></script>
<script src="<?php echo THEMEDIR ?>/libs/fancybox/jquery.fancybox.js"></script>
<script src="<?php echo THEMEDIR ?>/libs/jquery.enllax.js"></script>
<script src="<?php echo THEMEDIR ?>/libs/jquery.lazy.min.js"></script>
<script src="<?php echo THEMEDIR ?>/libs/csselect/classie.js"></script>
<script src="<?php echo THEMEDIR ?>/libs/csselect/selectFx.js"></script>	
<script src="<?php echo THEMEDIR ?>/libs/bxslider/jquery.bxslider.js"></script>
<script src="<?php echo THEMEDIR ?>/js/script.js"></script>
<?php */ ?>

<script src="<?php echo THEMEDIR; ?>/libs/slick-1.8.1/slick/slick.min.js"></script>
<script src="<?php echo THEMEDIR; ?>/libs/jquery.lazy-1.7.11/jquery.lazy.min.js"></script>
<?php if (!CHECKLOGIN) { ?> <script src="<?php echo THEMEDIR; ?>/libs/concrete/js/bootstrap.js"></script><?php } ?>

<script src="<?php echo THEMEDIR; ?>/js/global.js?v=<?= time();?>"></script>

<?php $pagejs = $_SERVER['DOCUMENT_ROOT'] . THEMEDIR .'/js/' . PAGETEMPLATE . '.js'; ?>
<?php if (file_exists($pagejs)) : ?>
<script src="<?php echo THEMEDIR; ?>/js/<?php echo PAGETEMPLATE; ?>.js?v="<?=time()?>></script>
<?php endif; ?>	

<?php Loader::element('footer_required'); ?>

</body>
</html>
