<?php
namespace Admin\Controller;

use Common\Controller\BaseController;

/**
 * 后台基类控制器
 * @author shentao <13751837857@163.com>
 */
class AdminController extends BaseController
{
    /**
     * 后台控制器初始化
     *
     */
    protected function _initialize() {
        parent::_initialize();
        define('UID', is_login());
        if (!UID) {
            $this->redirect('public/index');
        }
    }
}

