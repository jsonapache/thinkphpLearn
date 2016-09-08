<?php
return array(
	'SESSION_EXPIRE' => 3600,
	'URL_MODEL' => 2,
	'MODULE_ALLOW_LIST' => array('Admin','Home'),
	'DEFAULT_MODULE'    =>  'Admin',

    /* 布局设置 */
    'TMPL_L_DELIM' => '<{',            // 模板引擎普通标签开始标记
    'TMPL_R_DELIM' => '}>',            // 模板引擎普通标签结束标记

    /* 过滤设置 */
    'DEFAULT_FILTER' => 'strip_tags,htmlspecialchars',

    /* 多语言开关 */
    'LANG_SWITCH_ON' => true,

    'SHOW_PAGE_TRACE' => true,

    /* 扩展配置 */
    'LOAD_EXT_CONFIG' => 'db,webconfig',
);