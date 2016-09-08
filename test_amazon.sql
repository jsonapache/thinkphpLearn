-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-08 10:24:42
-- 服务器版本： 5.5.27
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_amazon`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '????ԱID',
  `username` varchar(30) NOT NULL COMMENT '????Ա?û???',
  `password` varchar(32) NOT NULL COMMENT '????Ա???',
  `admin_is_super` tinyint(1) NOT NULL DEFAULT '0' COMMENT '?Ƿ??????Ա(1Ϊ????????Ա)',
  `gid` smallint(6) unsigned DEFAULT '0' COMMENT 'Ȩ????ID',
  `admin_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '??¼ʱ?',
  `admin_login_num` int(11) NOT NULL DEFAULT '0' COMMENT '??½????',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='??̨????Ա?' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `admin_is_super`, `gid`, `admin_login_time`, `admin_login_num`, `status`) VALUES
(1, 'admin', 'fb13cd9461d1760ffd0b18ee139fcc99', 1, 1, 1473324981, 17, 1);

-- --------------------------------------------------------

--
-- 表的结构 `admin_log`
--

CREATE TABLE IF NOT EXISTS `admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) NOT NULL COMMENT '????Ա???',
  `admin_id` smallint(6) unsigned NOT NULL COMMENT '????ԱID',
  `content` varchar(50) DEFAULT NULL COMMENT '???????',
  `ip` char(15) DEFAULT NULL COMMENT 'IP',
  `createtime` int(11) unsigned DEFAULT NULL COMMENT '????ʱ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????Ա??????־?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `attributes`
--

CREATE TABLE IF NOT EXISTS `attributes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL COMMENT '???????',
  `name` varchar(50) NOT NULL COMMENT '????????',
  `position` smallint(6) DEFAULT '1' COMMENT '????λ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???Ա' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `auth_group`
--

INSERT INTO `auth_group` (`id`, `title`, `status`, `rules`) VALUES
(1, '超级管理员', 1, '6,96,20,1,2,3,4,5,64,21,7,8,9,10,11,12,13,14,15,16,123,124,125,19,104,105,106,107,108,118,109,110,111,112,117'),
(2, '产品管理员', 1, '6,96,1,2,3,4,56,57,60,61,63,71,72,65,67,74,75,66,68,69,70,73,77,78,82,83,88,89,90,99,91,92,97,98,104,105,106,107,108,118,109,110,111,112,117,113,114'),
(4, '文章编辑', 1, '6,96,57,60,61,63,71,72,65,67,74,75,66,68,69,73,79,80,78,82,83,88,89,90,99,100,97,98,104,105,106,107,108,118,109,110,111,112,117,113,114');

-- --------------------------------------------------------

--
-- 表的结构 `auth_group_access`
--

CREATE TABLE IF NOT EXISTS `auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_group_access`
--

INSERT INTO `auth_group_access` (`uid`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- 转存表中的数据 `auth_rule`
--

INSERT INTO `auth_rule` (`id`, `pid`, `name`, `title`, `status`, `type`, `condition`) VALUES
(1, 20, 'Admin/ShowNav/nav', '菜单管理', 1, 1, ''),
(2, 1, 'Admin/Nav/index', '菜单列表', 1, 1, ''),
(3, 1, 'Admin/Nav/add', '添加菜单', 1, 1, ''),
(4, 1, 'Admin/Nav/edit', '修改菜单', 1, 1, ''),
(5, 1, 'Admin/Nav/delete', '删除菜单', 1, 1, ''),
(21, 0, 'Admin/ShowNav/rule', '权限控制', 1, 1, ''),
(7, 21, 'Admin/Rule/index', '权限管理', 1, 1, ''),
(8, 7, 'Admin/Rule/add', '添加权限', 1, 1, ''),
(9, 7, 'Admin/Rule/edit', '修改权限', 1, 1, ''),
(10, 7, 'Admin/Rule/delete', '删除权限', 1, 1, ''),
(11, 21, 'Admin/Rule/group', '用户组管理', 1, 1, ''),
(12, 11, 'Admin/Rule/add_group', '添加用户组', 1, 1, ''),
(13, 11, 'Admin/Rule/edit_group', '修改用户组', 1, 1, ''),
(14, 11, 'Admin/Rule/delete_group', '删除用户组', 1, 1, ''),
(15, 11, 'Admin/Rule/rule_group', '分配权限', 1, 1, ''),
(16, 11, 'Admin/Rule/check_user', '添加成员', 1, 1, ''),
(19, 21, 'Admin/Rule/admin_user_list', '管理员列表', 1, 1, ''),
(20, 0, 'Admin/ShowNav/config', '系统设置', 1, 1, ''),
(6, 0, 'Admin/Index/index', '后台首页', 1, 1, ''),
(64, 1, 'Admin/Nav/order', '菜单排序', 1, 1, ''),
(96, 6, 'Admin/Index/welcome', '欢迎界面', 1, 1, ''),
(104, 0, 'Admin/ShowNav/posts', '文章管理', 1, 1, ''),
(105, 104, 'Admin/Posts/index', '文章列表', 1, 1, ''),
(106, 105, 'Admin/Posts/add_posts', '添加文章', 1, 1, ''),
(107, 105, 'Admin/Posts/edit_posts', '修改文章', 1, 1, ''),
(108, 105, 'Admin/Posts/delete_posts', '删除文章', 1, 1, ''),
(109, 104, 'Admin/Posts/category_list', '分类列表', 1, 1, ''),
(110, 109, 'Admin/Posts/add_category', '添加分类', 1, 1, ''),
(111, 109, 'Admin/Posts/edit_category', '修改分类', 1, 1, ''),
(112, 109, 'Admin/Posts/delete_category', '删除分类', 1, 1, ''),
(117, 109, 'Admin/Posts/order_category', '分类排序', 1, 1, ''),
(118, 105, 'Admin/Posts/order_posts', '文章排序', 1, 1, ''),
(123, 11, 'Admin/Rule/add_user_to_group', '设置为管理员', 1, 1, ''),
(124, 11, 'Admin/Rule/add_admin', '添加管理员', 1, 1, ''),
(125, 11, 'Admin/Rule/edit_admin', '修改管理员', 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `banner_position_id` tinyint(2) NOT NULL COMMENT 'bannerλ??ID',
  `banner_category_id` tinyint(2) NOT NULL COMMENT 'banner????ҳ??ID',
  `image_path` varchar(50) NOT NULL COMMENT 'bannerͼƬ·??',
  `link` varchar(100) NOT NULL COMMENT 'banner???',
  `alt` varchar(250) NOT NULL COMMENT 'banner??alt??Ϣ',
  `position` smallint(6) DEFAULT '1' COMMENT '???',
  `popup` tinyint(1) DEFAULT '0' COMMENT '?Ƿ??���???ڣ?1Ϊ?¿????ڣ?',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '?Ƿ????ã?1Ϊ???ã?0Ϊ???ã?',
  `created` int(11) DEFAULT NULL COMMENT '?ϴ?ʱ?',
  `country_limit_id` tinyint(2) DEFAULT '0' COMMENT '???ƹ???ID??0Ϊ?????ƣ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='banner?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `banner_category`
--

CREATE TABLE IF NOT EXISTS `banner_category` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '???',
  `description` varchar(30) NOT NULL COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='banner????ҳ???' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `banner_position`
--

CREATE TABLE IF NOT EXISTS `banner_position` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '???',
  `description` varchar(30) NOT NULL COMMENT '????',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='bannerλ?ñ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pid` mediumint(8) NOT NULL DEFAULT '1',
  `name` varchar(25) NOT NULL COMMENT '???????',
  `url` varchar(30) NOT NULL COMMENT '???????',
  `image` varchar(50) DEFAULT NULL COMMENT '??????ͼ',
  `position` smallint(6) DEFAULT '1' COMMENT 'λ?????',
  `enable` tinyint(1) DEFAULT '1' COMMENT '?Ƿ????ã?1Ϊ???ã?0Ϊ???ã?',
  `show_in_nav` tinyint(1) DEFAULT '1' COMMENT '?Ƿ??ڵ???????ʾ??1Ϊ??ʾ??0Ϊ????ʾ??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?????' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `category_meta`
--

CREATE TABLE IF NOT EXISTS `category_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` mediumint(8) NOT NULL COMMENT '????ID',
  `meta_description` varchar(500) DEFAULT NULL COMMENT '????????',
  `meta_keywords` varchar(300) DEFAULT NULL COMMENT '?????ؼ??',
  `meta_title` varchar(200) DEFAULT NULL COMMENT '???????',
  `country_id` tinyint(2) DEFAULT NULL COMMENT '????ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????SEO??Ϣ-???ұ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `country_site`
--

CREATE TABLE IF NOT EXISTS `country_site` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(25) NOT NULL COMMENT '??????',
  `site` varchar(35) NOT NULL COMMENT 'վ??URL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='վ??-???Ҷ?Ӧ?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(15) DEFAULT NULL COMMENT 'Ŀ¼???',
  `link` varchar(20) DEFAULT NULL COMMENT 'Ŀ¼???',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '?Ƿ????ã?1Ϊ???ã?0Ϊ???ã?',
  `created` int(11) DEFAULT NULL COMMENT '????ʱ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????Ŀ¼?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `document_article`
--

CREATE TABLE IF NOT EXISTS `document_article` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `doc_id` tinyint(2) DEFAULT NULL COMMENT 'Ŀ¼ID',
  `name` varchar(20) DEFAULT NULL COMMENT '???±??',
  `link` varchar(25) DEFAULT NULL COMMENT '???????',
  `content` text COMMENT '???????',
  `enable` tinyint(1) DEFAULT NULL COMMENT '?Ƿ???ʾ(1Ϊ??ʾ??0Ϊ????ʾ)',
  `created` int(11) DEFAULT NULL COMMENT '????ʱ?',
  `country_limit_id` tinyint(2) DEFAULT NULL COMMENT '???ƹ???ID??0Ϊ?????ƹ??ң?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='???±' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(25) NOT NULL COMMENT 'SKU',
  `spu` varchar(15) NOT NULL COMMENT 'SPU',
  `url` varchar(300) NOT NULL COMMENT '??Ʒ???',
  `image` varchar(35) NOT NULL COMMENT '??Ʒ??ͼ',
  `category_id` mediumint(8) NOT NULL COMMENT '??Ʒ???????',
  `is_configure` tinyint(1) NOT NULL DEFAULT '0' COMMENT '???????Ϻű?ʶ(1Ϊ???????Ϻ?,0Ϊ???Ϻ?)',
  `popular` int(11) DEFAULT '0' COMMENT '??Ʒ??????',
  `created` int(11) DEFAULT NULL COMMENT '??Ʒ????ʱ?',
  `updated` int(11) DEFAULT NULL COMMENT '??Ʒ????ʱ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??Ʒ?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `goods_attributes`
--

CREATE TABLE IF NOT EXISTS `goods_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(25) NOT NULL COMMENT 'SKU',
  `spu` varchar(15) NOT NULL COMMENT 'SPU',
  `goods_id` int(11) NOT NULL COMMENT '??ƷID',
  `attribute_id` int(11) NOT NULL COMMENT '????ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??Ʒ???Ա' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `goods_country`
--

CREATE TABLE IF NOT EXISTS `goods_country` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned NOT NULL COMMENT '??ƷID',
  `sku` varchar(25) NOT NULL,
  `spu` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '??Ʒ???',
  `description` text COMMENT '????',
  `price` decimal(5,2) DEFAULT '0.00' COMMENT '?۸',
  `discount_price` decimal(5,2) DEFAULT '0.00' COMMENT '?ۿۼ',
  `special_price` decimal(5,2) DEFAULT '0.00' COMMENT '?????',
  `special_price_availabel_date` int(11) DEFAULT NULL COMMENT '??????ʼʱ?',
  `special_price_expire_datw` int(11) DEFAULT NULL COMMENT '????????ʱ?',
  `review_avg` decimal(3,1) DEFAULT '0.0' COMMENT '?????Ǽ?',
  `review_count` int(11) DEFAULT '0' COMMENT '??????',
  `asin` char(10) NOT NULL COMMENT '??ƷASIN',
  `country_id` tinyint(2) DEFAULT NULL COMMENT '????ID',
  `enable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '???¼?״̬(1Ϊ?ϼ?,0Ϊ?¼?)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??Ʒ-???Ҷ?Ӧ?' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `goods_reviews`
--

CREATE TABLE IF NOT EXISTS `goods_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(25) DEFAULT NULL,
  `spu` varchar(15) DEFAULT NULL,
  `review_attr` varchar(50) DEFAULT NULL COMMENT '??Ʒ?',
  `author` varchar(30) NOT NULL COMMENT '?û????',
  `avg` decimal(3,1) NOT NULL COMMENT '?????Ǽ?',
  `title` varchar(150) DEFAULT NULL COMMENT '???۱??',
  `content` varchar(1000) DEFAULT NULL COMMENT '???????',
  `review_time` int(11) NOT NULL COMMENT '????ʱ?',
  `review_id` varchar(20) NOT NULL COMMENT '????Ψһ??ʶ',
  `review_img` varchar(90) DEFAULT NULL COMMENT '????ͼƬ',
  `country_id` tinyint(2) NOT NULL COMMENT '????ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='??Ʒ???۱' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '?û?ID',
  `firstname` varchar(10) DEFAULT NULL COMMENT '?û????',
  `lastname` varchar(10) DEFAULT NULL COMMENT '?û?????',
  `nickname` varchar(30) DEFAULT NULL COMMENT '?û??ǳ',
  `email` varchar(50) NOT NULL COMMENT '?û????',
  `password` varchar(32) NOT NULL COMMENT '?û????',
  `sex` tinyint(1) DEFAULT '0' COMMENT '?û??Ա?(0Ϊ????,1Ϊ????,2ΪŮ??)',
  `birthday` date DEFAULT NULL COMMENT '?û????',
  `created` int(11) DEFAULT NULL COMMENT 'ע??ʱ?',
  `login_time` int(11) NOT NULL COMMENT '??ǰ??¼ʱ?',
  `prev_login_time` int(11) NOT NULL COMMENT '?ϴε?¼ʱ?',
  `login_ip` char(15) DEFAULT NULL COMMENT '??ǰ??¼IP',
  `prev_login_ip` char(15) DEFAULT NULL COMMENT '?ϴε?½IP',
  `is_actived` tinyint(1) NOT NULL DEFAULT '0' COMMENT '?Ƿ?',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ǰ̨?û??' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_active`
--

CREATE TABLE IF NOT EXISTS `user_active` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL COMMENT '?û?ID',
  `email` varchar(50) NOT NULL COMMENT '?û????',
  `token` varchar(32) NOT NULL COMMENT '????token',
  `created` int(11) NOT NULL COMMENT 'token????ʱ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='????token??ʱ???ű' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `user_wishlist`
--

CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '?û?ID',
  `goods_id` int(11) NOT NULL COMMENT '??ƷID',
  `sku` varchar(25) NOT NULL COMMENT '??ƷSKU',
  `created` int(11) NOT NULL COMMENT '????ʱ?',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='?û???Ը???' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
