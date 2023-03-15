<?php defined('C5_EXECUTE') or die('Access Denied.');
if (isset($error)) { echo $error . '<br/><br/>'; }
if (!isset($query) || !is_string($query)) { $query = ''; }
?>
<div class="form-search">
    <button type="button" class="btn btn-square search"><span class="icon-search"></span></button>
    <form class="hstack gap-3 ccm-search-block-form form" action="<?= $view->url($resultTarget) ?>" method="get">
        <div class="form-container">
            <div class="form-group d-flex">
    <?php if ($query === '') { ?>
        <input name="search_paths[]" type="hidden" value="<?= htmlentities($baseSearchPath, ENT_COMPAT, APP_CHARSET) ?>" />
<?php
    } else if (isset($_REQUEST['search_paths']) && is_array($_REQUEST['search_paths'])) {
        foreach ($_REQUEST['search_paths'] as $search_path) {
            if (is_string($search_path)) {
?>
        <input name="search_paths[]" type="hidden" value="<?= htmlentities($search_path, ENT_COMPAT, APP_CHARSET) ?>" /><?php

            }
        }
    }
?>
            <input name="query" class="form-control ccm-search-block-text" type="text" value="<?= htmlentities($query, ENT_COMPAT, APP_CHARSET) ?>" placeholder="<?php echo h($title); ?>..." />
            <button type="submit" class="btn btn-submit"><span class="icon-search"></span></button>
            </div>
            <div class="form-action">
                <button type="button" class="btn btn-close"></button>
            </div>
        </div>
    </form>
</div>
<?php if (isset($do_search) && $do_search) { ?>
    <div class="mt-4">
    <?php if (count($results) == 0) { ?>
        <h4><?= t('There were no results found. Please try another keyword or phrase.') ?></h4>
    <?php
        } else {
        $tt = Core::make('helper/text');
    ?>
        <div id="searchResults">
    <?php
        foreach ($results as $r) {
            $currentPageBody = $this->controller->highlightedExtendedMarkup($r->getPageIndexContent(), $query);
    ?>
            <div class="searchResult">
            <h3><a href="<?= $r->getCollectionLink() ?>"><?= $r->getCollectionName() ?></a></h3>
            <p>
            <?php
                if ($r->getCollectionDescription()) {
                    echo $this->controller->highlightedMarkup($tt->shortText($r->getCollectionDescription()), $query);
                    ?><br/>
            <?php
                }
                echo $currentPageBody;
            ?>
                <br/>
                <a href="<?= $r->getCollectionLink() ?>" class="pageLink"><?= $this->controller->highlightedMarkup($r->getCollectionLink(), $query) ?></a>
            </p>
            </div>
            <?php } ?>
        </div>
    <?php
            $pages = $pagination->getCurrentPageResults();
            if ($pagination->haveToPaginate()) {
                $showPagination = true;
                echo $pagination->renderDefaultView();
            }
        }
    ?>
    </div>
<?php } ?>