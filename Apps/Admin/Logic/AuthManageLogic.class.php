<?php
namespace Admin\Logic;

class AuthManageLogic
{
    public function getGroupTree($data, $pid = 0, $level = 0) {
        $group_tree = array();

        if (is_array($data)) {

            foreach ($data as $key => $value) {
                $value['level'] = $level;
                $group_tree[count($group_tree)] = $value;
                unset($data[$key]);
                $sub_tree = $this->getGroupTree($data, $value['id'], $level+1);
                if(is_array($sub_tree)) $group_tree = array_merge($group_tree, $sub_tree);
            }

        }

        return $group_tree;
    }
}