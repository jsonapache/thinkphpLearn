<?php
namespace Addons\Test;

use Think\Controller;

class TestAddon extends Controller
{
    public function showflash() {
        $this->display();
    }
}