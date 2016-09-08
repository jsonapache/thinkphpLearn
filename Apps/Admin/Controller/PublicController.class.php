<?php
namespace Admin\Controller;

use Think\Controller;

/**
 * 后台公共控制器
 */
class PublicController extends Controller
{
    public function index() {
        header("Location:/Public/login");
    }

    /**
     * 后台用户登陆
     *
     */
    public function login() {
        layout(false);
        if (IS_POST) {
            $_POST['username'] = I('post.username');
            $Admin = D('admin');
            if (!$Admin->create()) {
                $this->error($Admin->getError());
            } else {
                $admin_logic = D('admin', 'Logic');
                $uid = $admin_logic->login($_POST['username'], $_POST['password']);
                if ($uid <= 0) {
                    switch ($uid) {
                        case -1: $error = '用户名不存在或被禁用'; break;
                        case -2: $error = '用户名或密码错误'; break;
                        default: $error = '未知错误'; break;
                    }
                    $this->error($error);
                } else {
                    $this->redirect('index/index');
                }
            }
        } else {
            if (is_login()) {
                $this->redirect('index/index');
            } else {
                $this->display();
            }
        }
    }

    /**
     * 登陆退出
     *
     */
    public function logout() {
        if (is_login()) {
            session('[destroy]');
            $this->success('退出成功', U('public/index'));
        }else{
            $this->redirect('public/index');
        }

    }
}