<?php
namespace Concrete\Controller\Backend;

use Concrete\Core\Localization\Localization;
use Concrete\Core\Multilingual\Page\Section\Section;
use Concrete\Core\Page\Page as CorePage;
use Concrete\Core\Tree\Node\Node;
use Symfony\Component\HttpFoundation\JsonResponse;

class Tree extends UserInterface
{
    protected $tree;

    protected function getTree()
    {
        if (!isset($this->tree)) {
            $treeID = $this->app->make('helper/security')->sanitizeInt($this->request->request('treeID'));
            $this->tree = \Concrete\Core\Tree\Tree::getByID($treeID);
        }

        return $this->tree;
    }

    protected function canAccess()
    {
        $tree = $this->getTree();
        $node = $tree->getRootTreeNodeObject();
        $np = new \Permissions($node);

        return $np->canViewTreeNode();
    }

    public function load()
    {
        $tree = $this->getTree();
        if (is_array($this->request->request('treeNodeSelectedIDs'))) {
            $selectedIDs = [];
            foreach ($this->request->request('treeNodeSelectedIDs') as $nID) {
                $node = Node::getByID($nID);
                if ($node !== null && $node->getTreeID() == $tree->getTreeID()) {
                    $selectedIDs[] = $node->getTreeNodeID();
                }
            }
            $tree->setSelectedTreeNodeIDs($selectedIDs);
        }

        if ($this->request->request('cID') > 0) {
            $c = CorePage::getByID($this->request->request('cID'));
            $al = Section::getBySectionOfSite($c);
            if ($al !== null) {
                $locale = $al->getLocale();
                Localization::changeLocale($locale);
            }
        }

        $tree->setRequest($this->request->request());
        $result = $tree->getJSON();

        return new JsonResponse($result);
    }
}
