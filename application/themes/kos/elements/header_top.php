<?php 
defined('C5_EXECUTE') or die("Access Denied."); 
$this->inc('elements/function.php');
?>
<!DOCTYPE html>
<html lang="<?php echo Localization::activeLanguage()?>">
<head> 
    <script>
        if (navigator.appName.indexOf("Internet Explorer") != -1 ||
            navigator.userAgent.match(/Trident.*rv[ :]*11\./) &&
            PAGETEMPLATE != 'detect_ie') {
            //This user uses Internet Explorer
            var base_url = "<?php echo BASE_URL; ?>";
            window.location = base_url + "/detectie";
        }
    </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta property="og:type" content="website" />
    <meta property="og:title" content="<?php echo METATITLE; ?>" />
    <meta property="og:description" content="<?php echo METADESC; ?>" />
    <meta property="og:site_name" content="<?php echo SITE; ?>" />
    <meta property="og:url" content="<?php echo PAGEPATH; ?>" />
    <meta property="og:image" content="<?php echo PAGETHUMB; ?>" />
    <meta property="og:image:alt" content="<?php echo METATITLE; ?>" />


    <link rel="stylesheet" type="text/css" href="<?php echo THEMEDIR; ?>/libs/bootstrap-5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo THEMEDIR; ?>/css/global.css?v=<?= time();?>">


    <?php $pagetypecss = $_SERVER['DOCUMENT_ROOT'].$view->getThemePath().'/css/pages/'.PAGETEMPLATE.'.css';?>
    <?php if (file_exists($pagetypecss)) : ?>
    <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath()?>/css/pages/<?php echo PAGETEMPLATE;?>.css?v=<?= time();?>">
    <?php endif; ?>

    <?php Loader::element('header_required', array('pageTitle' => isset($pageTitle) ? $pageTitle : '', 'pageDescription' => isset($pageDescription) ? $pageDescription : '', 'pageMetaKeywords' => isset($pageMetaKeywords) ? $pageMetaKeywords : ''));?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
            var msViewportStyle = document.createElement('style')
            msViewportStyle.appendChild(
                document.createTextNode(
                    '@-ms-viewport{width:auto!important}'
                )
            )
            document.querySelector('head').appendChild(msViewportStyle)
        }
    </script>
</head>
<body  class="<?php echo BODYCLASS; ?>">

<div class="<?php echo $c->getPageWrapperClass()?>">
