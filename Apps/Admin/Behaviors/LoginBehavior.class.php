<?php
namespace Admin\Behaviors;

use Think\Behavior;

class LoginBehavior extends Behavior
{
    function run(&$params) {
        $user = session('user_auth');
        echo $user['username'];
    }
}