<?php defined('C5_EXECUTE') or die("Access Denied."); 
$this->inc('elements/function.php');
?>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"  >
    <head>
        <?php  $site = Config::get('concrete.site');?>
        <title><?php echo SITE; ?>:: Page Not Found</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<?php echo $view->getThemePath()?>/css/page_not_found.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto+Mono" rel="stylesheet">

    </head>
    <body>
        <div class="page-content-wrapper">
            <div>
                <img src = "/application/themes/kos/images/404.png" alt="<?php echo SITE; ?>:: Page Not Found" />
                <div class="block-text">
                    <p>We don't know, <br/>what are you looking for? </p>
                    <div class="block-link"><a href ="/">BACK HOME</a></div>
                </div>
            </div> 
        </div>               
    </body>
</html>

