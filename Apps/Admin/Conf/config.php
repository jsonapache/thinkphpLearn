<?php
define('UC_SALT_KEY', '#8A%FApq3nOuiyhN7YluT6k6RtNk$Vsv');
return array(
	/* SESSION设置 */
	'SESSION_PREFIX' => 'admin',

	/* 模板设置 */
	'TMPL_PARSE_STRING' => array(
        '__PUBLIC__' => '/assets/Common',
        '__PLUGINS__' => '/assets/plugins',
		'__ADMIN__' => '/assets/Admin',
        '__ASSETS__' => '/assets',
	),

    /* 表单令牌设置 */
    'TOKEN_ON'      =>    true,  // 是否开启令牌验证 默认关闭
    'TOKEN_NAME'    =>    'token',    // 令牌验证的表单隐藏字段名称，默认为__hash__
    'TOKEN_TYPE'    =>    'md5',  //令牌哈希验证规则 默认为MD5
    'TOKEN_RESET'   =>    true,  //令牌验证出错后是否重置令牌 默认为true

    /* 布局模板设置 */
    'LAYOUT_ON' => true,
    'LAYOUT_NAME' => 'Layout/admin',
);