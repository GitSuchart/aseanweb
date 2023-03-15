<?php
defined("C5_EXECUTE") or die("Access Denied.");
$current = Page::getCurrentPage();
?>

<div class="video video-<?php echo $bID;?>">
    <div class="video-container">
        <?php if ($poster) { ?>
            <div class="video-poster" style="background-image: url(<?php echo $poster->getURL(); ?>);">
                <img src="<?php echo $poster->getURL(); ?>" alt="<?php echo $poster->getTitle(); ?>"/>
            </div>
        <?php } ?>
        <div class="video-player">
            <?php
            if (trim($videoType) != "") {
                switch($videoType) {
                    case "1":
                        if (isset($video) && $video !== false) {
                            $_poster = '';
                            $_autoplay = 'autoplay';
                            if ($current->isEditMode()) {
                                $_autoplay = '';
                            }
                            if ($poster) { $_poster = 'poster="' . $poster->getURL() . '"'; }
            ?>
                        <video class="player" playsinline control loop muted <?php echo $_autoplay; ?> <?php echo $_poster; ?>>
                            <source src="<?php echo $video->urls["relative"]; ?>" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
            <?php
                    }
                        break;
                    case "2":
                        if (isset($youtube) && trim($youtube) != "") {
                            $c = Page::getCurrentPage();
                            if ($c->isEditMode()) {
            ?>
                        <div style="width: 100%; height: 450px; display: table;" class="ccm-edit-mode-disabled-item">
                            <span style="display: table-cell; vertical-align: middle;">
                                <?php echo t('YouTube Video disabled in edit mode.'); ?>
                            </span>
                        </div>
            <?php
                            } else {
            ?>
                        <iframe class="player" src="https://www.youtube.com/embed/<?php echo $youtube; ?>?autohide=2" frameborder="0" allowfullscreen></iframe>
            <?php
                            }
                        }
                        break;
                    case "3":
                        if (isset($vimeo) && trim($vimeo) != "") {
                            $c = Page::getCurrentPage();
                            if ($c->isEditMode()) {
            ?>
                        <div style="width: 100%; height: 450px; display: table;" class="ccm-edit-mode-disabled-item">
                            <span style="display: table-cell; vertical-align: middle;">
                                <?php echo t('Vimeo Video disabled in edit mode.'); ?>
                            </span>
                        </div>
            <?php
                            } else {
            ?>
                        <iframe class="player" src="https://player.vimeo.com/video/<?php echo $vimeo; ?>?portrait=0&title=0&byline=0&autoplay=0&loop=0" width="100%" height="450" frameborder webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
            <?php
                            }
                        }
                        break;
                }
            }
            ?>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function ($) {
        var isEdit = $('body').hasClass('mode-edit');
        var ele = $('.video-<?php echo $bID;?>')
        var poster = ele.find('.video-poster');
        var video = ele.find('.player')[0];
        if (video) {
            ele.find('.player').on('playing', function() {
                poster.fadeOut(150);
            });
        }

        $('body').on('click touchstart', function () {
            var ww = $(window).width();
            var ele = $('.video-<?php echo $bID;?> .player')[0];
            if (ww > 1024 && !isEdit && ele && !ele.playing) ele.play();
        });
        
    });
</script>