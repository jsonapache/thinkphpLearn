<?php
namespace Admin\Controller;

use Think\Controller;

/**
 * 后台基类控制器
 * @author shentao <13751837857@163.com>
 */
class CommonController extends Controller
{
    /**
     * 后台控制器初始化
     *
     */
    protected function _initialize() {
        if (defined(UID)) return ;
        define('UID', is_login());
        if (!UID) {
            $this->redirect('public/index');
        }
    }
}

