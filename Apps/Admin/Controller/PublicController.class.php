<?php
namespace Admin\Controller;
use Think\Controller;

class PublicController extends Controller 
{
    public function index()
    {
        header("Location:".__MODULE__."/Public/login");
    }

    public function login()
    {
    	$this->display();
    }

    public function verify()
    {
    	$Verify = new \Think\Verify();
		// 开启验证码背景图片功能 随机使用 ThinkPHP/Library/Think/Verify/bgs 目录下面的图片
		$Verify->useImgBg = true; 
		$Verify->entry();
    }
}