<?php
namespace Admin\Controller;

use Think\Controller;

class PublicController extends Controller
{
    public function index()
    {
        header("Location:/Public/login");
    }

    public function login()
    {
        if (IS_POST) {
            $_POST['username'] = I('post.username');
            $Admin = D('admin');
            if (!$Admin->create()) {
                $this->error($Admin->getError());
            } else{
                var_dump($_POST);die;
            }
        }
    	$this->display();
    }
}