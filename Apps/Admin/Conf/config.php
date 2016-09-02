<?php
return array(
	//'配置项'=>'配置值'
	'DEFAULT_CONTROLLER' => 'Public',

	'USER_AUTH_ON' => true,
	'USER_AUTH_TYPE' => 2,          // 默认认证类型 1 登录认证 2 实时认证
	'USER_AUTH_KEY' => 'authId',     // 用户认证SESSION标记
	'ADMIN_AUTH_KEY' => 'administrator',    // 超级管理员标志
	'USER_AUTH_MODEL' => 'User',       // 默认验证数据表模型
	'AUTH_PWD_ENCODER' => 'md5',        // 用户认证密码加密方式
	'USER_AUTH_GATEWAY' => '/Public/login',  // 默认认证网关

	/*'TMPL_CACHE_ON'         =>  false,
	'LAYOUT_ON'             =>  true, // 是否启用布局
    'LAYOUT_NAME'           =>  'admin',*/
);