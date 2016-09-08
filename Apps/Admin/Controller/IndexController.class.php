<?php
namespace Admin\Controller;

/**
 * 后台首页控制器
 */
class IndexController extends AdminController
{
    /**
     * 首页
     *
     */
    public function index() {
        $this->display();
    }
}