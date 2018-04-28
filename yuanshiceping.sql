/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : yuanshiceping

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-04-28 18:14:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abilities
-- ----------------------------
DROP TABLE IF EXISTS `abilities`;
CREATE TABLE `abilities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='才干，能力';

-- ----------------------------
-- Records of abilities
-- ----------------------------
INSERT INTO `abilities` VALUES ('1', '取悦', '1', '0');
INSERT INTO `abilities` VALUES ('2', '分析', '1', '0');
INSERT INTO `abilities` VALUES ('3', '前瞻', '1', '0');
INSERT INTO `abilities` VALUES ('4', '回顾', '1', '0');
INSERT INTO `abilities` VALUES ('5', '追求', '1', '0');
INSERT INTO `abilities` VALUES ('6', '竞争', '1', '0');
INSERT INTO `abilities` VALUES ('7', '成就', '1', '0');
INSERT INTO `abilities` VALUES ('8', '学习', '1', '0');
INSERT INTO `abilities` VALUES ('9', '完美', '1', '0');
INSERT INTO `abilities` VALUES ('10', '排难', '1', '0');
INSERT INTO `abilities` VALUES ('11', '和谐', '1', '0');
INSERT INTO `abilities` VALUES ('12', '个别', '1', '0');
INSERT INTO `abilities` VALUES ('13', '包容', '1', '0');
INSERT INTO `abilities` VALUES ('14', '信仰', '1', '0');
INSERT INTO `abilities` VALUES ('15', '伯乐', '1', '0');
INSERT INTO `abilities` VALUES ('16', '理念', '1', '0');
INSERT INTO `abilities` VALUES ('17', '关联', '1', '0');
INSERT INTO `abilities` VALUES ('18', '体谅', '1', '0');
INSERT INTO `abilities` VALUES ('19', '统率', '1', '0');
INSERT INTO `abilities` VALUES ('20', '行动', '1', '0');
INSERT INTO `abilities` VALUES ('21', '专注', '1', '0');
INSERT INTO `abilities` VALUES ('22', '公平', '1', '0');
INSERT INTO `abilities` VALUES ('23', '思维', '1', '0');
INSERT INTO `abilities` VALUES ('24', '战略', '1', '0');
INSERT INTO `abilities` VALUES ('25', '沟通', '1', '0');
INSERT INTO `abilities` VALUES ('26', '积极', '1', '0');
INSERT INTO `abilities` VALUES ('27', '自信', '1', '0');
INSERT INTO `abilities` VALUES ('28', '责任', '1', '0');
INSERT INTO `abilities` VALUES ('29', '交往', '1', '0');
INSERT INTO `abilities` VALUES ('30', '搜集', '1', '0');
INSERT INTO `abilities` VALUES ('31', '纪律', '1', '0');
INSERT INTO `abilities` VALUES ('32', '适应', '1', '0');
INSERT INTO `abilities` VALUES ('33', '审慎', '1', '0');
INSERT INTO `abilities` VALUES ('34', '统筹', '1', '0');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', '/', null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-user', 'auth/permissions', null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null);
INSERT INTO `admin_menu` VALUES ('8', '0', '8', 'Helpers', 'fa-gears', '', null, null);
INSERT INTO `admin_menu` VALUES ('9', '8', '9', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, null);
INSERT INTO `admin_menu` VALUES ('10', '8', '10', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, null);
INSERT INTO `admin_menu` VALUES ('11', '8', '11', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, null);
INSERT INTO `admin_menu` VALUES ('12', '0', '0', '项目管理', 'fa-bars', null, '2018-04-23 06:16:37', '2018-04-23 06:18:56');
INSERT INTO `admin_menu` VALUES ('13', '12', '0', '测评主题管理', 'fa-bars', '/project/subjects', '2018-04-23 06:18:44', '2018-04-23 06:18:44');
INSERT INTO `admin_menu` VALUES ('14', '12', '0', '分类管理', 'fa-bars', '/project/categories', '2018-04-23 20:45:35', '2018-04-23 20:46:34');
INSERT INTO `admin_menu` VALUES ('15', '12', '0', '测评题管理', 'fa-bars', '/project/questions', '2018-04-24 14:48:12', '2018-04-24 14:48:59');
INSERT INTO `admin_menu` VALUES ('16', '12', '0', '兴趣', 'fa-bars', '/project/interests', '2018-04-24 15:41:21', '2018-04-24 15:41:21');
INSERT INTO `admin_menu` VALUES ('17', '0', '0', '用户管理', 'fa-bars', null, '2018-04-25 10:12:22', '2018-04-25 10:12:22');
INSERT INTO `admin_menu` VALUES ('18', '0', '0', '文章', 'fa-bars', null, '2018-04-25 10:12:38', '2018-04-25 10:12:38');
INSERT INTO `admin_menu` VALUES ('19', '18', '0', '公告管理', 'fa-bars', null, '2018-04-25 10:13:02', '2018-04-25 10:13:02');
INSERT INTO `admin_menu` VALUES ('20', '18', '0', '新闻管理', 'fa-bars', null, '2018-04-25 10:13:19', '2018-04-25 10:13:19');
INSERT INTO `admin_menu` VALUES ('21', '0', '0', '商品', 'fa-bars', '产品', '2018-04-25 10:14:14', '2018-04-25 10:14:14');
INSERT INTO `admin_menu` VALUES ('22', '21', '0', '订单管理', 'fa-bars', null, '2018-04-25 10:14:34', '2018-04-25 10:14:34');
INSERT INTO `admin_menu` VALUES ('23', '21', '0', '数据分析', 'fa-bars', null, '2018-04-25 10:15:11', '2018-04-25 10:15:11');
INSERT INTO `admin_menu` VALUES ('24', '0', '0', '设置中心', 'fa-bars', null, '2018-04-25 10:15:21', '2018-04-25 10:15:21');
INSERT INTO `admin_menu` VALUES ('25', '21', '0', '评价管理', 'fa-bars', null, '2018-04-25 10:16:35', '2018-04-25 10:16:35');
INSERT INTO `admin_menu` VALUES ('26', '21', '0', '虚拟评价', 'fa-bars', null, '2018-04-25 10:16:53', '2018-04-25 10:16:53');
INSERT INTO `admin_menu` VALUES ('27', '0', '0', '小程序后台', 'fa-bars', null, '2018-04-25 10:17:09', '2018-04-25 10:17:09');
INSERT INTO `admin_menu` VALUES ('28', '0', '0', '优惠券', 'fa-bars', '优惠券', '2018-04-25 10:17:47', '2018-04-25 10:17:47');
INSERT INTO `admin_menu` VALUES ('29', '27', '0', '轮播管理', 'fa-bars', null, '2018-04-25 10:18:44', '2018-04-25 10:18:44');
INSERT INTO `admin_menu` VALUES ('30', '12', '0', '才干', 'fa-bars', '/project/abilities', '2018-04-25 14:29:55', '2018-04-25 14:29:55');
INSERT INTO `admin_menu` VALUES ('31', '12', '0', '素质模型', 'fa-bars', '/project/qualities', '2018-04-25 19:43:03', '2018-04-25 19:43:03');
INSERT INTO `admin_menu` VALUES ('32', '12', '0', '性格', 'fa-bars', '/project/personalities', '2018-04-26 14:03:58', '2018-04-26 14:03:58');
INSERT INTO `admin_menu` VALUES ('33', '0', '12', 'Api tester', 'fa-sliders', 'api-tester', '2018-04-27 10:20:02', '2018-04-27 10:20:02');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-10 06:24:01', '2018-04-10 06:24:01');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:24:12', '2018-04-10 06:24:12');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:24:17', '2018-04-10 06:24:17');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-04-10 06:25:29', '2018-04-10 06:25:29');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-04-10 06:25:31', '2018-04-10 06:25:31');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:28:00', '2018-04-10 06:28:00');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:28:24', '2018-04-10 06:28:24');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:28:37', '2018-04-10 06:28:37');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:30:11', '2018-04-10 06:30:11');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:30:14', '2018-04-10 06:30:14');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:30:16', '2018-04-10 06:30:16');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"zhaochang\",\"name\":\"\\u8d75\\u660c\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"smuAOFNTloap4tnh5hAjHQMcPse3cugDH8rlZLU8\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/auth\\/users\"}', '2018-04-10 06:31:37', '2018-04-10 06:31:37');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-10 06:31:37', '2018-04-10 06:31:37');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:31:45', '2018-04-10 06:31:45');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-04-10 06:34:12', '2018-04-10 06:34:12');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-04-10 06:37:23', '2018-04-10 06:37:23');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-04-10 06:40:50', '2018-04-10 06:40:50');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:43:26', '2018-04-10 06:43:26');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:45:20', '2018-04-10 06:45:20');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/users/2', 'PUT', '127.0.0.1', '{\"username\":\"zhaochang\",\"name\":\"\\u8d75\\u660c\",\"password\":\"$2y$10$VM3wBBxC9woeNTR.HStFn.bPlvmaUGcO0y2NINFji23LNHhbZkEjG\",\"password_confirmation\":\"$2y$10$VM3wBBxC9woeNTR.HStFn.bPlvmaUGcO0y2NINFji23LNHhbZkEjG\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"smuAOFNTloap4tnh5hAjHQMcPse3cugDH8rlZLU8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/auth\\/users\"}', '2018-04-10 06:48:19', '2018-04-10 06:48:19');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-10 06:48:19', '2018-04-10 06:48:19');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:48:24', '2018-04-10 06:48:24');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-04-10 06:49:23', '2018-04-10 06:49:23');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:49:35', '2018-04-10 06:49:35');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:49:36', '2018-04-10 06:49:36');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-10 06:58:25', '2018-04-10 06:58:25');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-21 10:42:05', '2018-04-21 10:42:05');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 10:42:18', '2018-04-21 10:42:18');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 10:43:57', '2018-04-21 10:43:57');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 10:43:59', '2018-04-21 10:43:59');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 10:45:49', '2018-04-21 10:45:49');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 10:45:53', '2018-04-21 10:45:53');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-21 11:00:46', '2018-04-21 11:00:46');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-21 11:03:01', '2018-04-21 11:03:01');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-21 11:03:16', '2018-04-21 11:03:16');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:03:39', '2018-04-21 11:03:39');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:08:13', '2018-04-21 11:08:13');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:08:22', '2018-04-21 11:08:22');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9879\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"C3VDgR8ylmBMXc1x09hXmsOAp2p0Wyt5HjaS1ANC\"}', '2018-04-21 11:08:36', '2018-04-21 11:08:36');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-21 11:08:36', '2018-04-21 11:08:36');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:08:41', '2018-04-21 11:08:41');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:08:56', '2018-04-21 11:08:56');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:13', '2018-04-21 11:09:13');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:27', '2018-04-21 11:09:27');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-21 11:09:28', '2018-04-21 11:09:28');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:31', '2018-04-21 11:09:31');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:33', '2018-04-21 11:09:33');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:37', '2018-04-21 11:09:37');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:09:49', '2018-04-21 11:09:49');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6d4b\\u8bc4\\u4e3b\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/subject\",\"roles\":[\"1\",null],\"_token\":\"C3VDgR8ylmBMXc1x09hXmsOAp2p0Wyt5HjaS1ANC\"}', '2018-04-21 11:10:49', '2018-04-21 11:10:49');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-21 11:10:49', '2018-04-21 11:10:49');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:11:10', '2018-04-21 11:11:10');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:11:17', '2018-04-21 11:11:17');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-21 11:11:19', '2018-04-21 11:11:19');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:11:33', '2018-04-21 11:11:33');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:11:38', '2018-04-21 11:11:38');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u6d4b\\u8bc4\\u4e3b\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/subjects\",\"roles\":[\"1\",null],\"_token\":\"C3VDgR8ylmBMXc1x09hXmsOAp2p0Wyt5HjaS1ANC\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/auth\\/menu\"}', '2018-04-21 11:11:49', '2018-04-21 11:11:49');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-21 11:11:49', '2018-04-21 11:11:49');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:12:10', '2018-04-21 11:12:10');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-21 11:22:38', '2018-04-21 11:22:38');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:23:33', '2018-04-21 11:23:33');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:28:39', '2018-04-21 11:28:39');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:35:42', '2018-04-21 11:35:42');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:36:12', '2018-04-21 11:36:12');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 11:45:08', '2018-04-21 11:45:08');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:17:57', '2018-04-21 12:17:57');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:18:11', '2018-04-21 12:18:11');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:18:16', '2018-04-21 12:18:16');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:18:51', '2018-04-21 12:18:51');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:18:56', '2018-04-21 12:18:56');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:19:04', '2018-04-21 12:19:04');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:23:10', '2018-04-21 12:23:10');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:31:15', '2018-04-21 12:31:15');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:31:17', '2018-04-21 12:31:17');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:31:19', '2018-04-21 12:31:19');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-21 12:31:22', '2018-04-21 12:31:22');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-23 01:19:41', '2018-04-23 01:19:41');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:20:23', '2018-04-23 01:20:23');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-23 01:20:31', '2018-04-23 01:20:31');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:20:38', '2018-04-23 01:20:38');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:20:41', '2018-04-23 01:20:41');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:20:43', '2018-04-23 01:20:43');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:20:44', '2018-04-23 01:20:44');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 01:21:02', '2018-04-23 01:21:02');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-23 01:21:16', '2018-04-23 01:21:16');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 02:35:34', '2018-04-23 02:35:34');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 02:35:37', '2018-04-23 02:35:37');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 02:35:41', '2018-04-23 02:35:41');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 02:37:08', '2018-04-23 02:37:08');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 02:37:10', '2018-04-23 02:37:10');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-23 13:02:41', '2018-04-23 13:02:41');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:03:11', '2018-04-23 13:03:11');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:03:31', '2018-04-23 13:03:31');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-23 13:03:50', '2018-04-23 13:03:50');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:04:42', '2018-04-23 13:04:42');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:04:53', '2018-04-23 13:04:53');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:04:56', '2018-04-23 13:04:56');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:05:10', '2018-04-23 13:05:10');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:30', '2018-04-23 13:06:30');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:33', '2018-04-23 13:06:33');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:35', '2018-04-23 13:06:35');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:35', '2018-04-23 13:06:35');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:35', '2018-04-23 13:06:35');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:35', '2018-04-23 13:06:35');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:45', '2018-04-23 13:06:45');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:46', '2018-04-23 13:06:46');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:47', '2018-04-23 13:06:47');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 13:06:48', '2018-04-23 13:06:48');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:06:54', '2018-04-23 13:06:54');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 13:06:56', '2018-04-23 13:06:56');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 13:07:54', '2018-04-23 13:07:54');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 13:07:59', '2018-04-23 13:07:59');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 13:08:01', '2018-04-23 13:08:01');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 05:31:43', '2018-04-23 05:31:43');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 05:32:43', '2018-04-23 05:32:43');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 05:32:46', '2018-04-23 05:32:46');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-04-23 05:33:11', '2018-04-23 05:33:11');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:33:21', '2018-04-23 05:33:21');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:34:40', '2018-04-23 05:34:40');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:34:58', '2018-04-23 05:34:58');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:35:03', '2018-04-23 05:35:03');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:35:10', '2018-04-23 05:35:10');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:35:12', '2018-04-23 05:35:12');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"zhaochang\",\"name\":\"\\u8d75\\u660c\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/users\"}', '2018-04-23 05:35:56', '2018-04-23 05:35:56');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-23 05:35:57', '2018-04-23 05:35:57');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:36:01', '2018-04-23 05:36:01');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:36:22', '2018-04-23 05:36:22');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:36:24', '2018-04-23 05:36:24');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:36:45', '2018-04-23 05:36:45');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 05:36:52', '2018-04-23 05:36:52');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-04-23 05:37:35', '2018-04-23 05:37:35');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 06:15:33', '2018-04-23 06:15:33');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9879\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/subjects\",\"roles\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 06:16:37', '2018-04-23 06:16:37');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 06:16:37', '2018-04-23 06:16:37');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-04-23 06:17:02', '2018-04-23 06:17:02');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 06:17:08', '2018-04-23 06:17:08');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6d4b\\u8bc4\\u4e3b\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/subjects\",\"roles\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 06:18:44', '2018-04-23 06:18:44');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 06:18:44', '2018-04-23 06:18:44');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 06:18:48', '2018-04-23 06:18:48');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9879\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/menu\"}', '2018-04-23 06:18:56', '2018-04-23 06:18:56');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 06:18:56', '2018-04-23 06:18:56');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 06:19:07', '2018-04-23 06:19:07');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 06:36:25', '2018-04-23 06:36:25');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 06:36:28', '2018-04-23 06:36:28');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 06:37:52', '2018-04-23 06:37:52');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 06:38:46', '2018-04-23 06:38:46');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:27:23', '2018-04-23 07:27:23');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:27:27', '2018-04-23 07:27:27');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-23 07:27:42', '2018-04-23 07:27:42');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-23 07:28:14', '2018-04-23 07:28:14');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:38:27', '2018-04-23 07:38:27');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:38:28', '2018-04-23 07:38:28');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 07:39:15', '2018-04-23 07:39:15');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 07:39:31', '2018-04-23 07:39:31');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:59:41', '2018-04-23 07:59:41');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 07:59:44', '2018-04-23 07:59:44');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 07:59:44', '2018-04-23 07:59:44');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:00:43', '2018-04-23 08:00:43');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-23 08:00:46', '2018-04-23 08:00:46');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:01:27', '2018-04-23 08:01:27');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:05:08', '2018-04-23 08:05:08');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:05:09', '2018-04-23 08:05:09');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:05:21', '2018-04-23 08:05:21');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:05:21', '2018-04-23 08:05:21');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:13:08', '2018-04-23 08:13:08');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:13:09', '2018-04-23 08:13:09');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:25:38', '2018-04-23 08:25:38');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:30:32', '2018-04-23 08:30:32');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:31:22', '2018-04-23 08:31:22');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:33:48', '2018-04-23 08:33:48');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:35:51', '2018-04-23 08:35:51');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:36:37', '2018-04-23 08:36:37');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:39:30', '2018-04-23 08:39:30');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 08:43:39', '2018-04-23 08:43:39');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:17:20', '2018-04-23 09:17:20');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:36:47', '2018-04-23 09:36:47');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:36:48', '2018-04-23 09:36:48');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:37:24', '2018-04-23 09:37:24');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:38:22', '2018-04-23 09:38:22');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:38:26', '2018-04-23 09:38:26');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:38:45', '2018-04-23 09:38:45');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:38:46', '2018-04-23 09:38:46');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 09:39:10', '2018-04-23 09:39:10');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:39:10', '2018-04-23 09:39:10');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 09:39:13', '2018-04-23 09:39:13');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:39:13', '2018-04-23 09:39:13');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:39:15', '2018-04-23 09:39:15');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:39:18', '2018-04-23 09:39:18');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:39:18', '2018-04-23 09:39:18');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test\",\"name\":\"\\u6d4b\\u8bd5\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 09:39:35', '2018-04-23 09:39:35');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:39:35', '2018-04-23 09:39:35');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:40:00', '2018-04-23 09:40:00');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:40:36', '2018-04-23 09:40:36');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:40:41', '2018-04-23 09:40:41');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test02\",\"name\":\"\\u6d4b\\u8bd5\",\"permissions\":[\"2\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:41:09', '2018-04-23 09:41:09');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:41:10', '2018-04-23 09:41:10');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:41:46', '2018-04-23 09:41:46');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test02\",\"name\":\"\\u6d4b\\u8bd502\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:41:59', '2018-04-23 09:41:59');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:41:59', '2018-04-23 09:41:59');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:42:36', '2018-04-23 09:42:36');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test021\",\"name\":\"\\u6d4b\\u8bd5012\",\"permissions\":[\"3\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:43:02', '2018-04-23 09:43:02');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:43:03', '2018-04-23 09:43:03');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:43:50', '2018-04-23 09:43:50');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"kepa\",\"name\":\"\\u53ef\\u6015\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:45:59', '2018-04-23 09:45:59');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:45:59', '2018-04-23 09:45:59');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:47:49', '2018-04-23 09:47:49');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:48:20', '2018-04-23 09:48:20');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:50:32', '2018-04-23 09:50:32');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:50:49', '2018-04-23 09:50:49');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:51:12', '2018-04-23 09:51:12');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test03\",\"name\":\"\\u6d4b\\u8bd503\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:51:30', '2018-04-23 09:51:30');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 09:51:30', '2018-04-23 09:51:30');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 09:56:55', '2018-04-23 09:56:55');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test04\",\"name\":\"\\u6d4b\\u8bd5\",\"permissions\":[\"3\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 09:57:06', '2018-04-23 09:57:06');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 09:57:06', '2018-04-23 09:57:06');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:02:18', '2018-04-23 10:02:18');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:02:19', '2018-04-23 10:02:19');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test05\",\"name\":\"\\u6d4b\\u8bd5\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:02:40', '2018-04-23 10:02:40');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '[]', '2018-04-23 10:02:41', '2018-04-23 10:02:41');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test05\",\"name\":\"\\u6d4b\\u8bd5005\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 10:05:05', '2018-04-23 10:05:05');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 10:05:31', '2018-04-23 10:05:31');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:05:33', '2018-04-23 10:05:33');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"test06\",\"name\":\"\\u6d4b\\u8bd5006\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:05:55', '2018-04-23 10:05:55');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:11:04', '2018-04-23 10:11:04');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:11:05', '2018-04-23 10:11:05');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:39:53', '2018-04-23 10:39:53');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:39:54', '2018-04-23 10:39:54');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:39:55', '2018-04-23 10:39:55');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/project/subjects', 'GET', '127.0.0.1', '[]', '2018-04-23 10:41:21', '2018-04-23 10:41:21');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/project/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:41:23', '2018-04-23 10:41:23');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/project/subjects', 'POST', '127.0.0.1', '{\"name\":null,\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/project\\/subjects\"}', '2018-04-23 10:41:24', '2018-04-23 10:41:24');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:44:29', '2018-04-23 10:44:29');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:44:32', '2018-04-23 10:44:32');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:44:51', '2018-04-23 10:44:51');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 10:45:12', '2018-04-23 10:45:12');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 10:45:14', '2018-04-23 10:45:14');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":null,\"name\":null,\"permissions\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 10:45:15', '2018-04-23 10:45:15');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 10:46:18', '2018-04-23 10:46:18');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 11:42:01', '2018-04-23 11:42:01');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/auth/roles/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 11:42:06', '2018-04-23 11:42:06');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/auth/roles/7', 'PUT', '127.0.0.1', '{\"slug\":\"test03\",\"name\":\"\\u6d4b\\u8bd503\\u66f4\\u65b0\\u4e86\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 11:42:12', '2018-04-23 11:42:12');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 11:42:12', '2018-04-23 11:42:12');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/auth/roles/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 11:42:26', '2018-04-23 11:42:26');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/auth/roles/7', 'PUT', '127.0.0.1', '{\"slug\":\"test03\",\"name\":\"\\u6d4b\\u8bd503\\u66f4\\u65b0\\u4e86\\u65f6\\u95f4\\u771f\\u5047\\u671f\",\"permissions\":[\"1\",null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/roles\"}', '2018-04-23 11:42:39', '2018-04-23 11:42:39');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 11:42:39', '2018-04-23 11:42:39');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 11:42:42', '2018-04-23 11:42:42');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-23 11:45:57', '2018-04-23 11:45:57');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:52:52', '2018-04-23 19:52:52');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:52:55', '2018-04-23 19:52:55');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:52:57', '2018-04-23 19:52:57');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:53:02', '2018-04-23 19:53:02');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:53:04', '2018-04-23 19:53:04');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:53:10', '2018-04-23 19:53:10');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:53:11', '2018-04-23 19:53:11');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 19:53:19', '2018-04-23 19:53:19');
INSERT INTO `admin_operation_log` VALUES ('256', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:00:10', '2018-04-23 20:00:10');
INSERT INTO `admin_operation_log` VALUES ('257', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:00:13', '2018-04-23 20:00:13');
INSERT INTO `admin_operation_log` VALUES ('258', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:00:21', '2018-04-23 20:00:21');
INSERT INTO `admin_operation_log` VALUES ('259', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2018-04-23 20:03:46', '2018-04-23 20:03:46');
INSERT INTO `admin_operation_log` VALUES ('260', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:40:58', '2018-04-23 20:40:58');
INSERT INTO `admin_operation_log` VALUES ('261', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:41:28', '2018-04-23 20:41:28');
INSERT INTO `admin_operation_log` VALUES ('262', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:45:03', '2018-04-23 20:45:03');
INSERT INTO `admin_operation_log` VALUES ('263', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\"}', '2018-04-23 20:45:35', '2018-04-23 20:45:35');
INSERT INTO `admin_operation_log` VALUES ('264', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 20:45:35', '2018-04-23 20:45:35');
INSERT INTO `admin_operation_log` VALUES ('265', '1', 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:45:55', '2018-04-23 20:45:55');
INSERT INTO `admin_operation_log` VALUES ('266', '1', 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/menu\"}', '2018-04-23 20:46:03', '2018-04-23 20:46:03');
INSERT INTO `admin_operation_log` VALUES ('267', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 20:46:03', '2018-04-23 20:46:03');
INSERT INTO `admin_operation_log` VALUES ('268', '1', 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-23 20:46:15', '2018-04-23 20:46:15');
INSERT INTO `admin_operation_log` VALUES ('269', '1', 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u5206\\u7c7b\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/categories\",\"roles\":[null],\"_token\":\"wnIvPWiZkHUSokOCeGvUCb3mMCD8UR9g350h4yp5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8087\\/admin\\/auth\\/menu\"}', '2018-04-23 20:46:33', '2018-04-23 20:46:33');
INSERT INTO `admin_operation_log` VALUES ('270', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 20:46:34', '2018-04-23 20:46:34');
INSERT INTO `admin_operation_log` VALUES ('271', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-23 20:46:40', '2018-04-23 20:46:40');
INSERT INTO `admin_operation_log` VALUES ('272', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-24 08:50:01', '2018-04-24 08:50:01');
INSERT INTO `admin_operation_log` VALUES ('273', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-24 14:44:48', '2018-04-24 14:44:48');
INSERT INTO `admin_operation_log` VALUES ('274', '1', 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-24 14:44:53', '2018-04-24 14:44:53');
INSERT INTO `admin_operation_log` VALUES ('275', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-24 14:47:50', '2018-04-24 14:47:50');
INSERT INTO `admin_operation_log` VALUES ('276', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6d4b\\u8bc4\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"5Uw83oECkz5tUwagsRIdUo96h6gIpxwK2sdNjTfP\"}', '2018-04-24 14:48:12', '2018-04-24 14:48:12');
INSERT INTO `admin_operation_log` VALUES ('277', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-24 14:48:12', '2018-04-24 14:48:12');
INSERT INTO `admin_operation_log` VALUES ('278', '1', 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-24 14:48:22', '2018-04-24 14:48:22');
INSERT INTO `admin_operation_log` VALUES ('279', '1', 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6d4b\\u8bc4\\u9898\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/questions\",\"roles\":[null],\"_token\":\"5Uw83oECkz5tUwagsRIdUo96h6gIpxwK2sdNjTfP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/auth\\/menu\"}', '2018-04-24 14:48:59', '2018-04-24 14:48:59');
INSERT INTO `admin_operation_log` VALUES ('280', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-24 14:48:59', '2018-04-24 14:48:59');
INSERT INTO `admin_operation_log` VALUES ('281', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-24 15:40:48', '2018-04-24 15:40:48');
INSERT INTO `admin_operation_log` VALUES ('282', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u5174\\u8da3\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/interests\",\"roles\":[null],\"_token\":\"5Uw83oECkz5tUwagsRIdUo96h6gIpxwK2sdNjTfP\"}', '2018-04-24 15:41:21', '2018-04-24 15:41:21');
INSERT INTO `admin_operation_log` VALUES ('283', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-24 15:41:21', '2018-04-24 15:41:21');
INSERT INTO `admin_operation_log` VALUES ('284', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-24 15:45:19', '2018-04-24 15:45:19');
INSERT INTO `admin_operation_log` VALUES ('285', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-25 09:55:17', '2018-04-25 09:55:17');
INSERT INTO `admin_operation_log` VALUES ('286', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 10:10:59', '2018-04-25 10:10:59');
INSERT INTO `admin_operation_log` VALUES ('287', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:12:22', '2018-04-25 10:12:22');
INSERT INTO `admin_operation_log` VALUES ('288', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:12:22', '2018-04-25 10:12:22');
INSERT INTO `admin_operation_log` VALUES ('289', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:12:38', '2018-04-25 10:12:38');
INSERT INTO `admin_operation_log` VALUES ('290', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:12:38', '2018-04-25 10:12:38');
INSERT INTO `admin_operation_log` VALUES ('291', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"18\",\"title\":\"\\u516c\\u544a\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:13:02', '2018-04-25 10:13:02');
INSERT INTO `admin_operation_log` VALUES ('292', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:13:02', '2018-04-25 10:13:02');
INSERT INTO `admin_operation_log` VALUES ('293', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"18\",\"title\":\"\\u65b0\\u95fb\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:13:19', '2018-04-25 10:13:19');
INSERT INTO `admin_operation_log` VALUES ('294', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:13:19', '2018-04-25 10:13:19');
INSERT INTO `admin_operation_log` VALUES ('295', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"\\u4ea7\\u54c1\",\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:13:54', '2018-04-25 10:13:54');
INSERT INTO `admin_operation_log` VALUES ('296', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:13:54', '2018-04-25 10:13:54');
INSERT INTO `admin_operation_log` VALUES ('297', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\",\"icon\":\"fa-bars\",\"uri\":\"\\u4ea7\\u54c1\",\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:14:14', '2018-04-25 10:14:14');
INSERT INTO `admin_operation_log` VALUES ('298', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:14:14', '2018-04-25 10:14:14');
INSERT INTO `admin_operation_log` VALUES ('299', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"21\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:14:34', '2018-04-25 10:14:34');
INSERT INTO `admin_operation_log` VALUES ('300', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:14:34', '2018-04-25 10:14:34');
INSERT INTO `admin_operation_log` VALUES ('301', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"21\",\"title\":\"\\u6570\\u636e\\u5206\\u6790\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:15:10', '2018-04-25 10:15:10');
INSERT INTO `admin_operation_log` VALUES ('302', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:15:11', '2018-04-25 10:15:11');
INSERT INTO `admin_operation_log` VALUES ('303', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bbe\\u7f6e\\u4e2d\\u5fc3\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:15:21', '2018-04-25 10:15:21');
INSERT INTO `admin_operation_log` VALUES ('304', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:15:21', '2018-04-25 10:15:21');
INSERT INTO `admin_operation_log` VALUES ('305', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"21\",\"title\":\"\\u8bc4\\u4ef7\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:16:35', '2018-04-25 10:16:35');
INSERT INTO `admin_operation_log` VALUES ('306', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:16:35', '2018-04-25 10:16:35');
INSERT INTO `admin_operation_log` VALUES ('307', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"21\",\"title\":\"\\u865a\\u62df\\u8bc4\\u4ef7\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:16:53', '2018-04-25 10:16:53');
INSERT INTO `admin_operation_log` VALUES ('308', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:16:53', '2018-04-25 10:16:53');
INSERT INTO `admin_operation_log` VALUES ('309', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:17:08', '2018-04-25 10:17:08');
INSERT INTO `admin_operation_log` VALUES ('310', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:17:09', '2018-04-25 10:17:09');
INSERT INTO `admin_operation_log` VALUES ('311', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":\"\\u4f18\\u60e0\\u5238\",\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:17:38', '2018-04-25 10:17:38');
INSERT INTO `admin_operation_log` VALUES ('312', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:17:38', '2018-04-25 10:17:38');
INSERT INTO `admin_operation_log` VALUES ('313', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\",\"icon\":\"fa-bars\",\"uri\":\"\\u4f18\\u60e0\\u5238\",\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:17:47', '2018-04-25 10:17:47');
INSERT INTO `admin_operation_log` VALUES ('314', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:17:47', '2018-04-25 10:17:47');
INSERT INTO `admin_operation_log` VALUES ('315', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"27\",\"title\":\"\\u8f6e\\u64ad\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"KNaVTTzu9YSLobYZCdOhBhqhF9ONAU0cidqjQ1wZ\"}', '2018-04-25 10:18:44', '2018-04-25 10:18:44');
INSERT INTO `admin_operation_log` VALUES ('316', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:18:44', '2018-04-25 10:18:44');
INSERT INTO `admin_operation_log` VALUES ('317', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 10:25:22', '2018-04-25 10:25:22');
INSERT INTO `admin_operation_log` VALUES ('318', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 14:28:33', '2018-04-25 14:28:33');
INSERT INTO `admin_operation_log` VALUES ('319', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 14:28:38', '2018-04-25 14:28:38');
INSERT INTO `admin_operation_log` VALUES ('320', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 14:28:43', '2018-04-25 14:28:43');
INSERT INTO `admin_operation_log` VALUES ('321', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u624d\\u5e72\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/abilities\",\"roles\":[null],\"_token\":\"gGYFkTMHIssIjfmjumXHm6itf8gGf8J0mflmhVUo\"}', '2018-04-25 14:29:55', '2018-04-25 14:29:55');
INSERT INTO `admin_operation_log` VALUES ('322', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 14:29:55', '2018-04-25 14:29:55');
INSERT INTO `admin_operation_log` VALUES ('323', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 14:32:46', '2018-04-25 14:32:46');
INSERT INTO `admin_operation_log` VALUES ('324', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 14:32:50', '2018-04-25 14:32:50');
INSERT INTO `admin_operation_log` VALUES ('325', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '[]', '2018-04-25 14:33:15', '2018-04-25 14:33:15');
INSERT INTO `admin_operation_log` VALUES ('326', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '[]', '2018-04-25 14:34:41', '2018-04-25 14:34:41');
INSERT INTO `admin_operation_log` VALUES ('327', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-25 19:11:36', '2018-04-25 19:11:36');
INSERT INTO `admin_operation_log` VALUES ('328', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-25 19:12:24', '2018-04-25 19:12:24');
INSERT INTO `admin_operation_log` VALUES ('329', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u53d6\\u60a6\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"qXoD0InckEtOqmFMJJZNzWYQ7gfKuZZBEN7vYFVG\"}', '2018-04-25 19:22:46', '2018-04-25 19:22:46');
INSERT INTO `admin_operation_log` VALUES ('330', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '[]', '2018-04-25 19:22:47', '2018-04-25 19:22:47');
INSERT INTO `admin_operation_log` VALUES ('331', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:22:55', '2018-04-25 19:22:55');
INSERT INTO `admin_operation_log` VALUES ('332', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u5206\\u6790\",\"sort\":\"2\",\"status\":\"1\",\"_token\":\"qXoD0InckEtOqmFMJJZNzWYQ7gfKuZZBEN7vYFVG\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/abilities\"}', '2018-04-25 19:23:02', '2018-04-25 19:23:02');
INSERT INTO `admin_operation_log` VALUES ('333', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '[]', '2018-04-25 19:23:02', '2018-04-25 19:23:02');
INSERT INTO `admin_operation_log` VALUES ('334', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:23:24', '2018-04-25 19:23:24');
INSERT INTO `admin_operation_log` VALUES ('335', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u7d20\\u8d28\\u6a21\\u578b\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/qualities\",\"roles\":[null],\"_token\":\"qXoD0InckEtOqmFMJJZNzWYQ7gfKuZZBEN7vYFVG\"}', '2018-04-25 19:43:02', '2018-04-25 19:43:02');
INSERT INTO `admin_operation_log` VALUES ('336', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 19:43:03', '2018-04-25 19:43:03');
INSERT INTO `admin_operation_log` VALUES ('337', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-25 19:49:18', '2018-04-25 19:49:18');
INSERT INTO `admin_operation_log` VALUES ('338', '1', 'admin/project/qualities', 'GET', '127.0.0.1', '[]', '2018-04-25 19:49:52', '2018-04-25 19:49:52');
INSERT INTO `admin_operation_log` VALUES ('339', '1', 'admin/project/qualities', 'GET', '127.0.0.1', '[]', '2018-04-25 19:50:38', '2018-04-25 19:50:38');
INSERT INTO `admin_operation_log` VALUES ('340', '1', 'admin/project/qualities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:50:43', '2018-04-25 19:50:43');
INSERT INTO `admin_operation_log` VALUES ('341', '1', 'admin/project/qualities', 'POST', '127.0.0.1', '{\"name\":\"\\u56e2\\u961f\\u9886\\u5bfc\\u80fd\\u529b\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"qXoD0InckEtOqmFMJJZNzWYQ7gfKuZZBEN7vYFVG\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/qualities\"}', '2018-04-25 19:51:33', '2018-04-25 19:51:33');
INSERT INTO `admin_operation_log` VALUES ('342', '1', 'admin/project/qualities', 'GET', '127.0.0.1', '[]', '2018-04-25 19:51:33', '2018-04-25 19:51:33');
INSERT INTO `admin_operation_log` VALUES ('343', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:51:45', '2018-04-25 19:51:45');
INSERT INTO `admin_operation_log` VALUES ('344', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:57:34', '2018-04-25 19:57:34');
INSERT INTO `admin_operation_log` VALUES ('345', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 19:57:37', '2018-04-25 19:57:37');
INSERT INTO `admin_operation_log` VALUES ('346', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-25 20:05:03', '2018-04-25 20:05:03');
INSERT INTO `admin_operation_log` VALUES ('347', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 20:30:58', '2018-04-25 20:30:58');
INSERT INTO `admin_operation_log` VALUES ('348', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-25 20:35:26', '2018-04-25 20:35:26');
INSERT INTO `admin_operation_log` VALUES ('349', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-25 20:45:47', '2018-04-25 20:45:47');
INSERT INTO `admin_operation_log` VALUES ('350', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 20:46:17', '2018-04-25 20:46:17');
INSERT INTO `admin_operation_log` VALUES ('351', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 20:47:18', '2018-04-25 20:47:18');
INSERT INTO `admin_operation_log` VALUES ('352', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-25 20:48:20', '2018-04-25 20:48:20');
INSERT INTO `admin_operation_log` VALUES ('353', '1', 'admin/project/interests', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-25 20:48:45', '2018-04-25 20:48:45');
INSERT INTO `admin_operation_log` VALUES ('354', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 08:51:35', '2018-04-26 08:51:35');
INSERT INTO `admin_operation_log` VALUES ('355', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 08:51:39', '2018-04-26 08:51:39');
INSERT INTO `admin_operation_log` VALUES ('356', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 09:05:05', '2018-04-26 09:05:05');
INSERT INTO `admin_operation_log` VALUES ('357', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 09:59:46', '2018-04-26 09:59:46');
INSERT INTO `admin_operation_log` VALUES ('358', '1', 'admin/project/categories', 'GET', '127.0.0.1', '[]', '2018-04-26 10:05:41', '2018-04-26 10:05:41');
INSERT INTO `admin_operation_log` VALUES ('359', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"id\":\"2\",\"_pjax\":\"#pjax-container\"}', '2018-04-26 10:05:50', '2018-04-26 10:05:50');
INSERT INTO `admin_operation_log` VALUES ('360', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:09:16', '2018-04-26 10:09:16');
INSERT INTO `admin_operation_log` VALUES ('361', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:10:08', '2018-04-26 10:10:08');
INSERT INTO `admin_operation_log` VALUES ('362', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:10:16', '2018-04-26 10:10:16');
INSERT INTO `admin_operation_log` VALUES ('363', '1', 'admin/project/questions/undefined', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:10:16', '2018-04-26 10:10:16');
INSERT INTO `admin_operation_log` VALUES ('364', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:11:27', '2018-04-26 10:11:27');
INSERT INTO `admin_operation_log` VALUES ('365', '1', 'admin/project/categories', 'GET', '127.0.0.1', '[]', '2018-04-26 10:12:39', '2018-04-26 10:12:39');
INSERT INTO `admin_operation_log` VALUES ('366', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:12:49', '2018-04-26 10:12:49');
INSERT INTO `admin_operation_log` VALUES ('367', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:14:44', '2018-04-26 10:14:44');
INSERT INTO `admin_operation_log` VALUES ('368', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:18:21', '2018-04-26 10:18:21');
INSERT INTO `admin_operation_log` VALUES ('369', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:18:22', '2018-04-26 10:18:22');
INSERT INTO `admin_operation_log` VALUES ('370', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:19:31', '2018-04-26 10:19:31');
INSERT INTO `admin_operation_log` VALUES ('371', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:20:26', '2018-04-26 10:20:26');
INSERT INTO `admin_operation_log` VALUES ('372', '1', 'admin/project/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:20:32', '2018-04-26 10:20:32');
INSERT INTO `admin_operation_log` VALUES ('373', '1', 'admin/project/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:21:48', '2018-04-26 10:21:48');
INSERT INTO `admin_operation_log` VALUES ('374', '1', 'admin/project/types', 'GET', '127.0.0.1', '[]', '2018-04-26 10:22:03', '2018-04-26 10:22:03');
INSERT INTO `admin_operation_log` VALUES ('375', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:24:30', '2018-04-26 10:24:30');
INSERT INTO `admin_operation_log` VALUES ('376', '1', 'admin/project/categories/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:24:35', '2018-04-26 10:24:35');
INSERT INTO `admin_operation_log` VALUES ('377', '1', 'admin/project/questions/undefined', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:24:35', '2018-04-26 10:24:35');
INSERT INTO `admin_operation_log` VALUES ('378', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:25:04', '2018-04-26 10:25:04');
INSERT INTO `admin_operation_log` VALUES ('379', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:25:07', '2018-04-26 10:25:07');
INSERT INTO `admin_operation_log` VALUES ('380', '1', 'admin/project/questions/undefined', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:25:07', '2018-04-26 10:25:07');
INSERT INTO `admin_operation_log` VALUES ('381', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:26:36', '2018-04-26 10:26:36');
INSERT INTO `admin_operation_log` VALUES ('382', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:26:41', '2018-04-26 10:26:41');
INSERT INTO `admin_operation_log` VALUES ('383', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:27:16', '2018-04-26 10:27:16');
INSERT INTO `admin_operation_log` VALUES ('384', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:27:23', '2018-04-26 10:27:23');
INSERT INTO `admin_operation_log` VALUES ('385', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:27:23', '2018-04-26 10:27:23');
INSERT INTO `admin_operation_log` VALUES ('386', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:29:23', '2018-04-26 10:29:23');
INSERT INTO `admin_operation_log` VALUES ('387', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:29:36', '2018-04-26 10:29:36');
INSERT INTO `admin_operation_log` VALUES ('388', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:29:36', '2018-04-26 10:29:36');
INSERT INTO `admin_operation_log` VALUES ('389', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:30:10', '2018-04-26 10:30:10');
INSERT INTO `admin_operation_log` VALUES ('390', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:30:13', '2018-04-26 10:30:13');
INSERT INTO `admin_operation_log` VALUES ('391', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:30:13', '2018-04-26 10:30:13');
INSERT INTO `admin_operation_log` VALUES ('392', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:40:13', '2018-04-26 10:40:13');
INSERT INTO `admin_operation_log` VALUES ('393', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:40:17', '2018-04-26 10:40:17');
INSERT INTO `admin_operation_log` VALUES ('394', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:40:17', '2018-04-26 10:40:17');
INSERT INTO `admin_operation_log` VALUES ('395', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:41:07', '2018-04-26 10:41:07');
INSERT INTO `admin_operation_log` VALUES ('396', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:41:09', '2018-04-26 10:41:09');
INSERT INTO `admin_operation_log` VALUES ('397', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:41:09', '2018-04-26 10:41:09');
INSERT INTO `admin_operation_log` VALUES ('398', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:41:59', '2018-04-26 10:41:59');
INSERT INTO `admin_operation_log` VALUES ('399', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:42:02', '2018-04-26 10:42:02');
INSERT INTO `admin_operation_log` VALUES ('400', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:42:02', '2018-04-26 10:42:02');
INSERT INTO `admin_operation_log` VALUES ('401', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 10:52:44', '2018-04-26 10:52:44');
INSERT INTO `admin_operation_log` VALUES ('402', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:52:49', '2018-04-26 10:52:49');
INSERT INTO `admin_operation_log` VALUES ('403', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 10:52:49', '2018-04-26 10:52:49');
INSERT INTO `admin_operation_log` VALUES ('404', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 11:32:43', '2018-04-26 11:32:43');
INSERT INTO `admin_operation_log` VALUES ('405', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 12:14:53', '2018-04-26 12:14:53');
INSERT INTO `admin_operation_log` VALUES ('406', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:14:55', '2018-04-26 12:14:55');
INSERT INTO `admin_operation_log` VALUES ('407', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:14:56', '2018-04-26 12:14:56');
INSERT INTO `admin_operation_log` VALUES ('408', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:15:03', '2018-04-26 12:15:03');
INSERT INTO `admin_operation_log` VALUES ('409', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:15:04', '2018-04-26 12:15:04');
INSERT INTO `admin_operation_log` VALUES ('410', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 12:15:47', '2018-04-26 12:15:47');
INSERT INTO `admin_operation_log` VALUES ('411', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:15:51', '2018-04-26 12:15:51');
INSERT INTO `admin_operation_log` VALUES ('412', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:15:51', '2018-04-26 12:15:51');
INSERT INTO `admin_operation_log` VALUES ('413', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:15:55', '2018-04-26 12:15:55');
INSERT INTO `admin_operation_log` VALUES ('414', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:15:55', '2018-04-26 12:15:55');
INSERT INTO `admin_operation_log` VALUES ('415', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 12:18:00', '2018-04-26 12:18:00');
INSERT INTO `admin_operation_log` VALUES ('416', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:18:03', '2018-04-26 12:18:03');
INSERT INTO `admin_operation_log` VALUES ('417', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:18:04', '2018-04-26 12:18:04');
INSERT INTO `admin_operation_log` VALUES ('418', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 12:22:31', '2018-04-26 12:22:31');
INSERT INTO `admin_operation_log` VALUES ('419', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:22:55', '2018-04-26 12:22:55');
INSERT INTO `admin_operation_log` VALUES ('420', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:22:55', '2018-04-26 12:22:55');
INSERT INTO `admin_operation_log` VALUES ('421', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_one\":\"J\",\"type_two\":\"P\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 12:28:05', '2018-04-26 12:28:05');
INSERT INTO `admin_operation_log` VALUES ('422', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_one\":\"J\",\"type_two\":\"P\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 12:31:42', '2018-04-26 12:31:42');
INSERT INTO `admin_operation_log` VALUES ('423', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_one\":\"J\",\"type_two\":\"P\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 12:32:52', '2018-04-26 12:32:52');
INSERT INTO `admin_operation_log` VALUES ('424', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_one\":\"J\",\"type_two\":\"P\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 12:33:51', '2018-04-26 12:33:51');
INSERT INTO `admin_operation_log` VALUES ('425', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":null}', '2018-04-26 12:34:19', '2018-04-26 12:34:19');
INSERT INTO `admin_operation_log` VALUES ('426', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":null}', '2018-04-26 12:34:19', '2018-04-26 12:34:19');
INSERT INTO `admin_operation_log` VALUES ('427', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:34:25', '2018-04-26 12:34:25');
INSERT INTO `admin_operation_log` VALUES ('428', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:34:25', '2018-04-26 12:34:25');
INSERT INTO `admin_operation_log` VALUES ('429', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_one\":\"\\u8bf7\\u9009\\u62e9\",\"type_two\":\"P\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 12:36:03', '2018-04-26 12:36:03');
INSERT INTO `admin_operation_log` VALUES ('430', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 12:38:22', '2018-04-26 12:38:22');
INSERT INTO `admin_operation_log` VALUES ('431', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 12:38:25', '2018-04-26 12:38:25');
INSERT INTO `admin_operation_log` VALUES ('432', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:38:29', '2018-04-26 12:38:29');
INSERT INTO `admin_operation_log` VALUES ('433', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 12:38:29', '2018-04-26 12:38:29');
INSERT INTO `admin_operation_log` VALUES ('434', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:38:33', '2018-04-26 12:38:33');
INSERT INTO `admin_operation_log` VALUES ('435', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:38:33', '2018-04-26 12:38:33');
INSERT INTO `admin_operation_log` VALUES ('436', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_tow\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:39:30', '2018-04-26 12:39:30');
INSERT INTO `admin_operation_log` VALUES ('437', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_tow\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:40:45', '2018-04-26 12:40:45');
INSERT INTO `admin_operation_log` VALUES ('438', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 12:40:46', '2018-04-26 12:40:46');
INSERT INTO `admin_operation_log` VALUES ('439', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 12:42:57', '2018-04-26 12:42:57');
INSERT INTO `admin_operation_log` VALUES ('440', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:42:59', '2018-04-26 12:42:59');
INSERT INTO `admin_operation_log` VALUES ('441', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:42:59', '2018-04-26 12:42:59');
INSERT INTO `admin_operation_log` VALUES ('442', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_tow\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:43:31', '2018-04-26 12:43:31');
INSERT INTO `admin_operation_log` VALUES ('443', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_tow\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:54:23', '2018-04-26 12:54:23');
INSERT INTO `admin_operation_log` VALUES ('444', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_tow\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:54:46', '2018-04-26 12:54:46');
INSERT INTO `admin_operation_log` VALUES ('445', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 12:54:47', '2018-04-26 12:54:47');
INSERT INTO `admin_operation_log` VALUES ('446', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 12:55:09', '2018-04-26 12:55:09');
INSERT INTO `admin_operation_log` VALUES ('447', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:55:12', '2018-04-26 12:55:12');
INSERT INTO `admin_operation_log` VALUES ('448', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 12:55:12', '2018-04-26 12:55:12');
INSERT INTO `admin_operation_log` VALUES ('449', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:55:45', '2018-04-26 12:55:45');
INSERT INTO `admin_operation_log` VALUES ('450', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 12:58:40', '2018-04-26 12:58:40');
INSERT INTO `admin_operation_log` VALUES ('451', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 13:00:42', '2018-04-26 13:00:42');
INSERT INTO `admin_operation_log` VALUES ('452', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 13:00:44', '2018-04-26 13:00:44');
INSERT INTO `admin_operation_log` VALUES ('453', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 13:00:47', '2018-04-26 13:00:47');
INSERT INTO `admin_operation_log` VALUES ('454', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 13:00:47', '2018-04-26 13:00:47');
INSERT INTO `admin_operation_log` VALUES ('455', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"3\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 13:01:10', '2018-04-26 13:01:10');
INSERT INTO `admin_operation_log` VALUES ('456', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:03:24', '2018-04-26 14:03:24');
INSERT INTO `admin_operation_log` VALUES ('457', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:03:28', '2018-04-26 14:03:28');
INSERT INTO `admin_operation_log` VALUES ('458', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u6027\\u683c\",\"icon\":\"fa-bars\",\"uri\":\"\\/project\\/personalities\",\"roles\":[null],\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:03:57', '2018-04-26 14:03:57');
INSERT INTO `admin_operation_log` VALUES ('459', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-26 14:03:58', '2018-04-26 14:03:58');
INSERT INTO `admin_operation_log` VALUES ('460', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-04-26 14:04:40', '2018-04-26 14:04:40');
INSERT INTO `admin_operation_log` VALUES ('461', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:04:45', '2018-04-26 14:04:45');
INSERT INTO `admin_operation_log` VALUES ('462', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:05:18', '2018-04-26 14:05:18');
INSERT INTO `admin_operation_log` VALUES ('463', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:05:23', '2018-04-26 14:05:23');
INSERT INTO `admin_operation_log` VALUES ('464', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:05:53', '2018-04-26 14:05:53');
INSERT INTO `admin_operation_log` VALUES ('465', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:08:19', '2018-04-26 14:08:19');
INSERT INTO `admin_operation_log` VALUES ('466', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:08:59', '2018-04-26 14:08:59');
INSERT INTO `admin_operation_log` VALUES ('467', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:09:22', '2018-04-26 14:09:22');
INSERT INTO `admin_operation_log` VALUES ('468', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"E\",\"remark\":\"EI\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:09:44', '2018-04-26 14:09:44');
INSERT INTO `admin_operation_log` VALUES ('469', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:09:45', '2018-04-26 14:09:45');
INSERT INTO `admin_operation_log` VALUES ('470', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"E\",\"remark\":\"EI\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:11:29', '2018-04-26 14:11:29');
INSERT INTO `admin_operation_log` VALUES ('471', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:11:29', '2018-04-26 14:11:29');
INSERT INTO `admin_operation_log` VALUES ('472', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:11:35', '2018-04-26 14:11:35');
INSERT INTO `admin_operation_log` VALUES ('473', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"I\",\"remark\":\"EI\",\"sort\":\"2\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:11:44', '2018-04-26 14:11:44');
INSERT INTO `admin_operation_log` VALUES ('474', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:11:44', '2018-04-26 14:11:44');
INSERT INTO `admin_operation_log` VALUES ('475', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:11:56', '2018-04-26 14:11:56');
INSERT INTO `admin_operation_log` VALUES ('476', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"S\",\"remark\":\"SN\",\"sort\":\"3\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:12:05', '2018-04-26 14:12:05');
INSERT INTO `admin_operation_log` VALUES ('477', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:12:05', '2018-04-26 14:12:05');
INSERT INTO `admin_operation_log` VALUES ('478', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:12:07', '2018-04-26 14:12:07');
INSERT INTO `admin_operation_log` VALUES ('479', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"N\",\"remark\":\"SN\",\"sort\":\"4\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:12:18', '2018-04-26 14:12:18');
INSERT INTO `admin_operation_log` VALUES ('480', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:12:18', '2018-04-26 14:12:18');
INSERT INTO `admin_operation_log` VALUES ('481', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:12:20', '2018-04-26 14:12:20');
INSERT INTO `admin_operation_log` VALUES ('482', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"T\",\"remark\":\"TF\",\"sort\":\"5\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:12:29', '2018-04-26 14:12:29');
INSERT INTO `admin_operation_log` VALUES ('483', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:12:29', '2018-04-26 14:12:29');
INSERT INTO `admin_operation_log` VALUES ('484', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:12:31', '2018-04-26 14:12:31');
INSERT INTO `admin_operation_log` VALUES ('485', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"F\",\"remark\":\"TF\",\"sort\":\"6\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:12:40', '2018-04-26 14:12:40');
INSERT INTO `admin_operation_log` VALUES ('486', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:12:40', '2018-04-26 14:12:40');
INSERT INTO `admin_operation_log` VALUES ('487', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:12:42', '2018-04-26 14:12:42');
INSERT INTO `admin_operation_log` VALUES ('488', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"J\",\"remark\":\"JP\",\"sort\":\"7\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:12:52', '2018-04-26 14:12:52');
INSERT INTO `admin_operation_log` VALUES ('489', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:12:53', '2018-04-26 14:12:53');
INSERT INTO `admin_operation_log` VALUES ('490', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:12:54', '2018-04-26 14:12:54');
INSERT INTO `admin_operation_log` VALUES ('491', '1', 'admin/project/personalities', 'POST', '127.0.0.1', '{\"name\":\"P\",\"remark\":\"JP\",\"sort\":\"8\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/personalities\"}', '2018-04-26 14:13:03', '2018-04-26 14:13:03');
INSERT INTO `admin_operation_log` VALUES ('492', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '[]', '2018-04-26 14:13:03', '2018-04-26 14:13:03');
INSERT INTO `admin_operation_log` VALUES ('493', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:14:01', '2018-04-26 14:14:01');
INSERT INTO `admin_operation_log` VALUES ('494', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:14:39', '2018-04-26 14:14:39');
INSERT INTO `admin_operation_log` VALUES ('495', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:14:39', '2018-04-26 14:14:39');
INSERT INTO `admin_operation_log` VALUES ('496', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:15:26', '2018-04-26 14:15:26');
INSERT INTO `admin_operation_log` VALUES ('497', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:15:28', '2018-04-26 14:15:28');
INSERT INTO `admin_operation_log` VALUES ('498', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:15:33', '2018-04-26 14:15:33');
INSERT INTO `admin_operation_log` VALUES ('499', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:15:33', '2018-04-26 14:15:33');
INSERT INTO `admin_operation_log` VALUES ('500', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:29:20', '2018-04-26 14:29:20');
INSERT INTO `admin_operation_log` VALUES ('501', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:29:21', '2018-04-26 14:29:21');
INSERT INTO `admin_operation_log` VALUES ('502', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:29:54', '2018-04-26 14:29:54');
INSERT INTO `admin_operation_log` VALUES ('503', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:29:55', '2018-04-26 14:29:55');
INSERT INTO `admin_operation_log` VALUES ('504', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 14:30:11', '2018-04-26 14:30:11');
INSERT INTO `admin_operation_log` VALUES ('505', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 14:30:11', '2018-04-26 14:30:11');
INSERT INTO `admin_operation_log` VALUES ('506', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:30:13', '2018-04-26 14:30:13');
INSERT INTO `admin_operation_log` VALUES ('507', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:30:14', '2018-04-26 14:30:14');
INSERT INTO `admin_operation_log` VALUES ('508', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:30:25', '2018-04-26 14:30:25');
INSERT INTO `admin_operation_log` VALUES ('509', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:30:25', '2018-04-26 14:30:25');
INSERT INTO `admin_operation_log` VALUES ('510', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:31:15', '2018-04-26 14:31:15');
INSERT INTO `admin_operation_log` VALUES ('511', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:31:15', '2018-04-26 14:31:15');
INSERT INTO `admin_operation_log` VALUES ('512', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:32:49', '2018-04-26 14:32:49');
INSERT INTO `admin_operation_log` VALUES ('513', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:32:52', '2018-04-26 14:32:52');
INSERT INTO `admin_operation_log` VALUES ('514', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:32:52', '2018-04-26 14:32:52');
INSERT INTO `admin_operation_log` VALUES ('515', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:33:08', '2018-04-26 14:33:08');
INSERT INTO `admin_operation_log` VALUES ('516', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:33:08', '2018-04-26 14:33:08');
INSERT INTO `admin_operation_log` VALUES ('517', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:34:03', '2018-04-26 14:34:03');
INSERT INTO `admin_operation_log` VALUES ('518', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:34:06', '2018-04-26 14:34:06');
INSERT INTO `admin_operation_log` VALUES ('519', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:34:06', '2018-04-26 14:34:06');
INSERT INTO `admin_operation_log` VALUES ('520', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:34:21', '2018-04-26 14:34:21');
INSERT INTO `admin_operation_log` VALUES ('521', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:34:21', '2018-04-26 14:34:21');
INSERT INTO `admin_operation_log` VALUES ('522', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:35:07', '2018-04-26 14:35:07');
INSERT INTO `admin_operation_log` VALUES ('523', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:35:09', '2018-04-26 14:35:09');
INSERT INTO `admin_operation_log` VALUES ('524', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:35:09', '2018-04-26 14:35:09');
INSERT INTO `admin_operation_log` VALUES ('525', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:35:24', '2018-04-26 14:35:24');
INSERT INTO `admin_operation_log` VALUES ('526', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:35:24', '2018-04-26 14:35:24');
INSERT INTO `admin_operation_log` VALUES ('527', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:35:33', '2018-04-26 14:35:33');
INSERT INTO `admin_operation_log` VALUES ('528', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:35:39', '2018-04-26 14:35:39');
INSERT INTO `admin_operation_log` VALUES ('529', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:35:39', '2018-04-26 14:35:39');
INSERT INTO `admin_operation_log` VALUES ('530', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:35:52', '2018-04-26 14:35:52');
INSERT INTO `admin_operation_log` VALUES ('531', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:35:52', '2018-04-26 14:35:52');
INSERT INTO `admin_operation_log` VALUES ('532', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:35:58', '2018-04-26 14:35:58');
INSERT INTO `admin_operation_log` VALUES ('533', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:36:04', '2018-04-26 14:36:04');
INSERT INTO `admin_operation_log` VALUES ('534', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:36:04', '2018-04-26 14:36:04');
INSERT INTO `admin_operation_log` VALUES ('535', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:36:20', '2018-04-26 14:36:20');
INSERT INTO `admin_operation_log` VALUES ('536', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:36:20', '2018-04-26 14:36:20');
INSERT INTO `admin_operation_log` VALUES ('537', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:37:41', '2018-04-26 14:37:41');
INSERT INTO `admin_operation_log` VALUES ('538', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:37:43', '2018-04-26 14:37:43');
INSERT INTO `admin_operation_log` VALUES ('539', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:37:43', '2018-04-26 14:37:43');
INSERT INTO `admin_operation_log` VALUES ('540', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:37:57', '2018-04-26 14:37:57');
INSERT INTO `admin_operation_log` VALUES ('541', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:40:37', '2018-04-26 14:40:37');
INSERT INTO `admin_operation_log` VALUES ('542', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:40:39', '2018-04-26 14:40:39');
INSERT INTO `admin_operation_log` VALUES ('543', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:40:41', '2018-04-26 14:40:41');
INSERT INTO `admin_operation_log` VALUES ('544', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:40:41', '2018-04-26 14:40:41');
INSERT INTO `admin_operation_log` VALUES ('545', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:40:56', '2018-04-26 14:40:56');
INSERT INTO `admin_operation_log` VALUES ('546', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:41:43', '2018-04-26 14:41:43');
INSERT INTO `admin_operation_log` VALUES ('547', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:41:45', '2018-04-26 14:41:45');
INSERT INTO `admin_operation_log` VALUES ('548', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:41:47', '2018-04-26 14:41:47');
INSERT INTO `admin_operation_log` VALUES ('549', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:41:47', '2018-04-26 14:41:47');
INSERT INTO `admin_operation_log` VALUES ('550', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"3\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"3\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:41:59', '2018-04-26 14:41:59');
INSERT INTO `admin_operation_log` VALUES ('551', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:42:00', '2018-04-26 14:42:00');
INSERT INTO `admin_operation_log` VALUES ('552', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:45:42', '2018-04-26 14:45:42');
INSERT INTO `admin_operation_log` VALUES ('553', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:45:45', '2018-04-26 14:45:45');
INSERT INTO `admin_operation_log` VALUES ('554', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:45:45', '2018-04-26 14:45:45');
INSERT INTO `admin_operation_log` VALUES ('555', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"2\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"1\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:45:59', '2018-04-26 14:45:59');
INSERT INTO `admin_operation_log` VALUES ('556', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:46:20', '2018-04-26 14:46:20');
INSERT INTO `admin_operation_log` VALUES ('557', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:46:22', '2018-04-26 14:46:22');
INSERT INTO `admin_operation_log` VALUES ('558', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:46:25', '2018-04-26 14:46:25');
INSERT INTO `admin_operation_log` VALUES ('559', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:46:25', '2018-04-26 14:46:25');
INSERT INTO `admin_operation_log` VALUES ('560', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:46:39', '2018-04-26 14:46:39');
INSERT INTO `admin_operation_log` VALUES ('561', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:46:40', '2018-04-26 14:46:40');
INSERT INTO `admin_operation_log` VALUES ('562', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:47:27', '2018-04-26 14:47:27');
INSERT INTO `admin_operation_log` VALUES ('563', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:47:29', '2018-04-26 14:47:29');
INSERT INTO `admin_operation_log` VALUES ('564', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:47:29', '2018-04-26 14:47:29');
INSERT INTO `admin_operation_log` VALUES ('565', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:47:42', '2018-04-26 14:47:42');
INSERT INTO `admin_operation_log` VALUES ('566', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 14:49:17', '2018-04-26 14:49:17');
INSERT INTO `admin_operation_log` VALUES ('567', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 14:49:18', '2018-04-26 14:49:18');
INSERT INTO `admin_operation_log` VALUES ('568', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:49:21', '2018-04-26 14:49:21');
INSERT INTO `admin_operation_log` VALUES ('569', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 14:49:21', '2018-04-26 14:49:21');
INSERT INTO `admin_operation_log` VALUES ('570', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 14:49:35', '2018-04-26 14:49:35');
INSERT INTO `admin_operation_log` VALUES ('571', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 14:49:36', '2018-04-26 14:49:36');
INSERT INTO `admin_operation_log` VALUES ('572', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 14:50:18', '2018-04-26 14:50:18');
INSERT INTO `admin_operation_log` VALUES ('573', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 15:11:38', '2018-04-26 15:11:38');
INSERT INTO `admin_operation_log` VALUES ('574', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:11:38', '2018-04-26 15:11:38');
INSERT INTO `admin_operation_log` VALUES ('575', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:14:40', '2018-04-26 15:14:40');
INSERT INTO `admin_operation_log` VALUES ('576', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:14:43', '2018-04-26 15:14:43');
INSERT INTO `admin_operation_log` VALUES ('577', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:14:43', '2018-04-26 15:14:43');
INSERT INTO `admin_operation_log` VALUES ('578', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:14:57', '2018-04-26 15:14:57');
INSERT INTO `admin_operation_log` VALUES ('579', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:15:53', '2018-04-26 15:15:53');
INSERT INTO `admin_operation_log` VALUES ('580', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:15:55', '2018-04-26 15:15:55');
INSERT INTO `admin_operation_log` VALUES ('581', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:15:56', '2018-04-26 15:15:56');
INSERT INTO `admin_operation_log` VALUES ('582', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:16:25', '2018-04-26 15:16:25');
INSERT INTO `admin_operation_log` VALUES ('583', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:17:05', '2018-04-26 15:17:05');
INSERT INTO `admin_operation_log` VALUES ('584', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:17:07', '2018-04-26 15:17:07');
INSERT INTO `admin_operation_log` VALUES ('585', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:17:08', '2018-04-26 15:17:08');
INSERT INTO `admin_operation_log` VALUES ('586', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:17:08', '2018-04-26 15:17:08');
INSERT INTO `admin_operation_log` VALUES ('587', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"2\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:17:22', '2018-04-26 15:17:22');
INSERT INTO `admin_operation_log` VALUES ('588', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:17:50', '2018-04-26 15:17:50');
INSERT INTO `admin_operation_log` VALUES ('589', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:17:52', '2018-04-26 15:17:52');
INSERT INTO `admin_operation_log` VALUES ('590', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:17:55', '2018-04-26 15:17:55');
INSERT INTO `admin_operation_log` VALUES ('591', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:17:55', '2018-04-26 15:17:55');
INSERT INTO `admin_operation_log` VALUES ('592', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"3\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"6\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:18:13', '2018-04-26 15:18:13');
INSERT INTO `admin_operation_log` VALUES ('593', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:21:47', '2018-04-26 15:21:47');
INSERT INTO `admin_operation_log` VALUES ('594', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:21:49', '2018-04-26 15:21:49');
INSERT INTO `admin_operation_log` VALUES ('595', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:21:52', '2018-04-26 15:21:52');
INSERT INTO `admin_operation_log` VALUES ('596', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:21:52', '2018-04-26 15:21:52');
INSERT INTO `admin_operation_log` VALUES ('597', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"3\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"1\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:22:04', '2018-04-26 15:22:04');
INSERT INTO `admin_operation_log` VALUES ('598', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:25:52', '2018-04-26 15:25:52');
INSERT INTO `admin_operation_log` VALUES ('599', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:25:54', '2018-04-26 15:25:54');
INSERT INTO `admin_operation_log` VALUES ('600', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:25:56', '2018-04-26 15:25:56');
INSERT INTO `admin_operation_log` VALUES ('601', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:25:56', '2018-04-26 15:25:56');
INSERT INTO `admin_operation_log` VALUES ('602', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"2\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"2\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:26:08', '2018-04-26 15:26:08');
INSERT INTO `admin_operation_log` VALUES ('603', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:26:51', '2018-04-26 15:26:51');
INSERT INTO `admin_operation_log` VALUES ('604', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:26:53', '2018-04-26 15:26:53');
INSERT INTO `admin_operation_log` VALUES ('605', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:26:55', '2018-04-26 15:26:55');
INSERT INTO `admin_operation_log` VALUES ('606', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:26:56', '2018-04-26 15:26:56');
INSERT INTO `admin_operation_log` VALUES ('607', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"2\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"1\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:27:06', '2018-04-26 15:27:06');
INSERT INTO `admin_operation_log` VALUES ('608', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:32:03', '2018-04-26 15:32:03');
INSERT INTO `admin_operation_log` VALUES ('609', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:32:05', '2018-04-26 15:32:05');
INSERT INTO `admin_operation_log` VALUES ('610', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:32:10', '2018-04-26 15:32:10');
INSERT INTO `admin_operation_log` VALUES ('611', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:32:10', '2018-04-26 15:32:10');
INSERT INTO `admin_operation_log` VALUES ('612', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"4\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:32:22', '2018-04-26 15:32:22');
INSERT INTO `admin_operation_log` VALUES ('613', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:34:04', '2018-04-26 15:34:04');
INSERT INTO `admin_operation_log` VALUES ('614', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:34:06', '2018-04-26 15:34:06');
INSERT INTO `admin_operation_log` VALUES ('615', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 15:34:09', '2018-04-26 15:34:09');
INSERT INTO `admin_operation_log` VALUES ('616', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 15:34:09', '2018-04-26 15:34:09');
INSERT INTO `admin_operation_log` VALUES ('617', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"2\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:34:23', '2018-04-26 15:34:23');
INSERT INTO `admin_operation_log` VALUES ('618', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:37:58', '2018-04-26 15:37:58');
INSERT INTO `admin_operation_log` VALUES ('619', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:38:00', '2018-04-26 15:38:00');
INSERT INTO `admin_operation_log` VALUES ('620', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:38:02', '2018-04-26 15:38:02');
INSERT INTO `admin_operation_log` VALUES ('621', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:38:02', '2018-04-26 15:38:02');
INSERT INTO `admin_operation_log` VALUES ('622', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"4\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"5\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:38:15', '2018-04-26 15:38:15');
INSERT INTO `admin_operation_log` VALUES ('623', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:38:15', '2018-04-26 15:38:15');
INSERT INTO `admin_operation_log` VALUES ('624', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:40:09', '2018-04-26 15:40:09');
INSERT INTO `admin_operation_log` VALUES ('625', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:40:24', '2018-04-26 15:40:24');
INSERT INTO `admin_operation_log` VALUES ('626', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:40:27', '2018-04-26 15:40:27');
INSERT INTO `admin_operation_log` VALUES ('627', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:40:29', '2018-04-26 15:40:29');
INSERT INTO `admin_operation_log` VALUES ('628', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 15:40:29', '2018-04-26 15:40:29');
INSERT INTO `admin_operation_log` VALUES ('629', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 15:40:47', '2018-04-26 15:40:47');
INSERT INTO `admin_operation_log` VALUES ('630', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 15:40:47', '2018-04-26 15:40:47');
INSERT INTO `admin_operation_log` VALUES ('631', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 15:40:50', '2018-04-26 15:40:50');
INSERT INTO `admin_operation_log` VALUES ('632', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 15:45:19', '2018-04-26 15:45:19');
INSERT INTO `admin_operation_log` VALUES ('633', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 15:45:29', '2018-04-26 15:45:29');
INSERT INTO `admin_operation_log` VALUES ('634', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 15:47:40', '2018-04-26 15:47:40');
INSERT INTO `admin_operation_log` VALUES ('635', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:11:31', '2018-04-26 16:11:31');
INSERT INTO `admin_operation_log` VALUES ('636', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:11:47', '2018-04-26 16:11:47');
INSERT INTO `admin_operation_log` VALUES ('637', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:12:30', '2018-04-26 16:12:30');
INSERT INTO `admin_operation_log` VALUES ('638', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:13:09', '2018-04-26 16:13:09');
INSERT INTO `admin_operation_log` VALUES ('639', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:13:22', '2018-04-26 16:13:22');
INSERT INTO `admin_operation_log` VALUES ('640', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:16:20', '2018-04-26 16:16:20');
INSERT INTO `admin_operation_log` VALUES ('641', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:16:44', '2018-04-26 16:16:44');
INSERT INTO `admin_operation_log` VALUES ('642', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:17:19', '2018-04-26 16:17:19');
INSERT INTO `admin_operation_log` VALUES ('643', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:17:53', '2018-04-26 16:17:53');
INSERT INTO `admin_operation_log` VALUES ('644', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:19:56', '2018-04-26 16:19:56');
INSERT INTO `admin_operation_log` VALUES ('645', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:20:10', '2018-04-26 16:20:10');
INSERT INTO `admin_operation_log` VALUES ('646', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:21:13', '2018-04-26 16:21:13');
INSERT INTO `admin_operation_log` VALUES ('647', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:24:25', '2018-04-26 16:24:25');
INSERT INTO `admin_operation_log` VALUES ('648', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:24:48', '2018-04-26 16:24:48');
INSERT INTO `admin_operation_log` VALUES ('649', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:24:50', '2018-04-26 16:24:50');
INSERT INTO `admin_operation_log` VALUES ('650', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:25:14', '2018-04-26 16:25:14');
INSERT INTO `admin_operation_log` VALUES ('651', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:25:54', '2018-04-26 16:25:54');
INSERT INTO `admin_operation_log` VALUES ('652', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:28:42', '2018-04-26 16:28:42');
INSERT INTO `admin_operation_log` VALUES ('653', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:29:20', '2018-04-26 16:29:20');
INSERT INTO `admin_operation_log` VALUES ('654', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:30:15', '2018-04-26 16:30:15');
INSERT INTO `admin_operation_log` VALUES ('655', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:30:24', '2018-04-26 16:30:24');
INSERT INTO `admin_operation_log` VALUES ('656', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:53:50', '2018-04-26 16:53:50');
INSERT INTO `admin_operation_log` VALUES ('657', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:54:08', '2018-04-26 16:54:08');
INSERT INTO `admin_operation_log` VALUES ('658', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:55:04', '2018-04-26 16:55:04');
INSERT INTO `admin_operation_log` VALUES ('659', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-26 16:55:22', '2018-04-26 16:55:22');
INSERT INTO `admin_operation_log` VALUES ('660', '1', 'admin/project/questions/1', 'PUT', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a002\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb002\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\\/create\"}', '2018-04-26 16:55:46', '2018-04-26 16:55:46');
INSERT INTO `admin_operation_log` VALUES ('661', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 16:55:46', '2018-04-26 16:55:46');
INSERT INTO `admin_operation_log` VALUES ('662', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:05:34', '2018-04-26 17:05:34');
INSERT INTO `admin_operation_log` VALUES ('663', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:05:56', '2018-04-26 17:05:56');
INSERT INTO `admin_operation_log` VALUES ('664', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:05:58', '2018-04-26 17:05:58');
INSERT INTO `admin_operation_log` VALUES ('665', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:05:59', '2018-04-26 17:05:59');
INSERT INTO `admin_operation_log` VALUES ('666', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:06:16', '2018-04-26 17:06:16');
INSERT INTO `admin_operation_log` VALUES ('667', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:06:17', '2018-04-26 17:06:17');
INSERT INTO `admin_operation_log` VALUES ('668', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:07:20', '2018-04-26 17:07:20');
INSERT INTO `admin_operation_log` VALUES ('669', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:07:44', '2018-04-26 17:07:44');
INSERT INTO `admin_operation_log` VALUES ('670', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:07:46', '2018-04-26 17:07:46');
INSERT INTO `admin_operation_log` VALUES ('671', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:07:47', '2018-04-26 17:07:47');
INSERT INTO `admin_operation_log` VALUES ('672', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:08:00', '2018-04-26 17:08:00');
INSERT INTO `admin_operation_log` VALUES ('673', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:08:01', '2018-04-26 17:08:01');
INSERT INTO `admin_operation_log` VALUES ('674', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:09:02', '2018-04-26 17:09:02');
INSERT INTO `admin_operation_log` VALUES ('675', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:09:06', '2018-04-26 17:09:06');
INSERT INTO `admin_operation_log` VALUES ('676', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:09:06', '2018-04-26 17:09:06');
INSERT INTO `admin_operation_log` VALUES ('677', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:09:19', '2018-04-26 17:09:19');
INSERT INTO `admin_operation_log` VALUES ('678', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:09:19', '2018-04-26 17:09:19');
INSERT INTO `admin_operation_log` VALUES ('679', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:09:37', '2018-04-26 17:09:37');
INSERT INTO `admin_operation_log` VALUES ('680', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:09:37', '2018-04-26 17:09:37');
INSERT INTO `admin_operation_log` VALUES ('681', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:09:47', '2018-04-26 17:09:47');
INSERT INTO `admin_operation_log` VALUES ('682', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:09:48', '2018-04-26 17:09:48');
INSERT INTO `admin_operation_log` VALUES ('683', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:09:50', '2018-04-26 17:09:50');
INSERT INTO `admin_operation_log` VALUES ('684', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 17:09:50', '2018-04-26 17:09:50');
INSERT INTO `admin_operation_log` VALUES ('685', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:10:09', '2018-04-26 17:10:09');
INSERT INTO `admin_operation_log` VALUES ('686', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 17:10:09', '2018-04-26 17:10:09');
INSERT INTO `admin_operation_log` VALUES ('687', '1', 'admin/project/questions/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 17:10:21', '2018-04-26 17:10:21');
INSERT INTO `admin_operation_log` VALUES ('688', '1', 'admin/project/questions/3', 'PUT', '127.0.0.1', '{\"question_id\":\"3\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a1111\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a111\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb111\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 17:10:32', '2018-04-26 17:10:32');
INSERT INTO `admin_operation_log` VALUES ('689', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 17:10:32', '2018-04-26 17:10:32');
INSERT INTO `admin_operation_log` VALUES ('690', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 17:10:54', '2018-04-26 17:10:54');
INSERT INTO `admin_operation_log` VALUES ('691', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2018-04-26 17:10:57', '2018-04-26 17:10:57');
INSERT INTO `admin_operation_log` VALUES ('692', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2018-04-26 17:10:57', '2018-04-26 17:10:57');
INSERT INTO `admin_operation_log` VALUES ('693', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"1\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 17:11:11', '2018-04-26 17:11:11');
INSERT INTO `admin_operation_log` VALUES ('694', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:11:11', '2018-04-26 17:11:11');
INSERT INTO `admin_operation_log` VALUES ('695', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"1\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:11:24', '2018-04-26 17:11:24');
INSERT INTO `admin_operation_log` VALUES ('696', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:11:24', '2018-04-26 17:11:24');
INSERT INTO `admin_operation_log` VALUES ('697', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:11:26', '2018-04-26 17:11:26');
INSERT INTO `admin_operation_log` VALUES ('698', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:11:28', '2018-04-26 17:11:28');
INSERT INTO `admin_operation_log` VALUES ('699', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:11:28', '2018-04-26 17:11:28');
INSERT INTO `admin_operation_log` VALUES ('700', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:12:16', '2018-04-26 17:12:16');
INSERT INTO `admin_operation_log` VALUES ('701', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:12:18', '2018-04-26 17:12:18');
INSERT INTO `admin_operation_log` VALUES ('702', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:12:18', '2018-04-26 17:12:18');
INSERT INTO `admin_operation_log` VALUES ('703', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:13:17', '2018-04-26 17:13:17');
INSERT INTO `admin_operation_log` VALUES ('704', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:13:21', '2018-04-26 17:13:21');
INSERT INTO `admin_operation_log` VALUES ('705', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:13:22', '2018-04-26 17:13:22');
INSERT INTO `admin_operation_log` VALUES ('706', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:13:39', '2018-04-26 17:13:39');
INSERT INTO `admin_operation_log` VALUES ('707', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:13:39', '2018-04-26 17:13:39');
INSERT INTO `admin_operation_log` VALUES ('708', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:13:56', '2018-04-26 17:13:56');
INSERT INTO `admin_operation_log` VALUES ('709', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:14:07', '2018-04-26 17:14:07');
INSERT INTO `admin_operation_log` VALUES ('710', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:14:07', '2018-04-26 17:14:07');
INSERT INTO `admin_operation_log` VALUES ('711', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:14:11', '2018-04-26 17:14:11');
INSERT INTO `admin_operation_log` VALUES ('712', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:14:11', '2018-04-26 17:14:11');
INSERT INTO `admin_operation_log` VALUES ('713', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:14:12', '2018-04-26 17:14:12');
INSERT INTO `admin_operation_log` VALUES ('714', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:14:13', '2018-04-26 17:14:13');
INSERT INTO `admin_operation_log` VALUES ('715', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:45:27', '2018-04-26 17:45:27');
INSERT INTO `admin_operation_log` VALUES ('716', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:45:31', '2018-04-26 17:45:31');
INSERT INTO `admin_operation_log` VALUES ('717', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:45:31', '2018-04-26 17:45:31');
INSERT INTO `admin_operation_log` VALUES ('718', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:45:32', '2018-04-26 17:45:32');
INSERT INTO `admin_operation_log` VALUES ('719', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:45:33', '2018-04-26 17:45:33');
INSERT INTO `admin_operation_log` VALUES ('720', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:45:54', '2018-04-26 17:45:54');
INSERT INTO `admin_operation_log` VALUES ('721', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:45:56', '2018-04-26 17:45:56');
INSERT INTO `admin_operation_log` VALUES ('722', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:45:56', '2018-04-26 17:45:56');
INSERT INTO `admin_operation_log` VALUES ('723', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:45:59', '2018-04-26 17:45:59');
INSERT INTO `admin_operation_log` VALUES ('724', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:45:59', '2018-04-26 17:45:59');
INSERT INTO `admin_operation_log` VALUES ('725', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:46:00', '2018-04-26 17:46:00');
INSERT INTO `admin_operation_log` VALUES ('726', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:46:00', '2018-04-26 17:46:00');
INSERT INTO `admin_operation_log` VALUES ('727', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:47:43', '2018-04-26 17:47:43');
INSERT INTO `admin_operation_log` VALUES ('728', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":null,\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:47:47', '2018-04-26 17:47:47');
INSERT INTO `admin_operation_log` VALUES ('729', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:47:47', '2018-04-26 17:47:47');
INSERT INTO `admin_operation_log` VALUES ('730', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:47:51', '2018-04-26 17:47:51');
INSERT INTO `admin_operation_log` VALUES ('731', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:47:51', '2018-04-26 17:47:51');
INSERT INTO `admin_operation_log` VALUES ('732', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:47:52', '2018-04-26 17:47:52');
INSERT INTO `admin_operation_log` VALUES ('733', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:47:52', '2018-04-26 17:47:52');
INSERT INTO `admin_operation_log` VALUES ('734', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:51:20', '2018-04-26 17:51:20');
INSERT INTO `admin_operation_log` VALUES ('735', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:51:25', '2018-04-26 17:51:25');
INSERT INTO `admin_operation_log` VALUES ('736', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:51:25', '2018-04-26 17:51:25');
INSERT INTO `admin_operation_log` VALUES ('737', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:51:26', '2018-04-26 17:51:26');
INSERT INTO `admin_operation_log` VALUES ('738', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:51:26', '2018-04-26 17:51:26');
INSERT INTO `admin_operation_log` VALUES ('739', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:52:30', '2018-04-26 17:52:30');
INSERT INTO `admin_operation_log` VALUES ('740', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:52:34', '2018-04-26 17:52:34');
INSERT INTO `admin_operation_log` VALUES ('741', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:52:34', '2018-04-26 17:52:34');
INSERT INTO `admin_operation_log` VALUES ('742', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:52:35', '2018-04-26 17:52:35');
INSERT INTO `admin_operation_log` VALUES ('743', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 17:52:35', '2018-04-26 17:52:35');
INSERT INTO `admin_operation_log` VALUES ('744', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 17:54:59', '2018-04-26 17:54:59');
INSERT INTO `admin_operation_log` VALUES ('745', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 17:55:39', '2018-04-26 17:55:39');
INSERT INTO `admin_operation_log` VALUES ('746', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 17:55:41', '2018-04-26 17:55:41');
INSERT INTO `admin_operation_log` VALUES ('747', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:55:43', '2018-04-26 17:55:43');
INSERT INTO `admin_operation_log` VALUES ('748', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:55:43', '2018-04-26 17:55:43');
INSERT INTO `admin_operation_log` VALUES ('749', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 17:55:44', '2018-04-26 17:55:44');
INSERT INTO `admin_operation_log` VALUES ('750', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 17:55:44', '2018-04-26 17:55:44');
INSERT INTO `admin_operation_log` VALUES ('751', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 17:56:10', '2018-04-26 17:56:10');
INSERT INTO `admin_operation_log` VALUES ('752', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:56:13', '2018-04-26 17:56:13');
INSERT INTO `admin_operation_log` VALUES ('753', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 17:56:13', '2018-04-26 17:56:13');
INSERT INTO `admin_operation_log` VALUES ('754', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 17:56:14', '2018-04-26 17:56:14');
INSERT INTO `admin_operation_log` VALUES ('755', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 17:57:00', '2018-04-26 17:57:00');
INSERT INTO `admin_operation_log` VALUES ('756', '1', 'admin/project/interests', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:05:23', '2018-04-26 18:05:23');
INSERT INTO `admin_operation_log` VALUES ('757', '1', 'admin/project/abilities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:05:25', '2018-04-26 18:05:25');
INSERT INTO `admin_operation_log` VALUES ('758', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:05:27', '2018-04-26 18:05:27');
INSERT INTO `admin_operation_log` VALUES ('759', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/abilities\"}', '2018-04-26 18:05:29', '2018-04-26 18:05:29');
INSERT INTO `admin_operation_log` VALUES ('760', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:05:29', '2018-04-26 18:05:29');
INSERT INTO `admin_operation_log` VALUES ('761', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:05:35', '2018-04-26 18:05:35');
INSERT INTO `admin_operation_log` VALUES ('762', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:05:35', '2018-04-26 18:05:35');
INSERT INTO `admin_operation_log` VALUES ('763', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:15:33', '2018-04-26 18:15:33');
INSERT INTO `admin_operation_log` VALUES ('764', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":null,\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:15:35', '2018-04-26 18:15:35');
INSERT INTO `admin_operation_log` VALUES ('765', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:15:35', '2018-04-26 18:15:35');
INSERT INTO `admin_operation_log` VALUES ('766', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:15:41', '2018-04-26 18:15:41');
INSERT INTO `admin_operation_log` VALUES ('767', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:15:41', '2018-04-26 18:15:41');
INSERT INTO `admin_operation_log` VALUES ('768', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:21:22', '2018-04-26 18:21:22');
INSERT INTO `admin_operation_log` VALUES ('769', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:21:22', '2018-04-26 18:21:22');
INSERT INTO `admin_operation_log` VALUES ('770', '1', 'admin/project/abilities', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:21:55', '2018-04-26 18:21:55');
INSERT INTO `admin_operation_log` VALUES ('771', '1', 'admin/project/abilities/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:21:55', '2018-04-26 18:21:55');
INSERT INTO `admin_operation_log` VALUES ('772', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:22:12', '2018-04-26 18:22:12');
INSERT INTO `admin_operation_log` VALUES ('773', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:22:13', '2018-04-26 18:22:13');
INSERT INTO `admin_operation_log` VALUES ('774', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:22:14', '2018-04-26 18:22:14');
INSERT INTO `admin_operation_log` VALUES ('775', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:22:16', '2018-04-26 18:22:16');
INSERT INTO `admin_operation_log` VALUES ('776', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:22:16', '2018-04-26 18:22:16');
INSERT INTO `admin_operation_log` VALUES ('777', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:26:47', '2018-04-26 18:26:47');
INSERT INTO `admin_operation_log` VALUES ('778', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:26:57', '2018-04-26 18:26:57');
INSERT INTO `admin_operation_log` VALUES ('779', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:27:01', '2018-04-26 18:27:01');
INSERT INTO `admin_operation_log` VALUES ('780', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:27:01', '2018-04-26 18:27:01');
INSERT INTO `admin_operation_log` VALUES ('781', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 18:27:02', '2018-04-26 18:27:02');
INSERT INTO `admin_operation_log` VALUES ('782', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:27:02', '2018-04-26 18:27:02');
INSERT INTO `admin_operation_log` VALUES ('783', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:28:05', '2018-04-26 18:28:05');
INSERT INTO `admin_operation_log` VALUES ('784', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:28:13', '2018-04-26 18:28:13');
INSERT INTO `admin_operation_log` VALUES ('785', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:29:38', '2018-04-26 18:29:38');
INSERT INTO `admin_operation_log` VALUES ('786', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:35:17', '2018-04-26 18:35:17');
INSERT INTO `admin_operation_log` VALUES ('787', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:37:13', '2018-04-26 18:37:13');
INSERT INTO `admin_operation_log` VALUES ('788', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:37:34', '2018-04-26 18:37:34');
INSERT INTO `admin_operation_log` VALUES ('789', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:37:41', '2018-04-26 18:37:41');
INSERT INTO `admin_operation_log` VALUES ('790', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:37:41', '2018-04-26 18:37:41');
INSERT INTO `admin_operation_log` VALUES ('791', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:37:44', '2018-04-26 18:37:44');
INSERT INTO `admin_operation_log` VALUES ('792', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:37:44', '2018-04-26 18:37:44');
INSERT INTO `admin_operation_log` VALUES ('793', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:38:11', '2018-04-26 18:38:11');
INSERT INTO `admin_operation_log` VALUES ('794', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:38:22', '2018-04-26 18:38:22');
INSERT INTO `admin_operation_log` VALUES ('795', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:38:24', '2018-04-26 18:38:24');
INSERT INTO `admin_operation_log` VALUES ('796', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:38:27', '2018-04-26 18:38:27');
INSERT INTO `admin_operation_log` VALUES ('797', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:38:27', '2018-04-26 18:38:27');
INSERT INTO `admin_operation_log` VALUES ('798', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 18:38:28', '2018-04-26 18:38:28');
INSERT INTO `admin_operation_log` VALUES ('799', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:38:54', '2018-04-26 18:38:54');
INSERT INTO `admin_operation_log` VALUES ('800', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:38:56', '2018-04-26 18:38:56');
INSERT INTO `admin_operation_log` VALUES ('801', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:38:59', '2018-04-26 18:38:59');
INSERT INTO `admin_operation_log` VALUES ('802', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 18:38:59', '2018-04-26 18:38:59');
INSERT INTO `admin_operation_log` VALUES ('803', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 18:39:00', '2018-04-26 18:39:00');
INSERT INTO `admin_operation_log` VALUES ('804', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:39:00', '2018-04-26 18:39:00');
INSERT INTO `admin_operation_log` VALUES ('805', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:39:25', '2018-04-26 18:39:25');
INSERT INTO `admin_operation_log` VALUES ('806', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 18:39:28', '2018-04-26 18:39:28');
INSERT INTO `admin_operation_log` VALUES ('807', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 18:39:28', '2018-04-26 18:39:28');
INSERT INTO `admin_operation_log` VALUES ('808', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:39:31', '2018-04-26 18:39:31');
INSERT INTO `admin_operation_log` VALUES ('809', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:39:32', '2018-04-26 18:39:32');
INSERT INTO `admin_operation_log` VALUES ('810', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:39:54', '2018-04-26 18:39:54');
INSERT INTO `admin_operation_log` VALUES ('811', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 18:39:57', '2018-04-26 18:39:57');
INSERT INTO `admin_operation_log` VALUES ('812', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 18:39:57', '2018-04-26 18:39:57');
INSERT INTO `admin_operation_log` VALUES ('813', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:39:59', '2018-04-26 18:39:59');
INSERT INTO `admin_operation_log` VALUES ('814', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:39:59', '2018-04-26 18:39:59');
INSERT INTO `admin_operation_log` VALUES ('815', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:40:49', '2018-04-26 18:40:49');
INSERT INTO `admin_operation_log` VALUES ('816', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:40:49', '2018-04-26 18:40:49');
INSERT INTO `admin_operation_log` VALUES ('817', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":null,\"sub_title_one\":null,\"type_one\":null,\"sub_title_two\":null,\"type_two\":null,\"sort\":\"1\",\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 18:41:08', '2018-04-26 18:41:08');
INSERT INTO `admin_operation_log` VALUES ('818', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:41:08', '2018-04-26 18:41:08');
INSERT INTO `admin_operation_log` VALUES ('819', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 18:49:14', '2018-04-26 18:49:14');
INSERT INTO `admin_operation_log` VALUES ('820', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:49:20', '2018-04-26 18:49:20');
INSERT INTO `admin_operation_log` VALUES ('821', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:49:24', '2018-04-26 18:49:24');
INSERT INTO `admin_operation_log` VALUES ('822', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:49:27', '2018-04-26 18:49:27');
INSERT INTO `admin_operation_log` VALUES ('823', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:49:27', '2018-04-26 18:49:27');
INSERT INTO `admin_operation_log` VALUES ('824', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:49:57', '2018-04-26 18:49:57');
INSERT INTO `admin_operation_log` VALUES ('825', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:54:15', '2018-04-26 18:54:15');
INSERT INTO `admin_operation_log` VALUES ('826', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 18:54:17', '2018-04-26 18:54:17');
INSERT INTO `admin_operation_log` VALUES ('827', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 18:54:17', '2018-04-26 18:54:17');
INSERT INTO `admin_operation_log` VALUES ('828', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:03:25', '2018-04-26 19:03:25');
INSERT INTO `admin_operation_log` VALUES ('829', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:03:27', '2018-04-26 19:03:27');
INSERT INTO `admin_operation_log` VALUES ('830', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:03:27', '2018-04-26 19:03:27');
INSERT INTO `admin_operation_log` VALUES ('831', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:05:10', '2018-04-26 19:05:10');
INSERT INTO `admin_operation_log` VALUES ('832', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:06:28', '2018-04-26 19:06:28');
INSERT INTO `admin_operation_log` VALUES ('833', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:07:49', '2018-04-26 19:07:49');
INSERT INTO `admin_operation_log` VALUES ('834', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:10:43', '2018-04-26 19:10:43');
INSERT INTO `admin_operation_log` VALUES ('835', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:11:56', '2018-04-26 19:11:56');
INSERT INTO `admin_operation_log` VALUES ('836', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:12:33', '2018-04-26 19:12:33');
INSERT INTO `admin_operation_log` VALUES ('837', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:12:44', '2018-04-26 19:12:44');
INSERT INTO `admin_operation_log` VALUES ('838', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:13:09', '2018-04-26 19:13:09');
INSERT INTO `admin_operation_log` VALUES ('839', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:16:54', '2018-04-26 19:16:54');
INSERT INTO `admin_operation_log` VALUES ('840', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:16:58', '2018-04-26 19:16:58');
INSERT INTO `admin_operation_log` VALUES ('841', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:16:58', '2018-04-26 19:16:58');
INSERT INTO `admin_operation_log` VALUES ('842', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:20:02', '2018-04-26 19:20:02');
INSERT INTO `admin_operation_log` VALUES ('843', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:20:06', '2018-04-26 19:20:06');
INSERT INTO `admin_operation_log` VALUES ('844', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:20:06', '2018-04-26 19:20:06');
INSERT INTO `admin_operation_log` VALUES ('845', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 19:21:19', '2018-04-26 19:21:19');
INSERT INTO `admin_operation_log` VALUES ('846', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:21:21', '2018-04-26 19:21:21');
INSERT INTO `admin_operation_log` VALUES ('847', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 19:24:58', '2018-04-26 19:24:58');
INSERT INTO `admin_operation_log` VALUES ('848', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 19:25:12', '2018-04-26 19:25:12');
INSERT INTO `admin_operation_log` VALUES ('849', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:25:17', '2018-04-26 19:25:17');
INSERT INTO `admin_operation_log` VALUES ('850', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 19:25:20', '2018-04-26 19:25:20');
INSERT INTO `admin_operation_log` VALUES ('851', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 19:59:49', '2018-04-26 19:59:49');
INSERT INTO `admin_operation_log` VALUES ('852', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 19:59:56', '2018-04-26 19:59:56');
INSERT INTO `admin_operation_log` VALUES ('853', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 19:59:56', '2018-04-26 19:59:56');
INSERT INTO `admin_operation_log` VALUES ('854', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"2\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 20:00:16', '2018-04-26 20:00:16');
INSERT INTO `admin_operation_log` VALUES ('855', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 20:03:06', '2018-04-26 20:03:06');
INSERT INTO `admin_operation_log` VALUES ('856', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 20:03:10', '2018-04-26 20:03:10');
INSERT INTO `admin_operation_log` VALUES ('857', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 20:03:14', '2018-04-26 20:03:14');
INSERT INTO `admin_operation_log` VALUES ('858', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-26 20:03:14', '2018-04-26 20:03:14');
INSERT INTO `admin_operation_log` VALUES ('859', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"2\",\"name\":null,\"sub_title_one\":null,\"type_one\":\"0\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 20:03:16', '2018-04-26 20:03:16');
INSERT INTO `admin_operation_log` VALUES ('860', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 20:03:16', '2018-04-26 20:03:16');
INSERT INTO `admin_operation_log` VALUES ('861', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-26 20:11:31', '2018-04-26 20:11:31');
INSERT INTO `admin_operation_log` VALUES ('862', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:11:33', '2018-04-26 20:11:33');
INSERT INTO `admin_operation_log` VALUES ('863', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:11:33', '2018-04-26 20:11:33');
INSERT INTO `admin_operation_log` VALUES ('864', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"2\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 20:11:45', '2018-04-26 20:11:45');
INSERT INTO `admin_operation_log` VALUES ('865', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 20:11:46', '2018-04-26 20:11:46');
INSERT INTO `admin_operation_log` VALUES ('866', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 20:13:15', '2018-04-26 20:13:15');
INSERT INTO `admin_operation_log` VALUES ('867', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:13:20', '2018-04-26 20:13:20');
INSERT INTO `admin_operation_log` VALUES ('868', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:13:20', '2018-04-26 20:13:20');
INSERT INTO `admin_operation_log` VALUES ('869', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"3\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-26 20:13:44', '2018-04-26 20:13:44');
INSERT INTO `admin_operation_log` VALUES ('870', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 20:13:44', '2018-04-26 20:13:44');
INSERT INTO `admin_operation_log` VALUES ('871', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-26 20:14:40', '2018-04-26 20:14:40');
INSERT INTO `admin_operation_log` VALUES ('872', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:15:58', '2018-04-26 20:15:58');
INSERT INTO `admin_operation_log` VALUES ('873', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-26 20:15:58', '2018-04-26 20:15:58');
INSERT INTO `admin_operation_log` VALUES ('874', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"3\",\"sort\":null,\"status\":\"1\",\"_token\":\"pGjQNCYDR2ZIVwJ3mNu7C9akX1glv5WoOs5IAlTg\"}', '2018-04-26 20:16:12', '2018-04-26 20:16:12');
INSERT INTO `admin_operation_log` VALUES ('875', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-26 20:16:12', '2018-04-26 20:16:12');
INSERT INTO `admin_operation_log` VALUES ('876', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 08:52:59', '2018-04-27 08:52:59');
INSERT INTO `admin_operation_log` VALUES ('877', '1', 'admin/project/questions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:57:57', '2018-04-27 08:57:57');
INSERT INTO `admin_operation_log` VALUES ('878', '1', 'admin/project/questions/7', 'PUT', '127.0.0.1', '{\"question_id\":\"7\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"3\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-27 08:58:16', '2018-04-27 08:58:16');
INSERT INTO `admin_operation_log` VALUES ('879', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 08:58:16', '2018-04-27 08:58:16');
INSERT INTO `admin_operation_log` VALUES ('880', '1', 'admin/project/questions/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 08:58:19', '2018-04-27 08:58:19');
INSERT INTO `admin_operation_log` VALUES ('881', '1', 'admin/project/questions/7/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 09:11:17', '2018-04-27 09:11:17');
INSERT INTO `admin_operation_log` VALUES ('882', '1', 'admin/project/questions/7/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 09:13:38', '2018-04-27 09:13:38');
INSERT INTO `admin_operation_log` VALUES ('883', '1', 'admin/project/questions/7/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 09:13:59', '2018-04-27 09:13:59');
INSERT INTO `admin_operation_log` VALUES ('884', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:16:37', '2018-04-27 09:16:37');
INSERT INTO `admin_operation_log` VALUES ('885', '1', 'admin/project/questions/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\"}', '2018-04-27 09:16:44', '2018-04-27 09:16:44');
INSERT INTO `admin_operation_log` VALUES ('886', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:16:44', '2018-04-27 09:16:44');
INSERT INTO `admin_operation_log` VALUES ('887', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:23:22', '2018-04-27 09:23:22');
INSERT INTO `admin_operation_log` VALUES ('888', '1', 'admin/project/questions/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\"}', '2018-04-27 09:23:28', '2018-04-27 09:23:28');
INSERT INTO `admin_operation_log` VALUES ('889', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:23:28', '2018-04-27 09:23:28');
INSERT INTO `admin_operation_log` VALUES ('890', '1', 'admin/project/questions/1,2,4,5,6', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\"}', '2018-04-27 09:29:09', '2018-04-27 09:29:09');
INSERT INTO `admin_operation_log` VALUES ('891', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:29:09', '2018-04-27 09:29:09');
INSERT INTO `admin_operation_log` VALUES ('892', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:30:43', '2018-04-27 09:30:43');
INSERT INTO `admin_operation_log` VALUES ('893', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-27 09:30:47', '2018-04-27 09:30:47');
INSERT INTO `admin_operation_log` VALUES ('894', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"3\"}', '2018-04-27 09:30:47', '2018-04-27 09:30:47');
INSERT INTO `admin_operation_log` VALUES ('895', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"3\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"7\",\"sub_title_two\":\"B \\u8bf4\\u53bb\\u5c31\\u53bb\",\"type_two\":\"8\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-27 09:31:03', '2018-04-27 09:31:03');
INSERT INTO `admin_operation_log` VALUES ('896', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:31:03', '2018-04-27 09:31:03');
INSERT INTO `admin_operation_log` VALUES ('897', '1', 'admin/project/questions/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\"}', '2018-04-27 09:31:10', '2018-04-27 09:31:10');
INSERT INTO `admin_operation_log` VALUES ('898', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:31:10', '2018-04-27 09:31:10');
INSERT INTO `admin_operation_log` VALUES ('899', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:33:08', '2018-04-27 09:33:08');
INSERT INTO `admin_operation_log` VALUES ('900', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-27 09:33:11', '2018-04-27 09:33:11');
INSERT INTO `admin_operation_log` VALUES ('901', '1', 'admin/project/types', 'GET', '127.0.0.1', '{\"q\":\"2\"}', '2018-04-27 09:33:11', '2018-04-27 09:33:11');
INSERT INTO `admin_operation_log` VALUES ('902', '1', 'admin/project/questions', 'POST', '127.0.0.1', '{\"question_id\":\"0\",\"category_id\":\"2\",\"name\":\"\\u5f53\\u4f60\\u8981\\u5916\\u51fa\\u4e00\\u6574\\u5929\\uff0c\\u4f60\\u4f1a\",\"sub_title_one\":\"A \\u8ba1\\u5212\\u4f60\\u8981\\u505a\\u4ec0\\u4e48\\u548c\\u5728\\u4ec0\\u4e48\\u65f6\\u5019\\u505a\",\"type_one\":\"1\",\"sub_title_two\":null,\"type_two\":\"0\",\"sort\":\"1\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/questions\"}', '2018-04-27 09:33:26', '2018-04-27 09:33:26');
INSERT INTO `admin_operation_log` VALUES ('903', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:33:26', '2018-04-27 09:33:26');
INSERT INTO `admin_operation_log` VALUES ('904', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:37:59', '2018-04-27 09:37:59');
INSERT INTO `admin_operation_log` VALUES ('905', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:42:57', '2018-04-27 09:42:57');
INSERT INTO `admin_operation_log` VALUES ('906', '1', 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:43:13', '2018-04-27 09:43:13');
INSERT INTO `admin_operation_log` VALUES ('907', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:55:17', '2018-04-27 09:55:17');
INSERT INTO `admin_operation_log` VALUES ('908', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:55:19', '2018-04-27 09:55:19');
INSERT INTO `admin_operation_log` VALUES ('909', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:55:19', '2018-04-27 09:55:19');
INSERT INTO `admin_operation_log` VALUES ('910', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 09:56:25', '2018-04-27 09:56:25');
INSERT INTO `admin_operation_log` VALUES ('911', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 09:56:25', '2018-04-27 09:56:25');
INSERT INTO `admin_operation_log` VALUES ('912', '1', 'admin/project/questions', 'GET', '127.0.0.1', '[]', '2018-04-27 10:03:51', '2018-04-27 10:03:51');
INSERT INTO `admin_operation_log` VALUES ('913', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 10:03:53', '2018-04-27 10:03:53');
INSERT INTO `admin_operation_log` VALUES ('914', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:04:28', '2018-04-27 10:04:28');
INSERT INTO `admin_operation_log` VALUES ('915', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:05:24', '2018-04-27 10:05:24');
INSERT INTO `admin_operation_log` VALUES ('916', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:20:45', '2018-04-27 10:20:45');
INSERT INTO `admin_operation_log` VALUES ('917', '1', 'admin/api-tester', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 10:20:55', '2018-04-27 10:20:55');
INSERT INTO `admin_operation_log` VALUES ('918', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-04-27 10:21:28', '2018-04-27 10:21:28');
INSERT INTO `admin_operation_log` VALUES ('919', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"user\":null}', '2018-04-27 10:23:05', '2018-04-27 10:23:05');
INSERT INTO `admin_operation_log` VALUES ('920', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"user\":null}', '2018-04-27 10:23:25', '2018-04-27 10:23:25');
INSERT INTO `admin_operation_log` VALUES ('921', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-04-27 10:23:33', '2018-04-27 10:23:33');
INSERT INTO `admin_operation_log` VALUES ('922', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"user\":null}', '2018-04-27 10:23:57', '2018-04-27 10:23:57');
INSERT INTO `admin_operation_log` VALUES ('923', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 10:32:25', '2018-04-27 10:32:25');
INSERT INTO `admin_operation_log` VALUES ('924', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 10:32:27', '2018-04-27 10:32:27');
INSERT INTO `admin_operation_log` VALUES ('925', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:47:01', '2018-04-27 10:47:01');
INSERT INTO `admin_operation_log` VALUES ('926', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:47:59', '2018-04-27 10:47:59');
INSERT INTO `admin_operation_log` VALUES ('927', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:48:31', '2018-04-27 10:48:31');
INSERT INTO `admin_operation_log` VALUES ('928', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:51:02', '2018-04-27 10:51:02');
INSERT INTO `admin_operation_log` VALUES ('929', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:52:33', '2018-04-27 10:52:33');
INSERT INTO `admin_operation_log` VALUES ('930', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:53:25', '2018-04-27 10:53:25');
INSERT INTO `admin_operation_log` VALUES ('931', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:53:38', '2018-04-27 10:53:38');
INSERT INTO `admin_operation_log` VALUES ('932', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:54:09', '2018-04-27 10:54:09');
INSERT INTO `admin_operation_log` VALUES ('933', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 10:54:23', '2018-04-27 10:54:23');
INSERT INTO `admin_operation_log` VALUES ('934', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:07:04', '2018-04-27 11:07:04');
INSERT INTO `admin_operation_log` VALUES ('935', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:14:15', '2018-04-27 11:14:15');
INSERT INTO `admin_operation_log` VALUES ('936', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:16:02', '2018-04-27 11:16:02');
INSERT INTO `admin_operation_log` VALUES ('937', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:17:44', '2018-04-27 11:17:44');
INSERT INTO `admin_operation_log` VALUES ('938', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:18:59', '2018-04-27 11:18:59');
INSERT INTO `admin_operation_log` VALUES ('939', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:19:26', '2018-04-27 11:19:26');
INSERT INTO `admin_operation_log` VALUES ('940', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:19:26', '2018-04-27 11:19:26');
INSERT INTO `admin_operation_log` VALUES ('941', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:19:26', '2018-04-27 11:19:26');
INSERT INTO `admin_operation_log` VALUES ('942', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:20:09', '2018-04-27 11:20:09');
INSERT INTO `admin_operation_log` VALUES ('943', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:21:56', '2018-04-27 11:21:56');
INSERT INTO `admin_operation_log` VALUES ('944', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 11:22:13', '2018-04-27 11:22:13');
INSERT INTO `admin_operation_log` VALUES ('945', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 11:30:42', '2018-04-27 11:30:42');
INSERT INTO `admin_operation_log` VALUES ('946', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 11:30:45', '2018-04-27 11:30:45');
INSERT INTO `admin_operation_log` VALUES ('947', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 11:59:34', '2018-04-27 11:59:34');
INSERT INTO `admin_operation_log` VALUES ('948', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 12:00:24', '2018-04-27 12:00:24');
INSERT INTO `admin_operation_log` VALUES ('949', '1', 'admin/project/categories/1', 'PUT', '127.0.0.1', '{\"subject_id\":\"1\",\"name\":\"A\\u7c7b\",\"remark\":\"\\u7b97\\u6cd5\\uff1a\\r\\n\\u5f97\\u5206\\u4e3a\\u5bf9\\u5e94\\u7684\\u7c7b\\u578b\\u8ba1\\u8d39\\uff0c\\u5f97\\u5206\\u4e3a1\\u7684\\u9879\\uff0c\\u9009A\\u5bf9\\u5e94\\u7684\\u7c7b\\u578b\\u52a0\\u4e00\\u5206\\uff0c\\u9009\\u62e9B\\u5219\\u4e0d\\u52a0\\u5206\\uff1b\\r\\n\\u5f97\\u5206\\u4e3a-1\\u7684\\u9879\\uff0c\\u9009B\\u65f6\\u52a0\\u4e00\\u5206\\uff0c\\u9009\\u62e9A\\u5219\\u4e0d\\u52a0\\u5206\\uff0c\\u6bcf\\u4e2a\\u7c7b\\u578b\\u6ee1\\u5206\\u90fd\\u662f\\u5341\\u5206\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\"}', '2018-04-27 12:02:48', '2018-04-27 12:02:48');
INSERT INTO `admin_operation_log` VALUES ('950', '1', 'admin/project/categories', 'GET', '127.0.0.1', '[]', '2018-04-27 12:02:48', '2018-04-27 12:02:48');
INSERT INTO `admin_operation_log` VALUES ('951', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:02:50', '2018-04-27 12:02:50');
INSERT INTO `admin_operation_log` VALUES ('952', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:02:56', '2018-04-27 12:02:56');
INSERT INTO `admin_operation_log` VALUES ('953', '1', 'admin/project/categories/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:02:58', '2018-04-27 12:02:58');
INSERT INTO `admin_operation_log` VALUES ('954', '1', 'admin/project/categories/2', 'PUT', '127.0.0.1', '{\"subject_id\":\"1\",\"name\":\"B\\u7c7b\",\"remark\":\"\\u7b97\\u6cd5\\uff1a\\r\\n\\u9009\\u4e2d\\u7acb\\u4e3a\\u53cc\\u65b9\\u4e0d\\u52a0\\u5206\\uff0c\\u5982\\u9009\\u5de6\\u8fb9\\u201c\\u4e00\\u822c\\u201d\\u9009\\u9879\\uff0c\\u7ed9\\u5de6\\u8fb9\\u52a0\\u4e00\\u5206\\uff0c\\u53f3\\u8fb9\\u4e0d\\u52a0\\u5206\\uff1b\\r\\n\\u5982\\u9009\\u5de6\\u8fb9\\u201c\\u975e\\u5e38\\u8d34\\u5207\\u63cf\\u8ff0\\u6211\\u201d\\u9009\\u9879\\uff0c\\u7ed9\\u5de6\\u8fb9\\u52a0\\u4e24\\u5206\\uff0c\\u53f3\\u8fb9\\u4e0d\\u5f97\\u5206\\u3002\\u53cd\\u4e4b\\u4e5f\\u5982\\u6b64\\u3002\\u9009\\u4e2d\\u95f4\\u5747\\u4e0d\\u5f97\\u5206\\r\\n\\u6700\\u540e\\uff0c\\u6bcf\\u4e2a\\u4e3b\\u9898\\u624d\\u5e72\\u7684\\u81ea\\u7136\\u5f97\\u5206\\u9664\\u4ee5\\u8be5\\u4e3b\\u9898\\u624d\\u5e72\\u7684\\u603b\\u5206\\u5f97\\u51fa\\u5360\\u6bd4\\u767e\\u5206\\u6570\\u4e58\\u4ee5100\\u5373\\u662f\\u6700\\u540e\\u7684\\u5f97\\u5206\\u3002\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/categories\"}', '2018-04-27 12:03:52', '2018-04-27 12:03:52');
INSERT INTO `admin_operation_log` VALUES ('955', '1', 'admin/project/categories', 'GET', '127.0.0.1', '[]', '2018-04-27 12:03:52', '2018-04-27 12:03:52');
INSERT INTO `admin_operation_log` VALUES ('956', '1', 'admin/project/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:03:55', '2018-04-27 12:03:55');
INSERT INTO `admin_operation_log` VALUES ('957', '1', 'admin/project/categories/3', 'PUT', '127.0.0.1', '{\"subject_id\":\"1\",\"name\":\"C\\u7c7b\",\"remark\":\"\\u7b97\\u6cd5\\u5982\\u4e0b\\uff1a\\r\\n\\u76f8\\u5e94\\u9009\\u9879\\u5bf9\\u5e94\\u76f8\\u5e94\\u7684\\u5b57\\u6bcd\\uff0c\\u6700\\u540e\\u6240\\u6709\\u5b57\\u6bcd\\u7684\\u6570\\u91cf\\u76f8\\u52a0\\uff0c\\u4e24\\u4e24\\u76f8\\u5bf9\\u53d6\\u9ad8\\u5206\\u7684\\u5b57\\u6bcd\\u3002\\r\\nE\\u548cI\\r\\nN\\u548cS\\r\\nF\\u548cT\\r\\nJ\\u548cP\\r\\n\\u5982\\u5bf9\\u5e94\\u5b57\\u6bcd\\u5206\\u503c\\u76f8\\u540c\\uff0c\\u5219\\u6309\\u4ee5\\u4e0b\\u89c4\\u5219\\uff1a\\r\\nE--I\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u601d\\u7ef4>\\u53d6\\u60a6+\\u6c9f\\u901a+\\u79ef\\u6781\\u7684\\u5e73\\u5747\\u5206\\u53d6I\\uff1b\\r\\n\\u53d6\\u60a6+\\u6c9f\\u901a+\\u79ef\\u6781\\u7684\\u5e73\\u5747\\u5206>\\u601d\\u7ef4\\u53d6E\\r\\nS--N\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u5ba1\\u614e+\\u5b8c\\u7f8e+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u7406\\u5ff5+\\u5173\\u8054\\u7684\\u5e73\\u5747\\u5206\\u53d6S\\uff1b\\r\\n\\u7406\\u5ff5+\\u5173\\u8054\\u7684\\u5e73\\u5747\\u5206>\\u5ba1\\u614e+\\u5b8c\\u7f8e+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206\\u53d6N\\r\\nT--F\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u5206\\u6790+\\u601d\\u7ef4+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u548c\\u8c10+\\u4f53\\u8c05+\\u4fe1\\u4ef0+\\u4ea4\\u5f80\\u7684\\u5e73\\u5747\\u5206\\u53d6T\\uff1b\\u548c\\u8c10+\\u4f53\\u8c05+\\u4fe1\\u4ef0+\\u4ea4\\u5f80\\u7684\\u5e73\\u5747\\u5206>\\u5206\\u6790+\\u601d\\u7ef4+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206\\u53d6F\\r\\nJ--P\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u4e13\\u6ce8+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u7406\\u5ff5+\\u53d6\\u60a6+\\u9002\\u5e94\\u7684\\u5e73\\u5747\\u5206\\u53d6J\\uff1b\\r\\n\\u7406\\u5ff5+\\u53d6\\u60a6+\\u9002\\u5e94\\u7684\\u5e73\\u5747\\u5206>\\u4e13\\u6ce8+\\u7eaa\\u5f8b\\u53d6\\u7684\\u5e73\\u5747\\u5206\\u53d6P\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/categories\"}', '2018-04-27 12:04:32', '2018-04-27 12:04:32');
INSERT INTO `admin_operation_log` VALUES ('958', '1', 'admin/project/categories/3/edit', 'GET', '127.0.0.1', '[]', '2018-04-27 12:04:32', '2018-04-27 12:04:32');
INSERT INTO `admin_operation_log` VALUES ('959', '1', 'admin/project/categories/3', 'PUT', '127.0.0.1', '{\"subject_id\":\"1\",\"name\":\"C\\u7c7b\",\"remark\":\"\\u7b97\\u6cd5\\u5982\\u4e0b\\uff1a\\r\\n\\u76f8\\u5e94\\u9009\\u9879\\u5bf9\\u5e94\\u76f8\\u5e94\\u7684\\u5b57\\u6bcd\\uff0c\\u6700\\u540e\\u6240\\u6709\\u5b57\\u6bcd\\u7684\\u6570\\u91cf\\u76f8\\u52a0\\uff0c\\u4e24\\u4e24\\u76f8\\u5bf9\\u53d6\\u9ad8\\u5206\\u7684\\u5b57\\u6bcd\\u3002\\r\\nE\\u548cI\\r\\nN\\u548cS\\r\\nF\\u548cT\\r\\nJ\\u548cP\\r\\n\\u5982\\u5bf9\\u5e94\\u5b57\\u6bcd\\u5206\\u503c\\u76f8\\u540c\\uff0c\\u5219\\u6309\\u4ee5\\u4e0b\\u89c4\\u5219\\uff1a\\r\\nE--I\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u601d\\u7ef4>\\u53d6\\u60a6+\\u6c9f\\u901a+\\u79ef\\u6781\\u7684\\u5e73\\u5747\\u5206\\u53d6I\\uff1b\\r\\n\\u53d6\\u60a6+\\u6c9f\\u901a+\\u79ef\\u6781\\u7684\\u5e73\\u5747\\u5206>\\u601d\\u7ef4\\u53d6E\\r\\nS--N\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u5ba1\\u614e+\\u5b8c\\u7f8e+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u7406\\u5ff5+\\u5173\\u8054\\u7684\\u5e73\\u5747\\u5206\\u53d6S\\uff1b\\r\\n\\u7406\\u5ff5+\\u5173\\u8054\\u7684\\u5e73\\u5747\\u5206>\\u5ba1\\u614e+\\u5b8c\\u7f8e+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206\\u53d6N\\r\\nT--F\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u5206\\u6790+\\u601d\\u7ef4+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u548c\\u8c10+\\u4f53\\u8c05+\\u4fe1\\u4ef0+\\u4ea4\\u5f80\\u7684\\u5e73\\u5747\\u5206\\u53d6T\\uff1b\\u548c\\u8c10+\\u4f53\\u8c05+\\u4fe1\\u4ef0+\\u4ea4\\u5f80\\u7684\\u5e73\\u5747\\u5206>\\u5206\\u6790+\\u601d\\u7ef4+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206\\u53d6F\\r\\nJ--P\\u76f8\\u7b49\\u7684\\u60c5\\u51b5\\u4e0b\\uff0c\\u4e13\\u6ce8+\\u7eaa\\u5f8b\\u7684\\u5e73\\u5747\\u5206>\\u7406\\u5ff5+\\u53d6\\u60a6+\\u9002\\u5e94\\u7684\\u5e73\\u5747\\u5206\\u53d6J\\uff1b\\r\\n\\u7406\\u5ff5+\\u53d6\\u60a6+\\u9002\\u5e94\\u7684\\u5e73\\u5747\\u5206>\\u4e13\\u6ce8+\\u7eaa\\u5f8b\\u53d6\\u7684\\u5e73\\u5747\\u5206\\u53d6P\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\"}', '2018-04-27 12:05:49', '2018-04-27 12:05:49');
INSERT INTO `admin_operation_log` VALUES ('960', '1', 'admin/project/categories', 'GET', '127.0.0.1', '[]', '2018-04-27 12:05:49', '2018-04-27 12:05:49');
INSERT INTO `admin_operation_log` VALUES ('961', '1', 'admin/project/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:05:57', '2018-04-27 12:05:57');
INSERT INTO `admin_operation_log` VALUES ('962', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:17:45', '2018-04-27 12:17:45');
INSERT INTO `admin_operation_log` VALUES ('963', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 12:17:48', '2018-04-27 12:17:48');
INSERT INTO `admin_operation_log` VALUES ('964', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 12:20:19', '2018-04-27 12:20:19');
INSERT INTO `admin_operation_log` VALUES ('965', '1', 'admin/project/questions/create', 'GET', '127.0.0.1', '[]', '2018-04-27 12:21:19', '2018-04-27 12:21:19');
INSERT INTO `admin_operation_log` VALUES ('966', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 13:09:02', '2018-04-27 13:09:02');
INSERT INTO `admin_operation_log` VALUES ('967', '1', 'admin/project/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 13:09:05', '2018-04-27 13:09:05');
INSERT INTO `admin_operation_log` VALUES ('968', '1', 'admin/project/subjects/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 13:09:08', '2018-04-27 13:09:08');
INSERT INTO `admin_operation_log` VALUES ('969', '1', 'admin/project/subjects/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u9ad8\\u4e2d\\u6d4b\\u8bc4\",\"status\":\"1\",\"_token\":\"DFAp7CWwEp7uEowOh201VLyYSqR0IhyQFFLsSduD\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8080\\/admin\\/project\\/subjects\"}', '2018-04-27 13:09:18', '2018-04-27 13:09:18');
INSERT INTO `admin_operation_log` VALUES ('970', '1', 'admin/project/subjects', 'GET', '127.0.0.1', '[]', '2018-04-27 13:09:18', '2018-04-27 13:09:18');
INSERT INTO `admin_operation_log` VALUES ('971', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 13:47:19', '2018-04-27 13:47:19');
INSERT INTO `admin_operation_log` VALUES ('972', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 13:52:25', '2018-04-27 13:52:25');
INSERT INTO `admin_operation_log` VALUES ('973', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 13:52:58', '2018-04-27 13:52:58');
INSERT INTO `admin_operation_log` VALUES ('974', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 14:55:56', '2018-04-27 14:55:56');
INSERT INTO `admin_operation_log` VALUES ('975', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 15:31:36', '2018-04-27 15:31:36');
INSERT INTO `admin_operation_log` VALUES ('976', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:37:02', '2018-04-27 15:37:02');
INSERT INTO `admin_operation_log` VALUES ('977', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:37:35', '2018-04-27 15:37:35');
INSERT INTO `admin_operation_log` VALUES ('978', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:38:02', '2018-04-27 15:38:02');
INSERT INTO `admin_operation_log` VALUES ('979', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:38:37', '2018-04-27 15:38:37');
INSERT INTO `admin_operation_log` VALUES ('980', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:38:53', '2018-04-27 15:38:53');
INSERT INTO `admin_operation_log` VALUES ('981', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:40:28', '2018-04-27 15:40:28');
INSERT INTO `admin_operation_log` VALUES ('982', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:41:07', '2018-04-27 15:41:07');
INSERT INTO `admin_operation_log` VALUES ('983', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:41:16', '2018-04-27 15:41:16');
INSERT INTO `admin_operation_log` VALUES ('984', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:41:43', '2018-04-27 15:41:43');
INSERT INTO `admin_operation_log` VALUES ('985', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:57:34', '2018-04-27 15:57:34');
INSERT INTO `admin_operation_log` VALUES ('986', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:58:14', '2018-04-27 15:58:14');
INSERT INTO `admin_operation_log` VALUES ('987', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:58:31', '2018-04-27 15:58:31');
INSERT INTO `admin_operation_log` VALUES ('988', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:58:50', '2018-04-27 15:58:50');
INSERT INTO `admin_operation_log` VALUES ('989', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:59:14', '2018-04-27 15:59:14');
INSERT INTO `admin_operation_log` VALUES ('990', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 15:59:45', '2018-04-27 15:59:45');
INSERT INTO `admin_operation_log` VALUES ('991', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 16:01:17', '2018-04-27 16:01:17');
INSERT INTO `admin_operation_log` VALUES ('992', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 16:01:35', '2018-04-27 16:01:35');
INSERT INTO `admin_operation_log` VALUES ('993', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 16:02:20', '2018-04-27 16:02:20');
INSERT INTO `admin_operation_log` VALUES ('994', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:08:08', '2018-04-27 16:08:08');
INSERT INTO `admin_operation_log` VALUES ('995', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:08:47', '2018-04-27 16:08:47');
INSERT INTO `admin_operation_log` VALUES ('996', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:09:07', '2018-04-27 16:09:07');
INSERT INTO `admin_operation_log` VALUES ('997', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:14:54', '2018-04-27 16:14:54');
INSERT INTO `admin_operation_log` VALUES ('998', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:17:22', '2018-04-27 16:17:22');
INSERT INTO `admin_operation_log` VALUES ('999', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:17:51', '2018-04-27 16:17:51');
INSERT INTO `admin_operation_log` VALUES ('1000', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:18:15', '2018-04-27 16:18:15');
INSERT INTO `admin_operation_log` VALUES ('1001', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:19:11', '2018-04-27 16:19:11');
INSERT INTO `admin_operation_log` VALUES ('1002', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:19:30', '2018-04-27 16:19:30');
INSERT INTO `admin_operation_log` VALUES ('1003', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:25:17', '2018-04-27 16:25:17');
INSERT INTO `admin_operation_log` VALUES ('1004', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:25:30', '2018-04-27 16:25:30');
INSERT INTO `admin_operation_log` VALUES ('1005', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 16:26:14', '2018-04-27 16:26:14');
INSERT INTO `admin_operation_log` VALUES ('1006', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 16:26:21', '2018-04-27 16:26:21');
INSERT INTO `admin_operation_log` VALUES ('1007', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 16:26:25', '2018-04-27 16:26:25');
INSERT INTO `admin_operation_log` VALUES ('1008', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 16:33:10', '2018-04-27 16:33:10');
INSERT INTO `admin_operation_log` VALUES ('1009', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:46:52', '2018-04-27 16:46:52');
INSERT INTO `admin_operation_log` VALUES ('1010', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:47:15', '2018-04-27 16:47:15');
INSERT INTO `admin_operation_log` VALUES ('1011', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:47:35', '2018-04-27 16:47:35');
INSERT INTO `admin_operation_log` VALUES ('1012', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:49:04', '2018-04-27 16:49:04');
INSERT INTO `admin_operation_log` VALUES ('1013', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:49:34', '2018-04-27 16:49:34');
INSERT INTO `admin_operation_log` VALUES ('1014', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:55:58', '2018-04-27 16:55:58');
INSERT INTO `admin_operation_log` VALUES ('1015', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 16:57:21', '2018-04-27 16:57:21');
INSERT INTO `admin_operation_log` VALUES ('1016', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:05:37', '2018-04-27 17:05:37');
INSERT INTO `admin_operation_log` VALUES ('1017', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:06:20', '2018-04-27 17:06:20');
INSERT INTO `admin_operation_log` VALUES ('1018', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:08:20', '2018-04-27 17:08:20');
INSERT INTO `admin_operation_log` VALUES ('1019', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:09:47', '2018-04-27 17:09:47');
INSERT INTO `admin_operation_log` VALUES ('1020', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:10:30', '2018-04-27 17:10:30');
INSERT INTO `admin_operation_log` VALUES ('1021', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:13:16', '2018-04-27 17:13:16');
INSERT INTO `admin_operation_log` VALUES ('1022', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:13:57', '2018-04-27 17:13:57');
INSERT INTO `admin_operation_log` VALUES ('1023', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:24:23', '2018-04-27 17:24:23');
INSERT INTO `admin_operation_log` VALUES ('1024', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:24:30', '2018-04-27 17:24:30');
INSERT INTO `admin_operation_log` VALUES ('1025', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:24:32', '2018-04-27 17:24:32');
INSERT INTO `admin_operation_log` VALUES ('1026', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:24:33', '2018-04-27 17:24:33');
INSERT INTO `admin_operation_log` VALUES ('1027', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:25:32', '2018-04-27 17:25:32');
INSERT INTO `admin_operation_log` VALUES ('1028', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:26:49', '2018-04-27 17:26:49');
INSERT INTO `admin_operation_log` VALUES ('1029', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:27:51', '2018-04-27 17:27:51');
INSERT INTO `admin_operation_log` VALUES ('1030', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:31:48', '2018-04-27 17:31:48');
INSERT INTO `admin_operation_log` VALUES ('1031', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:35:28', '2018-04-27 17:35:28');
INSERT INTO `admin_operation_log` VALUES ('1032', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:36:42', '2018-04-27 17:36:42');
INSERT INTO `admin_operation_log` VALUES ('1033', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:37:18', '2018-04-27 17:37:18');
INSERT INTO `admin_operation_log` VALUES ('1034', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:40:47', '2018-04-27 17:40:47');
INSERT INTO `admin_operation_log` VALUES ('1035', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:41:17', '2018-04-27 17:41:17');
INSERT INTO `admin_operation_log` VALUES ('1036', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 17:41:25', '2018-04-27 17:41:25');
INSERT INTO `admin_operation_log` VALUES ('1037', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 17:42:59', '2018-04-27 17:42:59');
INSERT INTO `admin_operation_log` VALUES ('1038', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:43:06', '2018-04-27 17:43:06');
INSERT INTO `admin_operation_log` VALUES ('1039', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 17:44:21', '2018-04-27 17:44:21');
INSERT INTO `admin_operation_log` VALUES ('1040', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:44:31', '2018-04-27 17:44:31');
INSERT INTO `admin_operation_log` VALUES ('1041', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:44:32', '2018-04-27 17:44:32');
INSERT INTO `admin_operation_log` VALUES ('1042', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:44:57', '2018-04-27 17:44:57');
INSERT INTO `admin_operation_log` VALUES ('1043', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:46:53', '2018-04-27 17:46:53');
INSERT INTO `admin_operation_log` VALUES ('1044', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:47:11', '2018-04-27 17:47:11');
INSERT INTO `admin_operation_log` VALUES ('1045', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:47:37', '2018-04-27 17:47:37');
INSERT INTO `admin_operation_log` VALUES ('1046', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:50:22', '2018-04-27 17:50:22');
INSERT INTO `admin_operation_log` VALUES ('1047', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:50:58', '2018-04-27 17:50:58');
INSERT INTO `admin_operation_log` VALUES ('1048', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:53:10', '2018-04-27 17:53:10');
INSERT INTO `admin_operation_log` VALUES ('1049', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:53:26', '2018-04-27 17:53:26');
INSERT INTO `admin_operation_log` VALUES ('1050', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:53:53', '2018-04-27 17:53:53');
INSERT INTO `admin_operation_log` VALUES ('1051', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:54:25', '2018-04-27 17:54:25');
INSERT INTO `admin_operation_log` VALUES ('1052', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:55:05', '2018-04-27 17:55:05');
INSERT INTO `admin_operation_log` VALUES ('1053', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:55:46', '2018-04-27 17:55:46');
INSERT INTO `admin_operation_log` VALUES ('1054', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:38', '2018-04-27 17:57:38');
INSERT INTO `admin_operation_log` VALUES ('1055', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:42', '2018-04-27 17:57:42');
INSERT INTO `admin_operation_log` VALUES ('1056', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:43', '2018-04-27 17:57:43');
INSERT INTO `admin_operation_log` VALUES ('1057', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:44', '2018-04-27 17:57:44');
INSERT INTO `admin_operation_log` VALUES ('1058', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:45', '2018-04-27 17:57:45');
INSERT INTO `admin_operation_log` VALUES ('1059', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:46', '2018-04-27 17:57:46');
INSERT INTO `admin_operation_log` VALUES ('1060', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:46', '2018-04-27 17:57:46');
INSERT INTO `admin_operation_log` VALUES ('1061', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:48', '2018-04-27 17:57:48');
INSERT INTO `admin_operation_log` VALUES ('1062', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:50', '2018-04-27 17:57:50');
INSERT INTO `admin_operation_log` VALUES ('1063', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:51', '2018-04-27 17:57:51');
INSERT INTO `admin_operation_log` VALUES ('1064', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:52', '2018-04-27 17:57:52');
INSERT INTO `admin_operation_log` VALUES ('1065', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:53', '2018-04-27 17:57:53');
INSERT INTO `admin_operation_log` VALUES ('1066', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:54', '2018-04-27 17:57:54');
INSERT INTO `admin_operation_log` VALUES ('1067', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:54', '2018-04-27 17:57:54');
INSERT INTO `admin_operation_log` VALUES ('1068', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:57:55', '2018-04-27 17:57:55');
INSERT INTO `admin_operation_log` VALUES ('1069', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:32', '2018-04-27 17:58:32');
INSERT INTO `admin_operation_log` VALUES ('1070', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:32', '2018-04-27 17:58:32');
INSERT INTO `admin_operation_log` VALUES ('1071', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:33', '2018-04-27 17:58:33');
INSERT INTO `admin_operation_log` VALUES ('1072', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:34', '2018-04-27 17:58:34');
INSERT INTO `admin_operation_log` VALUES ('1073', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:34', '2018-04-27 17:58:34');
INSERT INTO `admin_operation_log` VALUES ('1074', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:35', '2018-04-27 17:58:35');
INSERT INTO `admin_operation_log` VALUES ('1075', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:35', '2018-04-27 17:58:35');
INSERT INTO `admin_operation_log` VALUES ('1076', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:35', '2018-04-27 17:58:35');
INSERT INTO `admin_operation_log` VALUES ('1077', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:36', '2018-04-27 17:58:36');
INSERT INTO `admin_operation_log` VALUES ('1078', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:36', '2018-04-27 17:58:36');
INSERT INTO `admin_operation_log` VALUES ('1079', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:36', '2018-04-27 17:58:36');
INSERT INTO `admin_operation_log` VALUES ('1080', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:37', '2018-04-27 17:58:37');
INSERT INTO `admin_operation_log` VALUES ('1081', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:38', '2018-04-27 17:58:38');
INSERT INTO `admin_operation_log` VALUES ('1082', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:38', '2018-04-27 17:58:38');
INSERT INTO `admin_operation_log` VALUES ('1083', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:38', '2018-04-27 17:58:38');
INSERT INTO `admin_operation_log` VALUES ('1084', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:38', '2018-04-27 17:58:38');
INSERT INTO `admin_operation_log` VALUES ('1085', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:39', '2018-04-27 17:58:39');
INSERT INTO `admin_operation_log` VALUES ('1086', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:39', '2018-04-27 17:58:39');
INSERT INTO `admin_operation_log` VALUES ('1087', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:39', '2018-04-27 17:58:39');
INSERT INTO `admin_operation_log` VALUES ('1088', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:40', '2018-04-27 17:58:40');
INSERT INTO `admin_operation_log` VALUES ('1089', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:41', '2018-04-27 17:58:41');
INSERT INTO `admin_operation_log` VALUES ('1090', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:58:41', '2018-04-27 17:58:41');
INSERT INTO `admin_operation_log` VALUES ('1091', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:19', '2018-04-27 17:59:19');
INSERT INTO `admin_operation_log` VALUES ('1092', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:20', '2018-04-27 17:59:20');
INSERT INTO `admin_operation_log` VALUES ('1093', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:21', '2018-04-27 17:59:21');
INSERT INTO `admin_operation_log` VALUES ('1094', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:47', '2018-04-27 17:59:47');
INSERT INTO `admin_operation_log` VALUES ('1095', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:48', '2018-04-27 17:59:48');
INSERT INTO `admin_operation_log` VALUES ('1096', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:49', '2018-04-27 17:59:49');
INSERT INTO `admin_operation_log` VALUES ('1097', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:50', '2018-04-27 17:59:50');
INSERT INTO `admin_operation_log` VALUES ('1098', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:51', '2018-04-27 17:59:51');
INSERT INTO `admin_operation_log` VALUES ('1099', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:51', '2018-04-27 17:59:51');
INSERT INTO `admin_operation_log` VALUES ('1100', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:53', '2018-04-27 17:59:53');
INSERT INTO `admin_operation_log` VALUES ('1101', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:53', '2018-04-27 17:59:53');
INSERT INTO `admin_operation_log` VALUES ('1102', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:54', '2018-04-27 17:59:54');
INSERT INTO `admin_operation_log` VALUES ('1103', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:55', '2018-04-27 17:59:55');
INSERT INTO `admin_operation_log` VALUES ('1104', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 17:59:56', '2018-04-27 17:59:56');
INSERT INTO `admin_operation_log` VALUES ('1105', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:00:46', '2018-04-27 18:00:46');
INSERT INTO `admin_operation_log` VALUES ('1106', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:02:39', '2018-04-27 18:02:39');
INSERT INTO `admin_operation_log` VALUES ('1107', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:02:55', '2018-04-27 18:02:55');
INSERT INTO `admin_operation_log` VALUES ('1108', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:03:22', '2018-04-27 18:03:22');
INSERT INTO `admin_operation_log` VALUES ('1109', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:04:43', '2018-04-27 18:04:43');
INSERT INTO `admin_operation_log` VALUES ('1110', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:06:54', '2018-04-27 18:06:54');
INSERT INTO `admin_operation_log` VALUES ('1111', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:09:18', '2018-04-27 18:09:18');
INSERT INTO `admin_operation_log` VALUES ('1112', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:10:46', '2018-04-27 18:10:46');
INSERT INTO `admin_operation_log` VALUES ('1113', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:10:48', '2018-04-27 18:10:48');
INSERT INTO `admin_operation_log` VALUES ('1114', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:14:05', '2018-04-27 18:14:05');
INSERT INTO `admin_operation_log` VALUES ('1115', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:14:09', '2018-04-27 18:14:09');
INSERT INTO `admin_operation_log` VALUES ('1116', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:15:56', '2018-04-27 18:15:56');
INSERT INTO `admin_operation_log` VALUES ('1117', '1', 'admin/import/cat-a', 'GET', '127.0.0.1', '[]', '2018-04-27 18:16:15', '2018-04-27 18:16:15');
INSERT INTO `admin_operation_log` VALUES ('1118', '1', 'admin/import/cat-b', 'GET', '127.0.0.1', '[]', '2018-04-27 18:16:19', '2018-04-27 18:16:19');
INSERT INTO `admin_operation_log` VALUES ('1119', '1', 'admin/import/cat-c', 'GET', '127.0.0.1', '[]', '2018-04-27 18:16:23', '2018-04-27 18:16:23');
INSERT INTO `admin_operation_log` VALUES ('1120', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 18:18:39', '2018-04-27 18:18:39');
INSERT INTO `admin_operation_log` VALUES ('1121', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:18:46', '2018-04-27 18:18:46');
INSERT INTO `admin_operation_log` VALUES ('1122', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:18:54', '2018-04-27 18:18:54');
INSERT INTO `admin_operation_log` VALUES ('1123', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 18:19:06', '2018-04-27 18:19:06');
INSERT INTO `admin_operation_log` VALUES ('1124', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-04-27 21:54:38', '2018-04-27 21:54:38');
INSERT INTO `admin_operation_log` VALUES ('1125', '1', 'admin/project/personalities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 21:54:49', '2018-04-27 21:54:49');
INSERT INTO `admin_operation_log` VALUES ('1126', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-04-27 21:54:51', '2018-04-27 21:54:51');
INSERT INTO `admin_operation_log` VALUES ('1127', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:55:41', '2018-04-27 21:55:41');
INSERT INTO `admin_operation_log` VALUES ('1128', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:55:56', '2018-04-27 21:55:56');
INSERT INTO `admin_operation_log` VALUES ('1129', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:56:13', '2018-04-27 21:56:13');
INSERT INTO `admin_operation_log` VALUES ('1130', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:56:45', '2018-04-27 21:56:45');
INSERT INTO `admin_operation_log` VALUES ('1131', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:57:16', '2018-04-27 21:57:16');
INSERT INTO `admin_operation_log` VALUES ('1132', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 21:59:19', '2018-04-27 21:59:19');
INSERT INTO `admin_operation_log` VALUES ('1133', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:00:08', '2018-04-27 22:00:08');
INSERT INTO `admin_operation_log` VALUES ('1134', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:03:09', '2018-04-27 22:03:09');
INSERT INTO `admin_operation_log` VALUES ('1135', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:03:11', '2018-04-27 22:03:11');
INSERT INTO `admin_operation_log` VALUES ('1136', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:09:16', '2018-04-27 22:09:16');
INSERT INTO `admin_operation_log` VALUES ('1137', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:09:20', '2018-04-27 22:09:20');
INSERT INTO `admin_operation_log` VALUES ('1138', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:09:42', '2018-04-27 22:09:42');
INSERT INTO `admin_operation_log` VALUES ('1139', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:09:45', '2018-04-27 22:09:45');
INSERT INTO `admin_operation_log` VALUES ('1140', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:10:10', '2018-04-27 22:10:10');
INSERT INTO `admin_operation_log` VALUES ('1141', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:10:45', '2018-04-27 22:10:45');
INSERT INTO `admin_operation_log` VALUES ('1142', '1', 'admin/project/personalities/create', 'GET', '127.0.0.1', '[]', '2018-04-27 22:11:47', '2018-04-27 22:11:47');
INSERT INTO `admin_operation_log` VALUES ('1143', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-04-28 09:25:15', '2018-04-28 09:25:15');
INSERT INTO `admin_operation_log` VALUES ('1144', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"KmJNOnYLHLPJr9u2LfXaVikk3e6D0Tmd5DGiYzih\",\"user\":null}', '2018-04-28 09:25:41', '2018-04-28 09:25:41');
INSERT INTO `admin_operation_log` VALUES ('1145', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"KmJNOnYLHLPJr9u2LfXaVikk3e6D0Tmd5DGiYzih\",\"user\":null}', '2018-04-28 09:31:43', '2018-04-28 09:31:43');
INSERT INTO `admin_operation_log` VALUES ('1146', '1', 'admin/api-tester', 'GET', '127.0.0.1', '[]', '2018-04-28 09:31:51', '2018-04-28 09:31:51');
INSERT INTO `admin_operation_log` VALUES ('1147', '1', 'admin/api-tester/handle', 'POST', '127.0.0.1', '{\"uri\":\"get\",\"method\":null,\"_token\":\"KmJNOnYLHLPJr9u2LfXaVikk3e6D0Tmd5DGiYzih\",\"user\":null}', '2018-04-28 09:32:07', '2018-04-28 09:32:07');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', 'Api tester', 'ext.api-tester', null, '/api-tester*', '2018-04-27 10:20:03', '2018-04-27 10:20:03');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '9', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '8', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '12', null, null);
INSERT INTO `admin_role_menu` VALUES ('1', '13', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('4', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('5', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('6', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('7', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '2', null, null);
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-04-23 12:58:33', '2018-04-23 12:58:33');
INSERT INTO `admin_roles` VALUES ('2', '测试', 'test', '2018-04-23 09:39:35', '2018-04-23 09:39:35');
INSERT INTO `admin_roles` VALUES ('4', '测试02', 'test02', '2018-04-23 09:41:59', '2018-04-23 09:41:59');
INSERT INTO `admin_roles` VALUES ('5', '测试012', 'test021', '2018-04-23 09:43:02', '2018-04-23 09:43:02');
INSERT INTO `admin_roles` VALUES ('6', '可怕', 'kepa', '2018-04-23 09:45:59', '2018-04-23 09:45:59');
INSERT INTO `admin_roles` VALUES ('7', '测试03更新了时间真假期', 'test03', '2018-04-23 09:51:30', '2018-04-23 11:42:39');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
INSERT INTO `admin_user_permissions` VALUES ('2', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$Ed0bBWqwPkTuY.2BPdXP4OakbrWwG.yWH9UpyBrzktY7en3YdqqLu', 'Administrator', null, null, '2018-04-23 12:58:32', '2018-04-23 12:58:32');
INSERT INTO `admin_users` VALUES ('2', 'zhaochang', '$2y$10$GomO3QaL8TzvQj/VddPpq.kXEYlKxtQhQNH8mfxyMgk./NQ9eHriC', '赵昌', 'images/切图_01.jpg', null, '2018-04-23 05:35:56', '2018-04-23 05:35:56');

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `question_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='答案';

-- ----------------------------
-- Records of answers
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(500) NOT NULL DEFAULT '',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_multi` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为多个问题',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='分类 (A类 B类 C类)';

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'A类', '1', '算法：\r\n得分为对应的类型计费，得分为1的项，选A对应的类型加一分，选择B则不加分；\r\n得分为-1的项，选B时加一分，选择A则不加分，每个类型满分都是十分', '1', '0', '0');
INSERT INTO `categories` VALUES ('2', 'B类', '1', '算法：\r\n选中立为双方不加分，如选左边“一般”选项，给左边加一分，右边不加分；\r\n如选左边“非常贴切描述我”选项，给左边加两分，右边不得分。反之也如此。选中间均不得分\r\n最后，每个主题才干的自然得分除以该主题才干的总分得出占比百分数乘以100即是最后的得分。', '1', '1', '0');
INSERT INTO `categories` VALUES ('3', 'C类', '1', '算法如下：\r\n相应选项对应相应的字母，最后所有字母的数量相加，两两相对取高分的字母。\r\nE和I\r\nN和S\r\nF和T\r\nJ和P\r\n如对应字母分值相同，则按以下规则：\r\nE--I相等的情况下，思维>取悦+沟通+积极的平均分取I；\r\n取悦+沟通+积极的平均分>思维取E\r\nS--N相等的情况下，审慎+完美+纪律的平均分>理念+关联的平均分取S；\r\n理念+关联的平均分>审慎+完美+纪律的平均分取N\r\nT--F相等的情况下，分析+思维+纪律的平均分>和谐+体谅+信仰+交往的平均分取T；和谐+体谅+信仰+交往的平均分>分析+思维+纪律的平均分取F\r\nJ--P相等的情况下，专注+纪律的平均分>理念+取悦+适应的平均分取J；\r\n理念+取悦+适应的平均分>专注+纪律取的平均分取P', '1', '1', '0');

-- ----------------------------
-- Table structure for interests
-- ----------------------------
DROP TABLE IF EXISTS `interests`;
CREATE TABLE `interests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `initial` varchar(20) NOT NULL DEFAULT '' COMMENT '英文首字母',
  `brief` varchar(245) NOT NULL DEFAULT '' COMMENT '简介',
  `detail` varchar(245) NOT NULL DEFAULT '' COMMENT '特点（详细报告中显示前两名）',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='兴趣';

-- ----------------------------
-- Records of interests
-- ----------------------------
INSERT INTO `interests` VALUES ('1', '社会型', '1', 'S', '合作、友好、对人感兴趣，对于他人的需求较为敏感', '喜欢与人交往和不断结交新的朋友、喜欢与人交谈、愿意教导别人；关心社会问题、渴望发挥自己的社会作用，体现自身价值；寻求广泛的人际关系，比较看重社会义务和社会道德 。', '1');
INSERT INTO `interests` VALUES ('2', '企业型', '1', 'E', '自信好强，感冒风险，有野心和抱负，喜欢影响和说服他人', '喜欢竞争、敢冒风险、有野心、抱负；追求权力、权威和物质财富，具有领导才能。为人务实，习惯以利益得失，权利、地位、金钱等来衡量做事的价值，做事有较强的目的性。', '2');
INSERT INTO `interests` VALUES ('3', '常规型', '1', 'C', '有条理、实际、顺从 ，喜欢与数据、资料和细节打交道', '喜欢按计划办事，细心、有条理，习惯接受他人的指挥和领导，尊重权威和规章制度；喜欢关注实际和细节情况，通常较为谨慎和保守，缺乏创造性，不喜欢冒险和竞争，富有自我牺牲精神。', '3');
INSERT INTO `interests` VALUES ('4', '现实型', '1', 'R', '喜欢那些实际的、具体的、可以看得到和摸得到的事物', '喜欢专注于当下，而不是过去或者未来；善于使用和操作各种工具，动手能力强，做事手脚灵活，动作协调；偏好于具体任务，不善言辞，做事保守，较为谦虚；缺乏社交能力，通常喜欢独立做事。', '4');
INSERT INTO `interests` VALUES ('5', '研究型', '1', 'I', '分析、理性、独立，喜欢进入学术性，有待研究的创新领域', '喜欢独立的和富有创造性，是典型思想家而非实干家，抽象思维能力强，求知欲强，肯动脑，善思考，不太愿愿动手；考虑问题理性，做事喜欢精确，喜欢逻辑分析和推理，不断探讨未知的领域。', '5');
INSERT INTO `interests` VALUES ('6', '艺术型', '1', 'A', '有创造力，独立，不守常规，对文化和审美领域感兴趣', '有创造力，乐于创造新颖、与众不同的成果，渴望表现自己的个性，实现自身的价值。做事理想化，追求完美，不重实际；具有一定的艺术才能和个性；善于表达、怀旧、心态较为复杂。', '6');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personalities
-- ----------------------------
DROP TABLE IF EXISTS `personalities`;
CREATE TABLE `personalities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='性格';

-- ----------------------------
-- Records of personalities
-- ----------------------------
INSERT INTO `personalities` VALUES ('1', 'E', '1', 'EI', '1');
INSERT INTO `personalities` VALUES ('2', 'I', '1', 'EI', '2');
INSERT INTO `personalities` VALUES ('3', 'S', '1', 'SN', '3');
INSERT INTO `personalities` VALUES ('4', 'N', '1', 'SN', '4');
INSERT INTO `personalities` VALUES ('5', 'T', '1', 'TF', '5');
INSERT INTO `personalities` VALUES ('6', 'F', '1', 'TF', '6');
INSERT INTO `personalities` VALUES ('7', 'J', '1', 'JP', '7');
INSERT INTO `personalities` VALUES ('8', 'P', '1', 'JP', '8');

-- ----------------------------
-- Table structure for qualities
-- ----------------------------
DROP TABLE IF EXISTS `qualities`;
CREATE TABLE `qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='素质';

-- ----------------------------
-- Records of qualities
-- ----------------------------
INSERT INTO `qualities` VALUES ('1', '团队领导能力', '1', '1');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subject_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COMMENT='题目';

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '', '1', '', '1.和一群人在一起的时候，我总想不出恰当的话来说。', '1', '0', '1');
INSERT INTO `questions` VALUES ('2', '', '1', '', '2.与言情小说相比，我更喜欢推理小说。', '1', '0', '1');
INSERT INTO `questions` VALUES ('3', '', '1', '', '3.同学们公认我是一名踏实的、愿为大家服务的人。', '1', '0', '1');
INSERT INTO `questions` VALUES ('4', '', '1', '', '4.我很容易结识同性别朋友。', '1', '0', '1');
INSERT INTO `questions` VALUES ('5', '', '1', '', '5.我喜欢按照自己的学习计划去学习。', '1', '0', '1');
INSERT INTO `questions` VALUES ('6', '', '1', '', '6.我通常比较有耐心。', '1', '0', '1');
INSERT INTO `questions` VALUES ('7', '', '1', '', '7.我喜欢使用榔头、锤子一类的工具。', '1', '0', '1');
INSERT INTO `questions` VALUES ('8', '', '1', '', '8.我喜欢亲自动手制作一些东西，从中得到乐趣。', '1', '0', '1');
INSERT INTO `questions` VALUES ('9', '', '1', '', '9.我总留有充裕的时间去上学。', '1', '0', '1');
INSERT INTO `questions` VALUES ('10', '', '1', '', '10.和不熟悉的人交谈对我来说很困难。', '1', '0', '1');
INSERT INTO `questions` VALUES ('11', '', '1', '', '11.我讨厌跟各类机械打交道。', '1', '0', '1');
INSERT INTO `questions` VALUES ('12', '', '1', '', '12.我小时候经常把玩具拆开，把里面看个究竟。', '1', '0', '1');
INSERT INTO `questions` VALUES ('13', '', '1', '', '13.我喜欢看一些时政和财经类的新闻', '1', '0', '1');
INSERT INTO `questions` VALUES ('14', '', '1', '', '14.我总是能够说服别人同意我的观点', '1', '0', '1');
INSERT INTO `questions` VALUES ('15', '', '1', '', '15.当我开始做一件事情后，即使碰到再多的困难，我也要执著地干下去', '1', '0', '1');
INSERT INTO `questions` VALUES ('16', '', '1', '', '16.我不喜欢和数字打交道。', '1', '0', '1');
INSERT INTO `questions` VALUES ('17', '', '1', '', '17.我讨厌学数学。', '1', '0', '1');
INSERT INTO `questions` VALUES ('18', '', '1', '', '18.音乐能使我陶醉。', '1', '0', '1');
INSERT INTO `questions` VALUES ('19', '', '1', '', '19.我喜欢组织大家搞活动', '1', '0', '1');
INSERT INTO `questions` VALUES ('20', '', '1', '', '20.我办事很少思前想后。', '1', '0', '1');
INSERT INTO `questions` VALUES ('21', '', '1', '', '21.我喜欢抽象思维的工作，不喜欢动手的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('22', '', '1', '', '22.我有文艺方面的天赋。', '1', '0', '1');
INSERT INTO `questions` VALUES ('23', '', '1', '', '23.我喜欢需要运用智力的游戏。', '1', '0', '1');
INSERT INTO `questions` VALUES ('24', '', '1', '', '24.我曾渴望成为一名飞行员。', '1', '0', '1');
INSERT INTO `questions` VALUES ('25', '', '1', '', '25.遇到难解答的题目时，我常常放弃。', '1', '0', '1');
INSERT INTO `questions` VALUES ('26', '', '1', '', '26.我喜欢以自己的独特方法做事，不喜欢受到约束。', '1', '0', '1');
INSERT INTO `questions` VALUES ('27', '', '1', '', '27.对别人借我的和我借别人的东西，我都能记得很清楚。', '1', '0', '1');
INSERT INTO `questions` VALUES ('28', '', '1', '', '28.我总是主动地向别人提出自己的建议', '1', '0', '1');
INSERT INTO `questions` VALUES ('29', '', '1', '', '29.我的理想是当一名科学家。', '1', '0', '1');
INSERT INTO `questions` VALUES ('30', '', '1', '', '30.我喜欢给同学辅功课导。', '1', '0', '1');
INSERT INTO `questions` VALUES ('31', '', '1', '', '31.我经常不停地思考某一问题，直到想出正确的答案。', '1', '0', '1');
INSERT INTO `questions` VALUES ('32', '', '1', '', '32.我乐于解除别人的痛苦。', '1', '0', '1');
INSERT INTO `questions` VALUES ('33', '', '1', '', '33.我的事情很少请示我的父母。', '1', '0', '1');
INSERT INTO `questions` VALUES ('34', '', '1', '', '34.我喜欢参加各种各样的聚会。', '1', '0', '1');
INSERT INTO `questions` VALUES ('35', '', '1', '', '35.对于社会问题，我通常持中庸的态度。', '1', '0', '1');
INSERT INTO `questions` VALUES ('36', '', '1', '', '36.我喜欢在做事情前，对此事情做出细致的安排。', '1', '0', '1');
INSERT INTO `questions` VALUES ('37', '', '1', '', '37.有些人太霸道，有时明明知道他们是对的，也要和他们对着干。', '1', '0', '1');
INSERT INTO `questions` VALUES ('38', '', '1', '', '38.我是个理想主义者。', '1', '0', '1');
INSERT INTO `questions` VALUES ('39', '', '1', '', '39.在集体讨论中，我往往保持沉默。', '1', '0', '1');
INSERT INTO `questions` VALUES ('40', '', '1', '', '40.我喜欢把一件事情做完后再做另一件事。', '1', '0', '1');
INSERT INTO `questions` VALUES ('41', '', '1', '', '41.我喜欢成为人们注意的焦点。', '1', '0', '1');
INSERT INTO `questions` VALUES ('42', '', '1', '', '42.我喜欢阅读自然科学方面的书籍和杂志。', '1', '0', '1');
INSERT INTO `questions` VALUES ('43', '', '1', '', '43.我很难做那种需要持续集中注意力的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('44', '', '1', '', '44.在实验室里独自做实验会令我寂寞难耐。', '1', '0', '1');
INSERT INTO `questions` VALUES ('45', '', '1', '', '45.我希望未来能掌握一门手艺并能以此为生。', '1', '0', '1');
INSERT INTO `questions` VALUES ('46', '', '1', '', '46.我的动手能力很差。', '1', '0', '1');
INSERT INTO `questions` VALUES ('47', '', '1', '', '47.我讨厌修理自行车、电器一类的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('48', '', '1', '', '48.我曾经渴望有机会参加探险', '1', '0', '1');
INSERT INTO `questions` VALUES ('49', '', '1', '', '49.当我学习时，我喜欢避免干扰。', '1', '0', '1');
INSERT INTO `questions` VALUES ('50', '', '1', '', '50.对于急躁、爱发脾气的人，我仍能以礼相待。', '1', '0', '1');
INSERT INTO `questions` VALUES ('51', '', '1', '', '51.我喜欢养些花花草草', '1', '0', '1');
INSERT INTO `questions` VALUES ('52', '', '1', '', '52.我喜欢不时地夸耀一下自己取得的好成就。', '1', '0', '1');
INSERT INTO `questions` VALUES ('53', '', '1', '', '53.我是一个沉静而不易动感情的人', '1', '0', '1');
INSERT INTO `questions` VALUES ('54', '', '1', '', '54.和别人谈判时，我总是很容易放弃自己的观点', '1', '0', '1');
INSERT INTO `questions` VALUES ('55', '', '1', '', '55.我喜欢把一切安排得整整齐齐、井井有条。', '1', '0', '1');
INSERT INTO `questions` VALUES ('56', '', '1', '', '56.我希望未来能够从事戏剧、音乐、歌舞、新闻采访等方面的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('57', '', '1', '', '57.当我一个独处时，会感到更愉快。', '1', '0', '1');
INSERT INTO `questions` VALUES ('58', '', '1', '', '58.看情感影片时，我常禁不住眼圈红润。', '1', '0', '1');
INSERT INTO `questions` VALUES ('59', '', '1', '', '59.听别人谈“家中被盗”一类的事，很难引起我的同情', '1', '0', '1');
INSERT INTO `questions` VALUES ('60', '', '1', '', '60.我不在乎别人是否认同我', '1', '0', '1');
INSERT INTO `questions` VALUES ('61', '', '1', '', '1、', '2', '0', '1');
INSERT INTO `questions` VALUES ('62', '', '1', '', '2、', '2', '0', '1');
INSERT INTO `questions` VALUES ('63', '', '1', '', '3、', '2', '0', '1');
INSERT INTO `questions` VALUES ('64', '', '1', '', '4、', '2', '0', '1');
INSERT INTO `questions` VALUES ('65', '', '1', '', '5、', '2', '0', '1');
INSERT INTO `questions` VALUES ('66', '', '1', '', '6、', '2', '0', '1');
INSERT INTO `questions` VALUES ('67', '', '1', '', '7、', '2', '0', '1');
INSERT INTO `questions` VALUES ('68', '', '1', '', '8、', '2', '0', '1');
INSERT INTO `questions` VALUES ('69', '', '1', '', '9、', '2', '0', '1');
INSERT INTO `questions` VALUES ('70', '', '1', '', '10、', '2', '0', '1');
INSERT INTO `questions` VALUES ('71', '', '1', '', '11、', '2', '0', '1');
INSERT INTO `questions` VALUES ('72', '', '1', '', '12、', '2', '0', '1');
INSERT INTO `questions` VALUES ('73', '', '1', '', '13、', '2', '0', '1');
INSERT INTO `questions` VALUES ('74', '', '1', '', '14、', '2', '0', '1');
INSERT INTO `questions` VALUES ('75', '', '1', '', '15、', '2', '0', '1');
INSERT INTO `questions` VALUES ('76', '', '1', '', '16、', '2', '0', '1');
INSERT INTO `questions` VALUES ('77', '', '1', '', '17、', '2', '0', '1');
INSERT INTO `questions` VALUES ('78', '', '1', '', '18、', '2', '0', '1');
INSERT INTO `questions` VALUES ('79', '', '1', '', '19、', '2', '0', '1');
INSERT INTO `questions` VALUES ('80', '', '1', '', '20、', '2', '0', '1');
INSERT INTO `questions` VALUES ('81', '', '1', '', '21、', '2', '0', '1');
INSERT INTO `questions` VALUES ('82', '', '1', '', '22、', '2', '0', '1');
INSERT INTO `questions` VALUES ('83', '', '1', '', '23、', '2', '0', '1');
INSERT INTO `questions` VALUES ('84', '', '1', '', '24、', '2', '0', '1');
INSERT INTO `questions` VALUES ('85', '', '1', '', '25、', '2', '0', '1');
INSERT INTO `questions` VALUES ('86', '', '1', '', '26、', '2', '0', '1');
INSERT INTO `questions` VALUES ('87', '', '1', '', '27、', '2', '0', '1');
INSERT INTO `questions` VALUES ('88', '', '1', '', '28、', '2', '0', '1');
INSERT INTO `questions` VALUES ('89', '', '1', '', '29、', '2', '0', '1');
INSERT INTO `questions` VALUES ('90', '', '1', '', '30、', '2', '0', '1');
INSERT INTO `questions` VALUES ('91', '', '1', '', '31、', '2', '0', '1');
INSERT INTO `questions` VALUES ('92', '', '1', '', '32、', '2', '0', '1');
INSERT INTO `questions` VALUES ('93', '', '1', '', '33、', '2', '0', '1');
INSERT INTO `questions` VALUES ('94', '', '1', '', '34、', '2', '0', '1');
INSERT INTO `questions` VALUES ('95', '', '1', '', '35、', '2', '0', '1');
INSERT INTO `questions` VALUES ('96', '', '1', '', '36、', '2', '0', '1');
INSERT INTO `questions` VALUES ('97', '', '1', '', '37、', '2', '0', '1');
INSERT INTO `questions` VALUES ('98', '', '1', '', '38、', '2', '0', '1');
INSERT INTO `questions` VALUES ('99', '', '1', '', '39、', '2', '0', '1');
INSERT INTO `questions` VALUES ('100', '', '1', '', '40、', '2', '0', '1');
INSERT INTO `questions` VALUES ('101', '', '1', '', '41、', '2', '0', '1');
INSERT INTO `questions` VALUES ('102', '', '1', '', '42、', '2', '0', '1');
INSERT INTO `questions` VALUES ('103', '', '1', '', '43、', '2', '0', '1');
INSERT INTO `questions` VALUES ('104', '', '1', '', '44、', '2', '0', '1');
INSERT INTO `questions` VALUES ('105', '', '1', '', '45、', '2', '0', '1');
INSERT INTO `questions` VALUES ('106', '', '1', '', '46、', '2', '0', '1');
INSERT INTO `questions` VALUES ('107', '', '1', '', '47、', '2', '0', '1');
INSERT INTO `questions` VALUES ('108', '', '1', '', '48、', '2', '0', '1');
INSERT INTO `questions` VALUES ('109', '', '1', '', '49、', '2', '0', '1');
INSERT INTO `questions` VALUES ('110', '', '1', '', '50、', '2', '0', '1');
INSERT INTO `questions` VALUES ('111', '', '1', '', '51、', '2', '0', '1');
INSERT INTO `questions` VALUES ('112', '', '1', '', '52、', '2', '0', '1');
INSERT INTO `questions` VALUES ('113', '', '1', '', '53、', '2', '0', '1');
INSERT INTO `questions` VALUES ('114', '', '1', '', '54、', '2', '0', '1');
INSERT INTO `questions` VALUES ('115', '', '1', '', '55、', '2', '0', '1');
INSERT INTO `questions` VALUES ('116', '', '1', '', '56、', '2', '0', '1');
INSERT INTO `questions` VALUES ('117', '', '1', '', '57、', '2', '0', '1');
INSERT INTO `questions` VALUES ('118', '', '1', '', '58、', '2', '0', '1');
INSERT INTO `questions` VALUES ('119', '', '1', '', '59、', '2', '0', '1');
INSERT INTO `questions` VALUES ('120', '', '1', '', '60、', '2', '0', '1');
INSERT INTO `questions` VALUES ('121', '', '1', '', '61、', '2', '0', '1');
INSERT INTO `questions` VALUES ('122', '', '1', '', '62、', '2', '0', '1');
INSERT INTO `questions` VALUES ('123', '', '1', '', '63、', '2', '0', '1');
INSERT INTO `questions` VALUES ('124', '', '1', '', '64、', '2', '0', '1');
INSERT INTO `questions` VALUES ('125', '', '1', '', '65、', '2', '0', '1');
INSERT INTO `questions` VALUES ('126', '', '1', '', '66、', '2', '0', '1');
INSERT INTO `questions` VALUES ('127', '', '1', '', '67、', '2', '0', '1');
INSERT INTO `questions` VALUES ('128', '', '1', '', '68、', '2', '0', '1');
INSERT INTO `questions` VALUES ('129', '', '1', '', '69、', '2', '0', '1');
INSERT INTO `questions` VALUES ('130', '', '1', '', '70、', '2', '0', '1');
INSERT INTO `questions` VALUES ('131', '', '1', '', '71、', '2', '0', '1');
INSERT INTO `questions` VALUES ('132', '', '1', '', '72、', '2', '0', '1');
INSERT INTO `questions` VALUES ('133', '', '1', '', '73、', '2', '0', '1');
INSERT INTO `questions` VALUES ('134', '', '1', '', '74、', '2', '0', '1');
INSERT INTO `questions` VALUES ('135', '', '1', '', '75、', '2', '0', '1');
INSERT INTO `questions` VALUES ('136', '', '1', '', '76、', '2', '0', '1');
INSERT INTO `questions` VALUES ('137', '', '1', '', '77、', '2', '0', '1');
INSERT INTO `questions` VALUES ('138', '', '1', '', '78、', '2', '0', '1');
INSERT INTO `questions` VALUES ('139', '', '1', '', '79、', '2', '0', '1');
INSERT INTO `questions` VALUES ('140', '', '1', '', '80、', '2', '0', '1');
INSERT INTO `questions` VALUES ('141', '', '1', '', '81、', '2', '0', '1');
INSERT INTO `questions` VALUES ('142', '', '1', '', '82、', '2', '0', '1');
INSERT INTO `questions` VALUES ('143', '', '1', '', '83、', '2', '0', '1');
INSERT INTO `questions` VALUES ('144', '', '1', '', '84、', '2', '0', '1');
INSERT INTO `questions` VALUES ('145', '', '1', '', '85、', '2', '0', '1');
INSERT INTO `questions` VALUES ('146', '', '1', '', '86、', '2', '0', '1');
INSERT INTO `questions` VALUES ('147', '', '1', '', '87、', '2', '0', '1');
INSERT INTO `questions` VALUES ('148', '', '1', '', '88、', '2', '0', '1');
INSERT INTO `questions` VALUES ('149', '', '1', '', '89、', '2', '0', '1');
INSERT INTO `questions` VALUES ('150', '', '1', '', '90、', '2', '0', '1');
INSERT INTO `questions` VALUES ('151', '', '1', '', '91、', '2', '0', '1');
INSERT INTO `questions` VALUES ('152', '', '1', '', '92、', '2', '0', '1');
INSERT INTO `questions` VALUES ('153', '', '1', '', '93、', '2', '0', '1');
INSERT INTO `questions` VALUES ('154', '', '1', '', '94、', '2', '0', '1');
INSERT INTO `questions` VALUES ('155', '', '1', '', '95、', '2', '0', '1');
INSERT INTO `questions` VALUES ('156', '', '1', '', '96、', '2', '0', '1');
INSERT INTO `questions` VALUES ('157', '', '1', '', '97、', '2', '0', '1');
INSERT INTO `questions` VALUES ('158', '', '1', '', '98、', '2', '0', '1');
INSERT INTO `questions` VALUES ('159', '', '1', '', '99、', '2', '0', '1');
INSERT INTO `questions` VALUES ('160', '', '1', '', '100、', '2', '0', '1');
INSERT INTO `questions` VALUES ('161', '', '1', '', '101、', '2', '0', '1');
INSERT INTO `questions` VALUES ('162', '', '1', '', '102、', '2', '0', '1');
INSERT INTO `questions` VALUES ('163', '', '1', '', '103、', '2', '0', '1');
INSERT INTO `questions` VALUES ('164', '', '1', '', '104、', '2', '0', '1');
INSERT INTO `questions` VALUES ('165', '', '1', '', '105、', '2', '0', '1');
INSERT INTO `questions` VALUES ('166', '', '1', '', '106、', '2', '0', '1');
INSERT INTO `questions` VALUES ('167', '', '1', '', '107、', '2', '0', '1');
INSERT INTO `questions` VALUES ('168', '', '1', '', '108、', '2', '0', '1');
INSERT INTO `questions` VALUES ('169', '', '1', '', '109、', '2', '0', '1');
INSERT INTO `questions` VALUES ('170', '', '1', '', '110、', '2', '0', '1');
INSERT INTO `questions` VALUES ('171', '', '1', '', '111、', '2', '0', '1');
INSERT INTO `questions` VALUES ('172', '', '1', '', '112、', '2', '0', '1');
INSERT INTO `questions` VALUES ('173', '', '1', '', '113、', '2', '0', '1');
INSERT INTO `questions` VALUES ('174', '', '1', '', '114、', '2', '0', '1');
INSERT INTO `questions` VALUES ('175', '', '1', '', '115、', '2', '0', '1');
INSERT INTO `questions` VALUES ('176', '', '1', '', '116、', '2', '0', '1');
INSERT INTO `questions` VALUES ('177', '', '1', '', '117、', '2', '0', '1');
INSERT INTO `questions` VALUES ('178', '', '1', '', '118、', '2', '0', '1');
INSERT INTO `questions` VALUES ('179', '', '1', '', '119、', '2', '0', '1');
INSERT INTO `questions` VALUES ('180', '', '1', '', '120、', '2', '0', '1');
INSERT INTO `questions` VALUES ('181', '', '1', '', '121、', '2', '0', '1');
INSERT INTO `questions` VALUES ('182', '', '1', '', '122、', '2', '0', '1');
INSERT INTO `questions` VALUES ('183', '', '1', '', '123、', '2', '0', '1');
INSERT INTO `questions` VALUES ('184', '', '1', '', '124、', '2', '0', '1');
INSERT INTO `questions` VALUES ('185', '', '1', '', '125、', '2', '0', '1');
INSERT INTO `questions` VALUES ('186', '', '1', '', '126、', '2', '0', '1');
INSERT INTO `questions` VALUES ('187', '', '1', '', '127、', '2', '0', '1');
INSERT INTO `questions` VALUES ('188', '', '1', '', '128、', '2', '0', '1');
INSERT INTO `questions` VALUES ('189', '', '1', '', '129、', '2', '0', '1');
INSERT INTO `questions` VALUES ('190', '', '1', '', '130、', '2', '0', '1');
INSERT INTO `questions` VALUES ('191', '', '1', '', '131、', '2', '0', '1');
INSERT INTO `questions` VALUES ('192', '', '1', '', '132、', '2', '0', '1');
INSERT INTO `questions` VALUES ('193', '', '1', '', '133、', '2', '0', '1');
INSERT INTO `questions` VALUES ('194', '', '1', '', '134、', '2', '0', '1');
INSERT INTO `questions` VALUES ('195', '', '1', '', '135、', '2', '0', '1');
INSERT INTO `questions` VALUES ('196', '', '1', '', '136、', '2', '0', '1');
INSERT INTO `questions` VALUES ('197', '', '1', '', '137、', '2', '0', '1');
INSERT INTO `questions` VALUES ('198', '', '1', '', '138、', '2', '0', '1');
INSERT INTO `questions` VALUES ('199', '', '1', '', '139、', '2', '0', '1');
INSERT INTO `questions` VALUES ('200', '', '1', '', '140、', '2', '0', '1');
INSERT INTO `questions` VALUES ('201', '', '1', '', '141、', '2', '0', '1');
INSERT INTO `questions` VALUES ('202', '', '1', '', '142、', '2', '0', '1');
INSERT INTO `questions` VALUES ('203', '', '1', '', '143、', '2', '0', '1');
INSERT INTO `questions` VALUES ('204', '', '1', '', '144、', '2', '0', '1');
INSERT INTO `questions` VALUES ('205', '', '1', '', '145、', '2', '0', '1');
INSERT INTO `questions` VALUES ('206', '', '1', '', '146、', '2', '0', '1');
INSERT INTO `questions` VALUES ('207', '', '1', '', '147、', '2', '0', '1');
INSERT INTO `questions` VALUES ('208', '', '1', '', '148、', '2', '0', '1');
INSERT INTO `questions` VALUES ('209', '', '1', '', '149、', '2', '0', '1');
INSERT INTO `questions` VALUES ('210', '', '1', '', '150、', '2', '0', '1');
INSERT INTO `questions` VALUES ('211', '', '1', '', '1、认识你的人倾向形容你为：', '3', '0', '1');
INSERT INTO `questions` VALUES ('212', '', '1', '', '2、下列哪一件事听起来比较吸引你？', '3', '0', '1');
INSERT INTO `questions` VALUES ('213', '', '1', '', '3、你倾向通过以下哪种方式收集信息：', '3', '0', '1');
INSERT INTO `questions` VALUES ('214', '', '1', '', '4、哪种特质更像你：', '3', '0', '1');
INSERT INTO `questions` VALUES ('215', '', '1', '', '5、 你是否经常让:', '3', '0', '1');
INSERT INTO `questions` VALUES ('216', '', '1', '', '6、当与一个人交往时，你倾向于看重：', '3', '0', '1');
INSERT INTO `questions` VALUES ('217', '', '1', '', '7、你倾向拥有：', '3', '0', '1');
INSERT INTO `questions` VALUES ('218', '', '1', '', '8、过去，你的朋友倾向对你说：', '3', '0', '1');
INSERT INTO `questions` VALUES ('219', '', '1', '', '9、当你对一个聚会觉得放心时，你偏向谈论：', '3', '0', '1');
INSERT INTO `questions` VALUES ('220', '', '1', '', '10、你倾向相信：', '3', '0', '1');
INSERT INTO `questions` VALUES ('221', '', '1', '', '11、在聚会中，你通常：', '3', '0', '1');
INSERT INTO `questions` VALUES ('222', '', '1', '', '12、 在与某个人第一次约会中：', '3', '0', '1');
INSERT INTO `questions` VALUES ('223', '', '1', '', '13、你通常比较喜欢的是', '3', '0', '1');
INSERT INTO `questions` VALUES ('224', '', '1', '', '14、你是这种人:', '3', '0', '1');
INSERT INTO `questions` VALUES ('225', '', '1', '', '15、与人聚会的时候', '3', '0', '1');
INSERT INTO `questions` VALUES ('226', '', '1', '', '16、你是这类型的人：', '3', '0', '1');
INSERT INTO `questions` VALUES ('227', '', '1', '', '17、哪一项较常见：', '3', '0', '1');
INSERT INTO `questions` VALUES ('228', '', '1', '', '18、你偏好：', '3', '0', '1');
INSERT INTO `questions` VALUES ('229', '', '1', '', '19、你是此类型的人：', '3', '0', '1');
INSERT INTO `questions` VALUES ('230', '', '1', '', '20、你倾向如此做决定：', '3', '0', '1');
INSERT INTO `questions` VALUES ('231', '', '1', '', '21、你倾向从何处得到力量：', '3', '0', '1');
INSERT INTO `questions` VALUES ('232', '', '1', '', '22、一般来说，你和哪些人比较合得来？', '3', '0', '1');
INSERT INTO `questions` VALUES ('233', '', '1', '', '23、当你参加一个社交聚会时，你会：', '3', '0', '1');
INSERT INTO `questions` VALUES ('234', '', '1', '', '24、当你不同意他人的想法时：', '3', '0', '1');
INSERT INTO `questions` VALUES ('235', '', '1', '', '25、你倾向比较能够察觉到：', '3', '0', '1');
INSERT INTO `questions` VALUES ('236', '', '1', '', '26、处理许多事情上，你会喜欢', '3', '0', '1');
INSERT INTO `questions` VALUES ('237', '', '1', '', '27、你选择的生活充满着：', '3', '0', '1');
INSERT INTO `questions` VALUES ('238', '', '1', '', '28、你是这种喜欢……的人：', '3', '0', '1');

-- ----------------------------
-- Table structure for sub_questions
-- ----------------------------
DROP TABLE IF EXISTS `sub_questions`;
CREATE TABLE `sub_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `question_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `type_name` varchar(45) NOT NULL DEFAULT '',
  `type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8 COMMENT='子问题';

-- ----------------------------
-- Records of sub_questions
-- ----------------------------
INSERT INTO `sub_questions` VALUES ('1', '', '1', '', 'A.同意', '1', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('2', '', '1', '', 'B.不同意', '1', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('3', '', '1', '', 'A.同意', '2', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('4', '', '1', '', 'B.不同意', '2', '2', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('5', '', '1', '', 'A.同意', '3', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('6', '', '1', '', 'B.不同意', '3', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('7', '', '1', '', 'A.同意', '4', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('8', '', '1', '', 'B.不同意', '4', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('9', '', '1', '', 'A.同意', '5', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('10', '', '1', '', 'B.不同意', '5', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('11', '', '1', '', 'A.同意', '6', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('12', '', '1', '', 'B.不同意', '6', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('13', '', '1', '', 'A.同意', '7', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('14', '', '1', '', 'B.不同意', '7', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('15', '', '1', '', 'A.同意', '8', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('16', '', '1', '', 'B.不同意', '8', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('17', '', '1', '', 'A.同意', '9', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('18', '', '1', '', 'B.不同意', '9', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('19', '', '1', '', 'A.同意', '10', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('20', '', '1', '', 'B.不同意', '10', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('21', '', '1', '', 'A.同意', '11', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('22', '', '1', '', 'B.不同意', '11', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('23', '', '1', '', 'A.同意', '12', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('24', '', '1', '', 'B.不同意', '12', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('25', '', '1', '', 'A.同意', '13', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('26', '', '1', '', 'B.不同意', '13', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('27', '', '1', '', 'A.同意', '14', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('28', '', '1', '', 'B.不同意', '14', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('29', '', '1', '', 'A.同意', '15', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('30', '', '1', '', 'B.不同意', '15', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('31', '', '1', '', 'A.同意', '16', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('32', '', '1', '', 'B.不同意', '16', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('33', '', '1', '', 'A.同意', '17', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('34', '', '1', '', 'B.不同意', '17', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('35', '', '1', '', 'A.同意', '18', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('36', '', '1', '', 'B.不同意', '18', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('37', '', '1', '', 'A.同意', '19', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('38', '', '1', '', 'B.不同意', '19', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('39', '', '1', '', 'A.同意', '20', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('40', '', '1', '', 'B.不同意', '20', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('41', '', '1', '', 'A.同意', '21', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('42', '', '1', '', 'B.不同意', '21', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('43', '', '1', '', 'A.同意', '22', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('44', '', '1', '', 'B.不同意', '22', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('45', '', '1', '', 'A.同意', '23', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('46', '', '1', '', 'B.不同意', '23', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('47', '', '1', '', 'A.同意', '24', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('48', '', '1', '', 'B.不同意', '24', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('49', '', '1', '', 'A.同意', '25', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('50', '', '1', '', 'B.不同意', '25', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('51', '', '1', '', 'A.同意', '26', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('52', '', '1', '', 'B.不同意', '26', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('53', '', '1', '', 'A.同意', '27', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('54', '', '1', '', 'B.不同意', '27', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('55', '', '1', '', 'A.同意', '28', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('56', '', '1', '', 'B.不同意', '28', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('57', '', '1', '', 'A.同意', '29', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('58', '', '1', '', 'B.不同意', '29', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('59', '', '1', '', 'A.同意', '30', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('60', '', '1', '', 'B.不同意', '30', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('61', '', '1', '', 'A.同意', '31', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('62', '', '1', '', 'B.不同意', '31', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('63', '', '1', '', 'A.同意', '32', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('64', '', '1', '', 'B.不同意', '32', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('65', '', '1', '', 'A.同意', '33', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('66', '', '1', '', 'B.不同意', '33', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('67', '', '1', '', 'A.同意', '34', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('68', '', '1', '', 'B.不同意', '34', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('69', '', '1', '', 'A.同意', '35', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('70', '', '1', '', 'B.不同意', '35', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('71', '', '1', '', 'A.同意', '36', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('72', '', '1', '', 'B.不同意', '36', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('73', '', '1', '', 'A.同意', '37', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('74', '', '1', '', 'B.不同意', '37', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('75', '', '1', '', 'A.同意', '38', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('76', '', '1', '', 'B.不同意', '38', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('77', '', '1', '', 'A.同意', '39', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('78', '', '1', '', 'B.不同意', '39', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('79', '', '1', '', 'A.同意', '40', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('80', '', '1', '', 'B.不同意', '40', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('81', '', '1', '', 'A.同意', '41', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('82', '', '1', '', 'B.不同意', '41', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('83', '', '1', '', 'A.同意', '42', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('84', '', '1', '', 'B.不同意', '42', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('85', '', '1', '', 'A.同意', '43', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('86', '', '1', '', 'B.不同意', '43', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('87', '', '1', '', 'A.同意', '44', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('88', '', '1', '', 'B.不同意', '44', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('89', '', '1', '', 'A.同意', '45', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('90', '', '1', '', 'B.不同意', '45', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('91', '', '1', '', 'A.同意', '46', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('92', '', '1', '', 'B.不同意', '46', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('93', '', '1', '', 'A.同意', '47', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('94', '', '1', '', 'B.不同意', '47', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('95', '', '1', '', 'A.同意', '48', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('96', '', '1', '', 'B.不同意', '48', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('97', '', '1', '', 'A.同意', '49', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('98', '', '1', '', 'B.不同意', '49', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('99', '', '1', '', 'A.同意', '50', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('100', '', '1', '', 'B.不同意', '50', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('101', '', '1', '', 'A.同意', '51', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('102', '', '1', '', 'B.不同意', '51', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('103', '', '1', '', 'A.同意', '52', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('104', '', '1', '', 'B.不同意', '52', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('105', '', '1', '', 'A.同意', '53', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('106', '', '1', '', 'B.不同意', '53', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('107', '', '1', '', 'A.同意', '54', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('108', '', '1', '', 'B.不同意', '54', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('109', '', '1', '', 'A.同意', '55', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('110', '', '1', '', 'B.不同意', '55', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('111', '', '1', '', 'A.同意', '56', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('112', '', '1', '', 'B.不同意', '56', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('113', '', '1', '', 'A.同意', '57', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('114', '', '1', '', 'B.不同意', '57', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('115', '', '1', '', 'A.同意', '58', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('116', '', '1', '', 'B.不同意', '58', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('117', '', '1', '', 'A.同意', '59', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('118', '', '1', '', 'B.不同意', '59', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('119', '', '1', '', 'A.同意', '60', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('120', '', '1', '', 'B.不同意', '60', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('121', '', '1', '', '我喜欢和陌生人打交道', '61', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('122', '', '1', '', '我喜欢分析事物的原理', '61', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('123', '', '1', '', '我规划未来', '62', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('124', '', '1', '', '我总结过去', '62', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('125', '', '1', '', '我能够让每个人都喜欢我', '63', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('126', '', '1', '', '我想要每个人都崇拜我', '63', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('127', '', '1', '', '我力争第一', '64', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('128', '', '1', '', '我渴望被人认同', '64', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('129', '', '1', '', '我非常努力的学习，注重学习成果', '65', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('130', '', '1', '', '我学习努力，注重学习的过程', '65', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('131', '', '1', '', '我宁缺毋滥', '66', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('132', '', '1', '', '我解决困难', '66', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('133', '', '1', '', '我是一个重视集体氛围的人', '67', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('134', '', '1', '', '我理智，不冲动，追寻事物的本质', '67', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('135', '', '1', '', '我了解别人的个性特点', '68', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('136', '', '1', '', '我能够接受多种类型的人', '68', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('137', '', '1', '', '我喜欢与别人合作', '69', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('138', '', '1', '', '我擅长与陌生人交谈', '69', '2', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('139', '', '1', '', '我对生活的感觉极好', '70', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('140', '', '1', '', '我认为自己很能干', '70', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('141', '', '1', '', '我能使别人有成就感', '71', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('142', '', '1', '', '我能使别人感到我的建议很重要', '71', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('143', '', '1', '', '我按照自己的价值观去生活', '72', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('144', '', '1', '', '我按照自己的理想生活', '72', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('145', '', '1', '', '成为他人的知己使我感觉很爽', '73', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('146', '', '1', '', '我希望大家都能听我的', '73', '2', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('147', '', '1', '', '只要我认定了，就会马上展开行动', '74', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('148', '', '1', '', '只要我认定了，都会始终做到底', '74', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('149', '', '1', '', '我致力于发展', '75', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('150', '', '1', '', '我信守自己的价值观', '75', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('151', '', '1', '', '我要在自己的生活中保持平衡', '76', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('152', '', '1', '', '我希望我的家庭过最好的生活', '76', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('153', '', '1', '', '我每天多次谈到自己对未来的展望', '77', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('154', '', '1', '', '我特意腾出时间思考怎样实现未来', '77', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('155', '', '1', '', '我一旦做出决定，就必须付诸行动', '78', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('156', '', '1', '', '我在行动之前需要确定一切可能发生的因素', '78', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('157', '', '1', '', '我比大多数人更加专心去完成要做的事', '79', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('158', '', '1', '', '我比大多数人更加善于去观察别人做事的方法', '79', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('159', '', '1', '', '我善于交谈', '80', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('160', '', '1', '', '我善于倾听', '80', '2', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('161', '', '1', '', '我喜欢竞赛', '81', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('162', '', '1', '', '我喜欢学习', '81', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('163', '', '1', '', '我思考问题总是考虑大家的想法', '82', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('164', '', '1', '', '我思考问题总是设想各种结果，观察走向', '82', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('165', '', '1', '', '我充满活力，满怀喜悦和欢乐', '83', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('166', '', '1', '', '我了解影响形势的所有因素', '83', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('167', '', '1', '', '我想成为一家公司的总裁', '84', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('168', '', '1', '', '我时常牵挂我的朋友和家人', '84', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('169', '', '1', '', '我会威逼别人', '85', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('170', '', '1', '', '我会唠唠叨叨劝说别人', '85', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('171', '', '1', '', '我能设身处地为别人着想，理解他们的感受', '86', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('172', '', '1', '', '我爱所有的人', '86', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('173', '', '1', '', '我很优秀', '87', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('174', '', '1', '', '我很快乐', '87', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('175', '', '1', '', '我尽量与别人一起做事', '88', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('176', '', '1', '', '我尽量指导别人', '88', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('177', '', '1', '', '有人不喜欢我时，我会感到沮丧', '89', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('178', '', '1', '', '如果做自己认为不对的事，我就会感到内疚', '89', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('179', '', '1', '', '我喜欢解决问题，享受解决问题的成就感', '90', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('180', '', '1', '', '我要研究透彻，确保不犯错误', '90', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('181', '', '1', '', '我擅长了解人的本质特点', '91', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('182', '', '1', '', '我擅长了解事物的本质特点', '91', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('183', '', '1', '', '我喜欢与富有哲理的人交往', '92', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('184', '', '1', '', '我喜欢与奋斗并比我强的人交往', '92', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('185', '', '1', '', '我乐于使别人提高其自身价值', '93', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('186', '', '1', '', '我乐于使别人认识自己的特点', '93', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('187', '', '1', '', '我总能感觉到他人的想法', '94', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('188', '', '1', '', '我能从逻辑上了解事物本质', '94', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('189', '', '1', '', '我对表面现象持有一种健康的怀疑态度', '95', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('190', '', '1', '', '我相信自己与全人类都有关系', '95', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('191', '', '1', '', '我的朋友经常请我讲故事', '96', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('192', '', '1', '', '我的朋友经常邀请我参加集体活动', '96', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('193', '', '1', '', '我和朋友关系好是因为他们觉得我很忠诚很可靠', '97', '1', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('194', '', '1', '', '我和朋友关系好是因为我善于维护和建立亲密的关系', '97', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('195', '', '1', '', '我只对感兴趣的部分更努力更持久', '98', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('196', '', '1', '', '我对有价值有意义的事情精力充沛', '98', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('197', '', '1', '', '任何与体育有关的事都会强烈吸引我', '99', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('198', '', '1', '', '任何与人文思想有关的事都会强烈吸引我', '99', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('199', '', '1', '', '我是一个十分整洁的人', '100', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('200', '', '1', '', '我坚守自己的决定', '100', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('201', '', '1', '', '我通过与别人分享而成长', '101', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('202', '', '1', '', '我通过主动学习而成长', '101', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('203', '', '1', '', '我按照既定的目标去行动', '102', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('204', '', '1', '', '我把眼前的问题解决好', '102', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('205', '', '1', '', '我注重未来能够取得的成就', '103', '1', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('206', '', '1', '', '我想象自己如何应对未来可能发生的事件', '103', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('207', '', '1', '', '我能很好的理解别人', '104', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('208', '', '1', '', '我能很长久的联系别人', '104', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('209', '', '1', '', '我不排斥任何人，从而不伤害他们的感情', '105', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('210', '', '1', '', '我仔细挑选我的朋友', '105', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('211', '', '1', '', '我不自负，能够和大多数人融入在一起', '106', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('212', '', '1', '', '被别人视为可信、专业化和成功的人士对我很重要', '106', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('213', '', '1', '', '我喜欢追求历史的起因', '107', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('214', '', '1', '', '我喜欢预测未来', '107', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('215', '', '1', '', '我对自己的生活中遇到的事件进行分析', '108', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('216', '', '1', '', '我对影响我生活的事件充满激情', '108', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('217', '', '1', '', '我通过发挥自身优势取得进步', '109', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('218', '', '1', '', '我通过克服自身弱点取得进步', '109', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('219', '', '1', '', '对我来说，每件事都必须分轻重缓急', '110', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('220', '', '1', '', '我喜欢听取他人的建议', '110', '2', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('221', '', '1', '', '我寻找各种不同的做事方法', '111', '1', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('222', '', '1', '', '我确立常规的做事方法', '111', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('223', '', '1', '', '我征求别人的意见', '112', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('224', '', '1', '', '别人征求我的意见', '112', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('225', '', '1', '', '我认为平等对待所有人和制定明确的规则至关重要', '113', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('226', '', '1', '', '我认为应当发现、激励每个人的优势', '113', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('227', '', '1', '', '我借助大家的意见寻找正确答案', '114', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('228', '', '1', '', '我对答案和问题一目了然', '114', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('229', '', '1', '', '我慷慨地称赞任何人', '115', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('230', '', '1', '', '我只称赞值得称赞的人', '115', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('231', '', '1', '', '我只有在竞争中赢得第一才会完全满意', '116', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('232', '', '1', '', '只要与别人一起参与竞赛我就很满足', '116', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('233', '', '1', '', '我善于使截然不同的人相互合作', '117', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('234', '', '1', '', '我平等的对待不同的人', '117', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('235', '', '1', '', '我尽量不离开自己的舒适领地', '118', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('236', '', '1', '', '我是一个寻求刺激的人', '118', '2', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('237', '', '1', '', '我能够体会别人的感受', '119', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('238', '', '1', '', '我喜欢与别人高谈阔论', '119', '2', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('239', '', '1', '', '我凭感觉认知别人的特点', '120', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('240', '', '1', '', '我凭理智进行重要决策', '120', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('241', '', '1', '', '我随机应变，根据着事情发生而做出反应', '121', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('242', '', '1', '', '我分清事情的轻重缓急，然后采取行动', '121', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('243', '', '1', '', '我喜欢每个人', '122', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('244', '', '1', '', '我要每个人都喜欢我', '122', '2', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('245', '', '1', '', '我处事很灵活', '123', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('246', '', '1', '', '我喜欢面对困难', '123', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('247', '', '1', '', '我每周设定学习目标，并为完成而努力', '124', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('248', '', '1', '', '我根据当日需求灵活安排自己的学习和生活', '124', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('249', '', '1', '', '我喜欢处理好眼前的事', '125', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('250', '', '1', '', '我为未来而生活', '125', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('251', '', '1', '', '我认为家庭是第一位的', '126', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('252', '', '1', '', '我认为不断吸取知识是第一位的', '126', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('253', '', '1', '', '我研究别人行为的根源', '127', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('254', '', '1', '', '我惯于自我反思', '127', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('255', '', '1', '', '我按部就班', '128', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('256', '', '1', '', '我热情洋溢', '128', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('257', '', '1', '', '我很会讲故事', '129', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('258', '', '1', '', '我善于辅导别人', '129', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('259', '', '1', '', '我对自己在生活中取得的进步感到满意', '130', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('260', '', '1', '', '我的生活充满了变化', '130', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('261', '', '1', '', '我喜欢讲话', '131', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('262', '', '1', '', '我喜欢思考', '131', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('263', '', '1', '', '我追求完美', '132', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('264', '', '1', '', '我是个实干家', '132', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('265', '', '1', '', '我思考问题尽量不与权威对抗', '133', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('266', '', '1', '', '我思考问题具有战略眼光', '133', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('267', '', '1', '', '我寻找能坦诚指出我弱点的人', '134', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('268', '', '1', '', '我喜欢欣赏我长处的人', '134', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('269', '', '1', '', '我善于交际', '135', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('270', '', '1', '', '我喜欢与朋友一起合作', '135', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('271', '', '1', '', '我讲话从不缺少词汇', '136', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('272', '', '1', '', '谈论自己使我为难', '136', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('273', '', '1', '', '我是一个无忧无虑的人', '137', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('274', '', '1', '', '我是一个严肃的人', '137', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('275', '', '1', '', '我善于观察人们之间的区别', '138', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('276', '', '1', '', '我平等对待每个人', '138', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('277', '', '1', '', '我的成功之道在于谦虚自省', '139', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('278', '', '1', '', '我的成功之道在于自学的能力', '139', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('279', '', '1', '', '在遇到困难而必须圆满完成任务时，我往往先抓重点', '140', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('280', '', '1', '', '我往往关注细节，面面俱到', '140', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('281', '', '1', '', '我性格外向', '141', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('282', '', '1', '', '我在必要时能够做到开朗大方', '141', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('283', '', '1', '', '我的学习已经满负荷', '142', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('284', '', '1', '', '我还有很大潜能', '142', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('285', '', '1', '', '我以整洁著称', '143', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('286', '', '1', '', '我以富有幽默感著称', '143', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('287', '', '1', '', '我正在创造我的未来', '144', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('288', '', '1', '', '我研究我的未来', '144', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('289', '', '1', '', '我喜欢挑战别人', '145', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('290', '', '1', '', '我喜欢鼓励别人', '145', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('291', '', '1', '', '我非常在意隐私', '146', '1', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('292', '', '1', '', '我处理问题井井有条', '146', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('293', '', '1', '', '我迫使大家达成一致', '147', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('294', '', '1', '', '我是一个充满欢乐的人', '147', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('295', '', '1', '', '我因为理解别人的想法，有时会奉迎别人', '148', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('296', '', '1', '', '我认为每个部分都很重要，不能失去整体平衡', '148', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('297', '', '1', '', '我用更多的时间去发现问题', '149', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('298', '', '1', '', '我更多的时候是跟着感觉走', '149', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('299', '', '1', '', '我很少赞扬别人，因此当我这样做时就显得很有分量', '150', '1', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('300', '', '1', '', '我慷慨地赞美别人', '150', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('301', '', '1', '', '我收集新东西', '151', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('302', '', '1', '', '我的价值观很稳定', '151', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('303', '', '1', '', '我喜欢解决实际问题', '152', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('304', '', '1', '', '我喜欢制定目标的讨论', '152', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('305', '', '1', '', '我喜欢独处', '153', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('306', '', '1', '', '我想念我的朋友', '153', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('307', '', '1', '', '我想象未来', '154', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('308', '', '1', '', '我理解造成当前情形的原因', '154', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('309', '', '1', '', '我会把秘密与朋友分享', '155', '1', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('310', '', '1', '', '我基本不会把秘密和朋友分享', '155', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('311', '', '1', '', '我小时候好强而独立', '156', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('312', '', '1', '', '我小时候循规蹈矩', '156', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('313', '', '1', '', '我喜欢招待别人', '157', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('314', '', '1', '', '我喜欢竞技活动', '157', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('315', '', '1', '', '我讨厌被别人控制', '158', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('316', '', '1', '', '我要避免空虚', '158', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('317', '', '1', '', '我的自信给我动力', '159', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('318', '', '1', '', '我的责任给我动力', '159', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('319', '', '1', '', '我的快乐能感染别人', '160', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('320', '', '1', '', '我以辅导别人成长为快乐', '160', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('321', '', '1', '', '我过于相信别人', '161', '1', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('322', '', '1', '', '我过于雄心勃勃', '161', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('323', '', '1', '', '过去发生的事情激励我', '162', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('324', '', '1', '', '未来可能取得的成就激励我', '162', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('325', '', '1', '', '兵来将挡水来土掩', '163', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('326', '', '1', '', '说到就要做到', '163', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('327', '', '1', '', '我是一个重视平衡的人', '164', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('328', '', '1', '', '我是一个敢于担当的人', '164', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('329', '', '1', '', '我有强烈求知欲', '165', '1', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('330', '', '1', '', '我立志有所建树', '165', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('331', '', '1', '', '我经常考虑因果关系', '166', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('332', '', '1', '', '我遇到事情及时应对', '166', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('333', '', '1', '', '我不怕失败，勇敢面对问题', '167', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('334', '', '1', '', '我解决失败造成的影响', '167', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('335', '', '1', '', '我对我的现状存有不满', '168', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('336', '', '1', '', '我对我的现状感到满足', '168', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('337', '', '1', '', '我待人随和', '169', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('338', '', '1', '', '我敢冒风险', '169', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('339', '', '1', '', '我鼓励朋友有所作为', '170', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('340', '', '1', '', '我对待每个人都一样', '170', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('341', '', '1', '', '我不喜欢走后门找关系', '171', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('342', '', '1', '', '我只关注哪些事情做得正确', '171', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('343', '', '1', '', '学习的时候我会全力以赴', '172', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('344', '', '1', '', '只要需要，任何时候我都可以投入学习', '172', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('345', '', '1', '', '开始新任务对我很容易', '173', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('346', '', '1', '', '我发现问题并主动解决', '173', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('347', '', '1', '', '我不拒绝任何人', '174', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('348', '', '1', '', '我仔细挑选价值观相同的人', '174', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('349', '', '1', '', '我通常与别人在一起', '175', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('350', '', '1', '', '我通常意志坚强', '175', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('351', '', '1', '', '如有必要，我能整晚集中精力学习', '176', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('352', '', '1', '', '只要取胜就行', '176', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('353', '', '1', '', '战胜对手使我成就感十足', '177', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('354', '', '1', '', '攻克复杂的难题使我倍感兴奋', '177', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('355', '', '1', '', '我同时做几件事效率最高', '178', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('356', '', '1', '', '我习惯于一次做一件事', '178', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('357', '', '1', '', '通过总结过去，我能预测未来', '179', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('358', '', '1', '', '通过分析变量因素，我能预测未来', '179', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('359', '', '1', '', '我发起并积极推动', '180', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('360', '', '1', '', '我承诺并一心落实', '180', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('361', '', '1', '', '我能随时随地进入学习状态', '181', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('362', '', '1', '', '我善于构思新点子', '181', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('363', '', '1', '', '解决问题时我通常先思考其内部规律', '182', '1', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('364', '', '1', '', '解决问题时我通常先思考过去的成功经验', '182', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('365', '', '1', '', '我喜欢外出增长见识，因为这能使我了解更多有用信息', '183', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('366', '', '1', '', '我喜欢关注体育，因为体育有竞技，争抢和胜利', '183', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('367', '', '1', '', '我偏重于创意和新概念', '184', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('368', '', '1', '', '我偏重于实际行动', '184', '2', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('369', '', '1', '', '我使用简短和概念性的词汇', '185', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('370', '', '1', '', '我相信善有善报、恶有恶报', '185', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('371', '', '1', '', '用语言表达思想对我十分容易', '186', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('372', '', '1', '', '我善于借用别人的思想和办法', '186', '2', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('373', '', '1', '', '我喜爱从阅读中寻找信息', '187', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('374', '', '1', '', '我喜欢琢磨事物的工作原理', '187', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('375', '', '1', '', '我的大脑不停地思考', '188', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('376', '', '1', '', '我说干就干', '188', '2', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('377', '', '1', '', '我更在意别人的想法', '189', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('378', '', '1', '', '我喜欢发表建议', '189', '2', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('379', '', '1', '', '我喜欢了解我所不懂的', '190', '1', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('380', '', '1', '', '我喜欢从数据中研究规律', '190', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('381', '', '1', '', '我渴望扩大信息量', '191', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('382', '', '1', '', '我渴望得到认可', '191', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('383', '', '1', '', '我往往能够快速及时的开始一个任务', '192', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('384', '', '1', '', '我说到做到，言而有信', '192', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('385', '', '1', '', '一个新创意会使我激动不已', '193', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('386', '', '1', '', '完成交给我的任务会使我激动不已', '193', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('387', '', '1', '', '和别人在一起时，我觉得我的点子最多', '194', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('388', '', '1', '', '和别人在一起时，我觉得我的信息最充分', '194', '2', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('389', '', '1', '', '我善于追本溯源，将复杂事物清晰化、概念化', '195', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('390', '', '1', '', '我善于处理复杂事物，将其流程化', '195', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('391', '', '1', '', '我能快速阅读我感兴趣的书籍，并获取我需要的东西', '196', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('392', '', '1', '', '我阅读缓慢，因为我需要推敲其中的内容', '196', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('393', '', '1', '', '取胜的结果最重要', '197', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('394', '', '1', '', '按规则做事最重要', '197', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('395', '', '1', '', '生活中人与人之间存在紧密的联系', '198', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('396', '', '1', '', '我能主导自己的生活', '198', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('397', '', '1', '', '我每周至少花5小时独自思考', '199', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('398', '', '1', '', '我喜欢和别人在一起', '199', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('399', '', '1', '', '我通过发挥长处以达到极致', '200', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('400', '', '1', '', '我通过解决问题使自己成长', '200', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('401', '', '1', '', '只要确定目标，我往往先做再说', '201', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('402', '', '1', '', '我热爱人们，担心我的行为会影响别人', '201', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('403', '', '1', '', '我通过倾听，使人们感到获得理解', '202', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('404', '', '1', '', '我坚持为人处世的原则', '202', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('405', '', '1', '', '我对要完成的目标能集中注意力', '203', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('406', '', '1', '', '当我的任务完成时，我的思路更清晰', '203', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('407', '', '1', '', '我喜欢要求、过程和目标都非常精确的任务', '204', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('408', '', '1', '', '我喜欢个人成绩的提升空间很大的学习方法', '204', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('409', '', '1', '', '我像一个老师，喜欢辅导别人', '205', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('410', '', '1', '', '我像一个监督者，一切井井有条', '205', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('411', '', '1', '', '我帮助别人解决问题得到满足感', '206', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('412', '', '1', '', '我比别人更渴望主宰自己的生活', '206', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('413', '', '1', '', '永远没有理由偏袒任何人', '207', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('414', '', '1', '', '永远没有理由言而无信', '207', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('415', '', '1', '', '我只对感兴趣的事特别关注', '208', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('416', '', '1', '', '我对任何需要做的事都会全力以赴', '208', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('417', '', '1', '', '我善于争取别人', '209', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('418', '', '1', '', '我善于了解别人', '209', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('419', '', '1', '', '我喜欢把过去发生的事和现在的事联系在一起', '210', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('420', '', '1', '', '我能把看上去毫不相关的事相互联系在一起', '210', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('421', '', '1', '', 'A 热情和敏感', '211', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('422', '', '1', '', 'B 逻辑和明确', '211', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('423', '', '1', '', 'A 与朋友到有很多人且社交活动频繁的地方', '212', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('424', '', '1', '', 'B 呆在家中与朋友玩游戏，看电影并享用你最喜欢的外卖食物', '212', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('425', '', '1', '', 'A 你对有可能发生之事的想像和期望', '213', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('426', '', '1', '', 'B 你对目前状况的实际认知', '213', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('427', '', '1', '', 'A 友善而仁慈', '214', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('428', '', '1', '', 'B 冷静而理智', '214', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('429', '', '1', '', 'A 你的情感支配你的理智', '215', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('430', '', '1', '', 'B 你的理智主宰你的情感', '215', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('431', '', '1', '', 'A 情感上的相容性：表达关心和对朋友的感受很敏感。', '216', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('432', '', '1', '', 'B 智慧上的相容性：沟通重要的想法；客观地讨论和辩论事情。', '216', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('433', '', '1', '', 'A 与陌生人容易混熟', '217', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('434', '', '1', '', 'B 比较沉静或矜持', '217', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('435', '', '1', '', 'A 你难道不可以安静一会儿吗？', '218', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('436', '', '1', '', 'B 可以请你从你的世界中出来一下吗？', '218', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('437', '', '1', '', 'A 未来，关于改进或发明事物和生活的种种可能性', '219', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('438', '', '1', '', 'B 实际的、具体的、关于“此时此地”的事物', '219', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('439', '', '1', '', 'A 你的直觉', '220', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('440', '', '1', '', 'B 你直接的观察和现成的经验', '220', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('441', '', '1', '', 'A 整体来说很健谈', '221', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('442', '', '1', '', 'B 较安静并保留，直到你觉得舒服', '221', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('443', '', '1', '', 'A 若你所约的人来迟了，你会很不高兴。', '222', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('444', '', '1', '', 'B 一点儿都不在乎，因为你自己常常迟到。', '222', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('445', '', '1', '', 'A 概念、想象、抽象的', '223', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('446', '', '1', '', 'B 细化、真实、具体的', '223', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('447', '', '1', '', 'A 喜欢先纵观全局。', '224', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('448', '', '1', '', 'B 喜欢先掌握细节。', '224', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('449', '', '1', '', 'A 令你活力培增', '225', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('450', '', '1', '', 'B 常常令你感到无趣', '225', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('451', '', '1', '', 'A 与其活在现实中，不如活在想像里。', '226', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('452', '', '1', '', 'B 与其活在想像里，不如活在现实中。', '226', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('453', '', '1', '', 'A 你准时出席而其他人都迟到。', '227', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('454', '', '1', '', 'B 其他人都准时出席而你迟到。', '227', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('455', '', '1', '', 'A 事先知道聚会的行程：要去哪里、有谁参加、你会在那里多久、该如何打扮。', '228', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('456', '', '1', '', 'B 让聚会自然地发生，不做太多事先的计划。', '228', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('457', '', '1', '', 'A 喜欢在一段时间里专心于一件事情直到完成。', '229', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('458', '', '1', '', 'B 享受同时进行好几件事情。', '229', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('459', '', '1', '', 'A 首先依你的心意，然后依你的逻辑。', '230', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('460', '', '1', '', 'B 首先依你的逻辑，然后依你的心意。', '230', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('461', '', '1', '', 'A 朋友。', '231', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('462', '', '1', '', 'B 自己的想法。', '231', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('463', '', '1', '', 'A 有哲理的人', '232', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('464', '', '1', '', 'B 务实的人', '232', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('465', '', '1', '', 'A 在夜色很深时，一旦你开始投入，也许就是最晚离开的那一个。', '233', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('466', '', '1', '', 'B 在夜晚刚开始的时候，你就疲倦了并且想回家。', '233', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('467', '', '1', '', 'A 你尽可能地避免伤害对方的感情；若是会对对方造成伤害的话，你就不会说。', '234', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('468', '', '1', '', 'B 你通常毫无保留地说话，并且对他人直言不讳，因为对的就是对的。', '234', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('469', '', '1', '', 'A 当人们需要情感上的支持时。', '235', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('470', '', '1', '', 'B 当人们不合逻辑时。', '235', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('471', '', '1', '', 'A 按照计划行事', '236', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('472', '', '1', '', 'B 凭兴所至行事，喜欢变化', '236', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('473', '', '1', '', 'A 日程表和预先安排。', '237', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('474', '', '1', '', 'B 自然发生和弹性。', '237', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('475', '', '1', '', 'A 下定决心并且做出最后肯定的结论。', '238', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('476', '', '1', '', 'B 放宽你的选择面并且持续收集信息。', '238', '2', '3', 'P', '8', '1');

-- ----------------------------
-- Table structure for subjects
-- ----------------------------
DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='测评主题';

-- ----------------------------
-- Records of subjects
-- ----------------------------
INSERT INTO `subjects` VALUES ('1', '高中测评', '1', '', '2018-04-24 09:53:05', '2018-04-27 13:09:18');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
