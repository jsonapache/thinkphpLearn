<?php
namespace Admin\Logic;

class AuthManageLogic
{
    protected $admin_model;

    protected $auth_group_model;

    protected $auth_group_access_model;

    protected $auth_rule_model;

    protected function __construct() {
        $this->admin_model = M('admin');
        $this->auth_group_model = M('auth_group');
        $this->auth_group_access_model = M('auth_group_access');
        $this->auth_rule_model = M('auth_rule');
    }

    public function lists() {

    }
}