<?php defined("C5_EXECUTE") or die("Access Denied."); ?>

<div class="form-group">
    <?php
    if (isset($poster) && $poster > 0) {
        $poster_o = File::getByID($poster);
        if (!is_object($poster_o)) {
            unset($poster_o);
        }
    } ?>
    <?php echo $form->label($view->field('poster'), t("Poster")); ?>
    <?php echo isset($btFieldsRequired) && in_array('poster', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo Core::make("helper/concrete/asset_library")->image('ccm-b-block_background_video-poster-' . $identifier_getString, $view->field('poster'), t("Choose Image"), isset($poster_o) ? $poster_o : null); ?>
</div>


<?php /* ?>
<div class="form-group video-type">
    <?php echo $form->label($view->field('videoType'), t("Video Type")); ?>
    <?php echo isset($btFieldsRequired) && in_array('videoType', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo $form->select($view->field('videoType'), $videoType_options, $videoType, []); ?>
</div>
<?php */ ?>

<?php $video_o = null;
if (isset($video) && $video > 0) {
    $video_o = File::getByID($video);
} ?>
<div class="form-group video d-none">
    <?php echo $form->label($view->field('video'), t("Video")); ?>
    <?php echo isset($btFieldsRequired) && in_array('video', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo Core::make("helper/concrete/asset_library")->file('ccm-b-file-video-' . $identifier_getString, $view->field('video'), t("Choose File"), isset($video_o) ? $video_o : null); ?>
</div>

<?php /* ?>
<div class="form-group youtube d-none">
    <?php echo $form->label($view->field('youtube'), t("Youtube")); ?>
    <?php echo isset($btFieldsRequired) && in_array('youtube', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo $form->text($view->field('youtube'), isset($youtube) ? $youtube : null, []); ?>
</div>

<div class="form-group vimeo d-none">
    <?php echo $form->label($view->field('vimeo'), t("Vimeo")); ?>
    <?php echo isset($btFieldsRequired) && in_array('vimeo', $btFieldsRequired) ? '<small class="required">' . t('Required') . '</small>' : null; ?>
    <?php echo $form->text($view->field('vimeo'), isset($vimeo) ? $vimeo : null, array (
  'maxlength' => 255,
)); ?>
</div>
<?php */ ?>
<script>
    $(document).ready(function () {
        var val = $('.video-type select').val();
        if (val === '2') {
            $('.youtube').removeClass('d-none');
        } else if (val === '3') {
            $('.vimeo').removeClass('d-none');
        } else {
            $('.video').removeClass('d-none');
        }

        $('.video-type select').change(function () {
            var _val = $(this).val();
            $('.video, .youtube, .vimeo').addClass('d-none');
            if (_val === '2') {
                $('.youtube').removeClass('d-none');
            } else if (_val === '3') {
                $('.vimeo').removeClass('d-none');
            } else {
                $('.video').removeClass('d-none');
            }
        });
    })
</script>