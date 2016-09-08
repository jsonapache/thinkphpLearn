<?php
namespace Admin\Controller;

class AuthManageController extends AdminController
{
    public function index() {
    	$auth_group = M('auth_group');
    	$data = $auth_group->find();
    	$auth = D('AuthManage', 'Logic');
    	$result = $auth->getGroupTree($data,'1','1');
    	var_dump($result);die;
        $this->display();
    }

    public function add() {
        $this->display();
    }
}