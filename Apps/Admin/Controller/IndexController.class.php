<?php
namespace Admin\Controller;

/**
 * 后台首页控制器
 */
class IndexController extends CommonController
{
    /**
     * 首页
     *
     * @return [type] [description]
     */
    public function index() {
        $this->display();
    }

    /**
     * 公共头部
     *
     */
    public function header() {
        $this->display('Public/header');
    }

    /**
     * 公共菜单栏
     *
     */
    public function slider() {
        $this->display('Public/slider');
    }

    /**
     * 公共头部
     *
     */
    public function footer() {
        $this->display('Public/footer');
    }
}