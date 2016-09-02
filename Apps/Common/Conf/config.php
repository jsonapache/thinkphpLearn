<?php
return array(
	//'配置项'=>'配置值'
	'SESSION_EXPIRE' => 3600,
	'URL_MODEL' => 2,
	'MODULE_ALLOW_LIST' => array('Admin','Home'),
	'DEFAULT_MODULE'    =>  'Admin',

	//数据库配置
	'DB_TYPE' => 'mysql',     // 数据库类型
    'DB_HOST' => '127.0.0.1', // 服务器地址
    'DB_NAME' => 'test_think',          // 数据库名
    'DB_USER' => 'root',      // 用户名
    'DB_PWD' => 'root',          // 密码
    'DB_PORT' => '3306',        // 端口
    'DB_PREFIX' => '',    // 数据库表前缀
    'DB_DEBUG' => false, // 数据库调试模式 开启后可以记录SQL日志

    //布局设置
    'TMPL_L_DELIM' => '<{',            // 模板引擎普通标签开始标记
    'TMPL_R_DELIM' => '}>',            // 模板引擎普通标签结束标记

    'SHOW_PAGE_TRACE' => TRUE,
);