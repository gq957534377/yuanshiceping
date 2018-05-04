/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : yuanshiceping

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-05-04 18:41:30
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
  `number` tinyint(4) NOT NULL DEFAULT '0' COMMENT '在b类题中出现的次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='才干，能力';

-- ----------------------------
-- Records of abilities
-- ----------------------------
INSERT INTO `abilities` VALUES ('1', '取悦', '1', '0', '9');
INSERT INTO `abilities` VALUES ('2', '分析', '1', '0', '9');
INSERT INTO `abilities` VALUES ('3', '前瞻', '1', '0', '9');
INSERT INTO `abilities` VALUES ('4', '回顾', '1', '0', '8');
INSERT INTO `abilities` VALUES ('5', '追求', '1', '0', '8');
INSERT INTO `abilities` VALUES ('6', '竞争', '1', '0', '9');
INSERT INTO `abilities` VALUES ('7', '成就', '1', '0', '8');
INSERT INTO `abilities` VALUES ('8', '学习', '1', '0', '9');
INSERT INTO `abilities` VALUES ('9', '完美', '1', '0', '9');
INSERT INTO `abilities` VALUES ('10', '排难', '1', '0', '9');
INSERT INTO `abilities` VALUES ('11', '和谐', '1', '0', '9');
INSERT INTO `abilities` VALUES ('12', '个别', '1', '0', '9');
INSERT INTO `abilities` VALUES ('13', '包容', '1', '0', '10');
INSERT INTO `abilities` VALUES ('14', '信仰', '1', '0', '9');
INSERT INTO `abilities` VALUES ('15', '伯乐', '1', '0', '9');
INSERT INTO `abilities` VALUES ('16', '理念', '1', '0', '9');
INSERT INTO `abilities` VALUES ('17', '关联', '1', '0', '9');
INSERT INTO `abilities` VALUES ('18', '体谅', '1', '0', '8');
INSERT INTO `abilities` VALUES ('19', '统率', '1', '0', '9');
INSERT INTO `abilities` VALUES ('20', '行动', '1', '0', '9');
INSERT INTO `abilities` VALUES ('21', '专注', '1', '0', '10');
INSERT INTO `abilities` VALUES ('22', '公平', '1', '0', '9');
INSERT INTO `abilities` VALUES ('23', '思维', '1', '0', '10');
INSERT INTO `abilities` VALUES ('24', '战略', '1', '0', '10');
INSERT INTO `abilities` VALUES ('25', '沟通', '1', '0', '9');
INSERT INTO `abilities` VALUES ('26', '积极', '1', '0', '10');
INSERT INTO `abilities` VALUES ('27', '自信', '1', '0', '7');
INSERT INTO `abilities` VALUES ('28', '责任', '1', '0', '9');
INSERT INTO `abilities` VALUES ('29', '交往', '1', '0', '8');
INSERT INTO `abilities` VALUES ('30', '搜集', '1', '0', '9');
INSERT INTO `abilities` VALUES ('31', '纪律', '1', '0', '9');
INSERT INTO `abilities` VALUES ('32', '适应', '1', '0', '8');
INSERT INTO `abilities` VALUES ('33', '审慎', '1', '0', '7');
INSERT INTO `abilities` VALUES ('34', '统筹', '1', '0', '8');

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
) ENGINE=InnoDB AUTO_INCREMENT=1225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_operation_log` VALUES ('1148', '1', 'admin', 'GET', '127.0.0.1', '[]', '2018-05-01 17:20:14', '2018-05-01 17:20:14');
INSERT INTO `admin_operation_log` VALUES ('1149', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 17:28:05', '2018-05-01 17:28:05');
INSERT INTO `admin_operation_log` VALUES ('1150', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 17:28:09', '2018-05-01 17:28:09');
INSERT INTO `admin_operation_log` VALUES ('1151', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 18:22:40', '2018-05-01 18:22:40');
INSERT INTO `admin_operation_log` VALUES ('1152', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"4\"}', '2018-05-01 18:22:47', '2018-05-01 18:22:47');
INSERT INTO `admin_operation_log` VALUES ('1153', '1', 'admin/project/questions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2018-05-01 18:22:53', '2018-05-01 18:22:53');
INSERT INTO `admin_operation_log` VALUES ('1154', '1', 'admin/project/questions/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 18:22:56', '2018-05-01 18:22:56');
INSERT INTO `admin_operation_log` VALUES ('1155', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 19:22:14', '2018-05-01 19:22:14');
INSERT INTO `admin_operation_log` VALUES ('1156', '1', 'admin/project/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 19:22:16', '2018-05-01 19:22:16');
INSERT INTO `admin_operation_log` VALUES ('1157', '1', 'admin/project/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 19:44:55', '2018-05-01 19:44:55');
INSERT INTO `admin_operation_log` VALUES ('1158', '1', 'admin/project/categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-05-01 19:44:58', '2018-05-01 19:44:58');
INSERT INTO `admin_operation_log` VALUES ('1159', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:19:42', '2018-05-02 15:19:42');
INSERT INTO `admin_operation_log` VALUES ('1160', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:22:35', '2018-05-02 15:22:35');
INSERT INTO `admin_operation_log` VALUES ('1161', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:33:30', '2018-05-02 15:33:30');
INSERT INTO `admin_operation_log` VALUES ('1162', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:26', '2018-05-02 15:34:26');
INSERT INTO `admin_operation_log` VALUES ('1163', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:28', '2018-05-02 15:34:28');
INSERT INTO `admin_operation_log` VALUES ('1164', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:29', '2018-05-02 15:34:29');
INSERT INTO `admin_operation_log` VALUES ('1165', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:29', '2018-05-02 15:34:29');
INSERT INTO `admin_operation_log` VALUES ('1166', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:30', '2018-05-02 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('1167', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:30', '2018-05-02 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('1168', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:30', '2018-05-02 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('1169', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:34:30', '2018-05-02 15:34:30');
INSERT INTO `admin_operation_log` VALUES ('1170', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:39:12', '2018-05-02 15:39:12');
INSERT INTO `admin_operation_log` VALUES ('1171', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:39:21', '2018-05-02 15:39:21');
INSERT INTO `admin_operation_log` VALUES ('1172', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:43:42', '2018-05-02 15:43:42');
INSERT INTO `admin_operation_log` VALUES ('1173', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:55:56', '2018-05-02 15:55:56');
INSERT INTO `admin_operation_log` VALUES ('1174', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:57:56', '2018-05-02 15:57:56');
INSERT INTO `admin_operation_log` VALUES ('1175', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:58:37', '2018-05-02 15:58:37');
INSERT INTO `admin_operation_log` VALUES ('1176', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 15:59:36', '2018-05-02 15:59:36');
INSERT INTO `admin_operation_log` VALUES ('1177', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 16:00:52', '2018-05-02 16:00:52');
INSERT INTO `admin_operation_log` VALUES ('1178', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 16:01:38', '2018-05-02 16:01:38');
INSERT INTO `admin_operation_log` VALUES ('1179', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 16:02:51', '2018-05-02 16:02:51');
INSERT INTO `admin_operation_log` VALUES ('1180', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 16:04:25', '2018-05-02 16:04:25');
INSERT INTO `admin_operation_log` VALUES ('1181', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 16:25:16', '2018-05-02 16:25:16');
INSERT INTO `admin_operation_log` VALUES ('1182', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:15:56', '2018-05-02 20:15:56');
INSERT INTO `admin_operation_log` VALUES ('1183', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:16:27', '2018-05-02 20:16:27');
INSERT INTO `admin_operation_log` VALUES ('1184', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:16:53', '2018-05-02 20:16:53');
INSERT INTO `admin_operation_log` VALUES ('1185', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:17:59', '2018-05-02 20:17:59');
INSERT INTO `admin_operation_log` VALUES ('1186', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:20:26', '2018-05-02 20:20:26');
INSERT INTO `admin_operation_log` VALUES ('1187', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:20:56', '2018-05-02 20:20:56');
INSERT INTO `admin_operation_log` VALUES ('1188', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:21:51', '2018-05-02 20:21:51');
INSERT INTO `admin_operation_log` VALUES ('1189', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:23:31', '2018-05-02 20:23:31');
INSERT INTO `admin_operation_log` VALUES ('1190', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:24:49', '2018-05-02 20:24:49');
INSERT INTO `admin_operation_log` VALUES ('1191', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:28:18', '2018-05-02 20:28:18');
INSERT INTO `admin_operation_log` VALUES ('1192', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:29:07', '2018-05-02 20:29:07');
INSERT INTO `admin_operation_log` VALUES ('1193', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:29:52', '2018-05-02 20:29:52');
INSERT INTO `admin_operation_log` VALUES ('1194', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:30:31', '2018-05-02 20:30:31');
INSERT INTO `admin_operation_log` VALUES ('1195', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:31:12', '2018-05-02 20:31:12');
INSERT INTO `admin_operation_log` VALUES ('1196', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:31:23', '2018-05-02 20:31:23');
INSERT INTO `admin_operation_log` VALUES ('1197', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:33:03', '2018-05-02 20:33:03');
INSERT INTO `admin_operation_log` VALUES ('1198', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:39:45', '2018-05-02 20:39:45');
INSERT INTO `admin_operation_log` VALUES ('1199', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:40:41', '2018-05-02 20:40:41');
INSERT INTO `admin_operation_log` VALUES ('1200', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:41:02', '2018-05-02 20:41:02');
INSERT INTO `admin_operation_log` VALUES ('1201', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:42:16', '2018-05-02 20:42:16');
INSERT INTO `admin_operation_log` VALUES ('1202', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:42:38', '2018-05-02 20:42:38');
INSERT INTO `admin_operation_log` VALUES ('1203', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:42:41', '2018-05-02 20:42:41');
INSERT INTO `admin_operation_log` VALUES ('1204', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:44:03', '2018-05-02 20:44:03');
INSERT INTO `admin_operation_log` VALUES ('1205', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:44:04', '2018-05-02 20:44:04');
INSERT INTO `admin_operation_log` VALUES ('1206', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:44:05', '2018-05-02 20:44:05');
INSERT INTO `admin_operation_log` VALUES ('1207', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:44:05', '2018-05-02 20:44:05');
INSERT INTO `admin_operation_log` VALUES ('1208', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:45:05', '2018-05-02 20:45:05');
INSERT INTO `admin_operation_log` VALUES ('1209', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:46:14', '2018-05-02 20:46:14');
INSERT INTO `admin_operation_log` VALUES ('1210', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:46:16', '2018-05-02 20:46:16');
INSERT INTO `admin_operation_log` VALUES ('1211', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:47:31', '2018-05-02 20:47:31');
INSERT INTO `admin_operation_log` VALUES ('1212', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:47:32', '2018-05-02 20:47:32');
INSERT INTO `admin_operation_log` VALUES ('1213', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:47:33', '2018-05-02 20:47:33');
INSERT INTO `admin_operation_log` VALUES ('1214', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:47:33', '2018-05-02 20:47:33');
INSERT INTO `admin_operation_log` VALUES ('1215', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:47:47', '2018-05-02 20:47:47');
INSERT INTO `admin_operation_log` VALUES ('1216', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:48:14', '2018-05-02 20:48:14');
INSERT INTO `admin_operation_log` VALUES ('1217', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:48:29', '2018-05-02 20:48:29');
INSERT INTO `admin_operation_log` VALUES ('1218', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:48:47', '2018-05-02 20:48:47');
INSERT INTO `admin_operation_log` VALUES ('1219', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:48:48', '2018-05-02 20:48:48');
INSERT INTO `admin_operation_log` VALUES ('1220', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:49:05', '2018-05-02 20:49:05');
INSERT INTO `admin_operation_log` VALUES ('1221', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:49:17', '2018-05-02 20:49:17');
INSERT INTO `admin_operation_log` VALUES ('1222', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:49:40', '2018-05-02 20:49:40');
INSERT INTO `admin_operation_log` VALUES ('1223', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:50:06', '2018-05-02 20:50:06');
INSERT INTO `admin_operation_log` VALUES ('1224', '1', 'admin/import/qualities', 'GET', '127.0.0.1', '[]', '2018-05-02 20:57:09', '2018-05-02 20:57:09');

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
  `member_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selected` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `member_id` (`member_id`),
  KEY `subject_id` (`subject_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=utf8 COMMENT='答案';

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', '3550', '1', '1', '1', '0', '1');
INSERT INTO `answers` VALUES ('2', '3550', '1', '1', '2', '0', '1');
INSERT INTO `answers` VALUES ('3', '3550', '1', '1', '3', '0', '1');
INSERT INTO `answers` VALUES ('4', '3550', '1', '1', '4', '0', '1');
INSERT INTO `answers` VALUES ('5', '3550', '1', '1', '5', '0', '1');
INSERT INTO `answers` VALUES ('6', '3550', '1', '1', '6', '0', '1');
INSERT INTO `answers` VALUES ('7', '3550', '1', '1', '7', '0', '1');
INSERT INTO `answers` VALUES ('8', '3550', '1', '1', '8', '0', '1');
INSERT INTO `answers` VALUES ('9', '3550', '1', '1', '9', '0', '1');
INSERT INTO `answers` VALUES ('10', '3550', '1', '1', '10', '0', '1');
INSERT INTO `answers` VALUES ('11', '3550', '1', '1', '11', '0', '1');
INSERT INTO `answers` VALUES ('12', '3550', '1', '1', '12', '0', '1');
INSERT INTO `answers` VALUES ('13', '3550', '1', '1', '13', '0', '1');
INSERT INTO `answers` VALUES ('14', '3550', '1', '1', '14', '0', '1');
INSERT INTO `answers` VALUES ('15', '3550', '1', '1', '15', '0', '1');
INSERT INTO `answers` VALUES ('16', '3550', '1', '1', '16', '0', '1');
INSERT INTO `answers` VALUES ('17', '3550', '1', '1', '17', '0', '1');
INSERT INTO `answers` VALUES ('18', '3550', '1', '1', '18', '0', '1');
INSERT INTO `answers` VALUES ('19', '3550', '1', '1', '19', '0', '1');
INSERT INTO `answers` VALUES ('20', '3550', '1', '1', '20', '0', '1');
INSERT INTO `answers` VALUES ('21', '3550', '1', '1', '21', '0', '1');
INSERT INTO `answers` VALUES ('22', '3550', '1', '1', '22', '0', '1');
INSERT INTO `answers` VALUES ('23', '3550', '1', '1', '23', '0', '1');
INSERT INTO `answers` VALUES ('24', '3550', '1', '1', '24', '0', '1');
INSERT INTO `answers` VALUES ('25', '3550', '1', '1', '25', '0', '1');
INSERT INTO `answers` VALUES ('26', '3550', '1', '1', '26', '0', '1');
INSERT INTO `answers` VALUES ('27', '3550', '1', '1', '27', '0', '1');
INSERT INTO `answers` VALUES ('28', '3550', '1', '1', '28', '0', '1');
INSERT INTO `answers` VALUES ('29', '3550', '1', '1', '29', '0', '1');
INSERT INTO `answers` VALUES ('30', '3550', '1', '1', '30', '0', '1');
INSERT INTO `answers` VALUES ('31', '3550', '1', '1', '31', '0', '1');
INSERT INTO `answers` VALUES ('32', '3550', '1', '1', '32', '0', '1');
INSERT INTO `answers` VALUES ('33', '3550', '1', '1', '33', '0', '1');
INSERT INTO `answers` VALUES ('34', '3550', '1', '1', '34', '0', '1');
INSERT INTO `answers` VALUES ('35', '3550', '1', '1', '35', '0', '1');
INSERT INTO `answers` VALUES ('36', '3550', '1', '1', '36', '0', '1');
INSERT INTO `answers` VALUES ('37', '3550', '1', '1', '37', '0', '1');
INSERT INTO `answers` VALUES ('38', '3550', '1', '1', '38', '0', '1');
INSERT INTO `answers` VALUES ('39', '3550', '1', '1', '39', '0', '1');
INSERT INTO `answers` VALUES ('40', '3550', '1', '1', '40', '0', '1');
INSERT INTO `answers` VALUES ('41', '3550', '1', '1', '41', '0', '1');
INSERT INTO `answers` VALUES ('42', '3550', '1', '1', '42', '0', '1');
INSERT INTO `answers` VALUES ('43', '3550', '1', '1', '43', '0', '1');
INSERT INTO `answers` VALUES ('44', '3550', '1', '1', '44', '0', '1');
INSERT INTO `answers` VALUES ('45', '3550', '1', '1', '45', '0', '1');
INSERT INTO `answers` VALUES ('46', '3550', '1', '1', '46', '0', '1');
INSERT INTO `answers` VALUES ('47', '3550', '1', '1', '47', '0', '1');
INSERT INTO `answers` VALUES ('48', '3550', '1', '1', '48', '0', '1');
INSERT INTO `answers` VALUES ('49', '3550', '1', '1', '49', '0', '1');
INSERT INTO `answers` VALUES ('50', '3550', '1', '1', '50', '0', '1');
INSERT INTO `answers` VALUES ('51', '3550', '1', '1', '51', '0', '1');
INSERT INTO `answers` VALUES ('52', '3550', '1', '1', '52', '0', '1');
INSERT INTO `answers` VALUES ('53', '3550', '1', '1', '53', '0', '1');
INSERT INTO `answers` VALUES ('54', '3550', '1', '1', '54', '0', '1');
INSERT INTO `answers` VALUES ('55', '3550', '1', '1', '55', '0', '1');
INSERT INTO `answers` VALUES ('56', '3550', '1', '1', '56', '0', '1');
INSERT INTO `answers` VALUES ('57', '3550', '1', '1', '57', '0', '1');
INSERT INTO `answers` VALUES ('58', '3550', '1', '1', '58', '0', '1');
INSERT INTO `answers` VALUES ('59', '3550', '1', '1', '59', '0', '1');
INSERT INTO `answers` VALUES ('60', '3550', '1', '1', '60', '0', '1');
INSERT INTO `answers` VALUES ('61', '3550', '1', '2', '61', '0', '1');
INSERT INTO `answers` VALUES ('62', '3550', '1', '2', '62', '0', '1');
INSERT INTO `answers` VALUES ('63', '3550', '1', '2', '63', '0', '1');
INSERT INTO `answers` VALUES ('64', '3550', '1', '2', '64', '0', '1');
INSERT INTO `answers` VALUES ('65', '3550', '1', '2', '65', '0', '1');
INSERT INTO `answers` VALUES ('66', '3550', '1', '2', '66', '0', '1');
INSERT INTO `answers` VALUES ('67', '3550', '1', '2', '67', '0', '1');
INSERT INTO `answers` VALUES ('68', '3550', '1', '2', '68', '0', '1');
INSERT INTO `answers` VALUES ('69', '3550', '1', '2', '69', '0', '1');
INSERT INTO `answers` VALUES ('70', '3550', '1', '2', '70', '0', '1');
INSERT INTO `answers` VALUES ('71', '3550', '1', '2', '71', '0', '1');
INSERT INTO `answers` VALUES ('72', '3550', '1', '2', '72', '0', '1');
INSERT INTO `answers` VALUES ('73', '3550', '1', '2', '73', '0', '1');
INSERT INTO `answers` VALUES ('74', '3550', '1', '2', '74', '0', '1');
INSERT INTO `answers` VALUES ('75', '3550', '1', '2', '75', '0', '1');
INSERT INTO `answers` VALUES ('76', '3550', '1', '2', '76', '0', '1');
INSERT INTO `answers` VALUES ('77', '3550', '1', '2', '77', '0', '1');
INSERT INTO `answers` VALUES ('78', '3550', '1', '2', '78', '0', '1');
INSERT INTO `answers` VALUES ('79', '3550', '1', '2', '79', '0', '1');
INSERT INTO `answers` VALUES ('80', '3550', '1', '2', '80', '0', '1');
INSERT INTO `answers` VALUES ('81', '3550', '1', '2', '81', '0', '1');
INSERT INTO `answers` VALUES ('82', '3550', '1', '2', '82', '0', '1');
INSERT INTO `answers` VALUES ('83', '3550', '1', '2', '83', '0', '1');
INSERT INTO `answers` VALUES ('84', '3550', '1', '2', '84', '0', '1');
INSERT INTO `answers` VALUES ('85', '3550', '1', '2', '85', '0', '1');
INSERT INTO `answers` VALUES ('86', '3550', '1', '2', '86', '0', '1');
INSERT INTO `answers` VALUES ('87', '3550', '1', '2', '87', '0', '1');
INSERT INTO `answers` VALUES ('88', '3550', '1', '2', '88', '0', '1');
INSERT INTO `answers` VALUES ('89', '3550', '1', '2', '89', '0', '1');
INSERT INTO `answers` VALUES ('90', '3550', '1', '2', '90', '0', '1');
INSERT INTO `answers` VALUES ('91', '3550', '1', '2', '91', '0', '1');
INSERT INTO `answers` VALUES ('92', '3550', '1', '2', '92', '0', '1');
INSERT INTO `answers` VALUES ('93', '3550', '1', '2', '93', '0', '1');
INSERT INTO `answers` VALUES ('94', '3550', '1', '2', '94', '0', '1');
INSERT INTO `answers` VALUES ('95', '3550', '1', '2', '95', '0', '1');
INSERT INTO `answers` VALUES ('96', '3550', '1', '2', '96', '0', '1');
INSERT INTO `answers` VALUES ('97', '3550', '1', '2', '97', '0', '1');
INSERT INTO `answers` VALUES ('98', '3550', '1', '2', '98', '0', '1');
INSERT INTO `answers` VALUES ('99', '3550', '1', '2', '99', '0', '1');
INSERT INTO `answers` VALUES ('100', '3550', '1', '2', '100', '0', '1');
INSERT INTO `answers` VALUES ('101', '3550', '1', '2', '101', '0', '1');
INSERT INTO `answers` VALUES ('102', '3550', '1', '2', '102', '0', '1');
INSERT INTO `answers` VALUES ('103', '3550', '1', '2', '103', '0', '1');
INSERT INTO `answers` VALUES ('104', '3550', '1', '2', '104', '0', '1');
INSERT INTO `answers` VALUES ('105', '3550', '1', '2', '105', '0', '1');
INSERT INTO `answers` VALUES ('106', '3550', '1', '2', '106', '0', '1');
INSERT INTO `answers` VALUES ('107', '3550', '1', '2', '107', '0', '1');
INSERT INTO `answers` VALUES ('108', '3550', '1', '2', '108', '0', '1');
INSERT INTO `answers` VALUES ('109', '3550', '1', '2', '109', '0', '1');
INSERT INTO `answers` VALUES ('110', '3550', '1', '2', '110', '0', '1');
INSERT INTO `answers` VALUES ('111', '3550', '1', '2', '111', '0', '1');
INSERT INTO `answers` VALUES ('112', '3550', '1', '2', '112', '0', '1');
INSERT INTO `answers` VALUES ('113', '3550', '1', '2', '113', '0', '1');
INSERT INTO `answers` VALUES ('114', '3550', '1', '2', '114', '0', '1');
INSERT INTO `answers` VALUES ('115', '3550', '1', '2', '115', '0', '1');
INSERT INTO `answers` VALUES ('116', '3550', '1', '2', '116', '0', '1');
INSERT INTO `answers` VALUES ('117', '3550', '1', '2', '117', '0', '1');
INSERT INTO `answers` VALUES ('118', '3550', '1', '2', '118', '0', '1');
INSERT INTO `answers` VALUES ('119', '3550', '1', '2', '119', '0', '1');
INSERT INTO `answers` VALUES ('120', '3550', '1', '2', '120', '0', '1');
INSERT INTO `answers` VALUES ('121', '3550', '1', '2', '121', '0', '1');
INSERT INTO `answers` VALUES ('122', '3550', '1', '2', '122', '0', '1');
INSERT INTO `answers` VALUES ('123', '3550', '1', '2', '123', '0', '1');
INSERT INTO `answers` VALUES ('124', '3550', '1', '2', '124', '0', '1');
INSERT INTO `answers` VALUES ('125', '3550', '1', '2', '125', '0', '1');
INSERT INTO `answers` VALUES ('126', '3550', '1', '2', '126', '0', '1');
INSERT INTO `answers` VALUES ('127', '3550', '1', '2', '127', '0', '1');
INSERT INTO `answers` VALUES ('128', '3550', '1', '2', '128', '0', '1');
INSERT INTO `answers` VALUES ('129', '3550', '1', '2', '129', '0', '1');
INSERT INTO `answers` VALUES ('130', '3550', '1', '2', '130', '0', '1');
INSERT INTO `answers` VALUES ('131', '3550', '1', '2', '131', '0', '1');
INSERT INTO `answers` VALUES ('132', '3550', '1', '2', '132', '0', '1');
INSERT INTO `answers` VALUES ('133', '3550', '1', '2', '133', '0', '1');
INSERT INTO `answers` VALUES ('134', '3550', '1', '2', '134', '0', '1');
INSERT INTO `answers` VALUES ('135', '3550', '1', '2', '135', '0', '1');
INSERT INTO `answers` VALUES ('136', '3550', '1', '2', '136', '0', '1');
INSERT INTO `answers` VALUES ('137', '3550', '1', '2', '137', '0', '1');
INSERT INTO `answers` VALUES ('138', '3550', '1', '2', '138', '0', '1');
INSERT INTO `answers` VALUES ('139', '3550', '1', '2', '139', '0', '1');
INSERT INTO `answers` VALUES ('140', '3550', '1', '2', '140', '0', '1');
INSERT INTO `answers` VALUES ('141', '3550', '1', '2', '141', '0', '1');
INSERT INTO `answers` VALUES ('142', '3550', '1', '2', '142', '0', '1');
INSERT INTO `answers` VALUES ('143', '3550', '1', '2', '143', '0', '1');
INSERT INTO `answers` VALUES ('144', '3550', '1', '2', '144', '0', '1');
INSERT INTO `answers` VALUES ('145', '3550', '1', '2', '145', '0', '1');
INSERT INTO `answers` VALUES ('146', '3550', '1', '2', '146', '0', '1');
INSERT INTO `answers` VALUES ('147', '3550', '1', '2', '147', '0', '1');
INSERT INTO `answers` VALUES ('148', '3550', '1', '2', '148', '0', '1');
INSERT INTO `answers` VALUES ('149', '3550', '1', '2', '149', '0', '1');
INSERT INTO `answers` VALUES ('150', '3550', '1', '2', '150', '0', '1');
INSERT INTO `answers` VALUES ('151', '3550', '1', '2', '151', '0', '1');
INSERT INTO `answers` VALUES ('152', '3550', '1', '2', '152', '0', '1');
INSERT INTO `answers` VALUES ('153', '3550', '1', '2', '153', '0', '1');
INSERT INTO `answers` VALUES ('154', '3550', '1', '2', '154', '0', '1');
INSERT INTO `answers` VALUES ('155', '3550', '1', '2', '155', '0', '1');
INSERT INTO `answers` VALUES ('156', '3550', '1', '2', '156', '0', '1');
INSERT INTO `answers` VALUES ('157', '3550', '1', '2', '157', '0', '1');
INSERT INTO `answers` VALUES ('158', '3550', '1', '2', '158', '0', '1');
INSERT INTO `answers` VALUES ('159', '3550', '1', '2', '159', '0', '1');
INSERT INTO `answers` VALUES ('160', '3550', '1', '2', '160', '0', '1');
INSERT INTO `answers` VALUES ('161', '3550', '1', '2', '161', '0', '1');
INSERT INTO `answers` VALUES ('162', '3550', '1', '2', '162', '0', '1');
INSERT INTO `answers` VALUES ('163', '3550', '1', '2', '163', '0', '1');
INSERT INTO `answers` VALUES ('164', '3550', '1', '2', '164', '0', '1');
INSERT INTO `answers` VALUES ('165', '3550', '1', '2', '165', '0', '1');
INSERT INTO `answers` VALUES ('166', '3550', '1', '2', '166', '0', '1');
INSERT INTO `answers` VALUES ('167', '3550', '1', '2', '167', '0', '1');
INSERT INTO `answers` VALUES ('168', '3550', '1', '2', '168', '0', '1');
INSERT INTO `answers` VALUES ('169', '3550', '1', '2', '169', '0', '1');
INSERT INTO `answers` VALUES ('170', '3550', '1', '2', '170', '0', '1');
INSERT INTO `answers` VALUES ('171', '3550', '1', '2', '171', '0', '1');
INSERT INTO `answers` VALUES ('172', '3550', '1', '2', '172', '0', '1');
INSERT INTO `answers` VALUES ('173', '3550', '1', '2', '173', '0', '1');
INSERT INTO `answers` VALUES ('174', '3550', '1', '2', '174', '0', '1');
INSERT INTO `answers` VALUES ('175', '3550', '1', '2', '175', '0', '1');
INSERT INTO `answers` VALUES ('176', '3550', '1', '2', '176', '0', '1');
INSERT INTO `answers` VALUES ('177', '3550', '1', '2', '177', '0', '1');
INSERT INTO `answers` VALUES ('178', '3550', '1', '2', '178', '0', '1');
INSERT INTO `answers` VALUES ('179', '3550', '1', '2', '179', '0', '1');
INSERT INTO `answers` VALUES ('180', '3550', '1', '2', '180', '0', '1');
INSERT INTO `answers` VALUES ('181', '3550', '1', '2', '181', '0', '1');
INSERT INTO `answers` VALUES ('182', '3550', '1', '2', '182', '0', '1');
INSERT INTO `answers` VALUES ('183', '3550', '1', '2', '183', '0', '1');
INSERT INTO `answers` VALUES ('184', '3550', '1', '2', '184', '0', '1');
INSERT INTO `answers` VALUES ('185', '3550', '1', '2', '185', '0', '1');
INSERT INTO `answers` VALUES ('186', '3550', '1', '2', '186', '0', '1');
INSERT INTO `answers` VALUES ('187', '3550', '1', '2', '187', '0', '1');
INSERT INTO `answers` VALUES ('188', '3550', '1', '2', '188', '0', '1');
INSERT INTO `answers` VALUES ('189', '3550', '1', '2', '189', '0', '1');
INSERT INTO `answers` VALUES ('190', '3550', '1', '2', '190', '0', '1');
INSERT INTO `answers` VALUES ('191', '3550', '1', '2', '191', '0', '1');
INSERT INTO `answers` VALUES ('192', '3550', '1', '2', '192', '0', '1');
INSERT INTO `answers` VALUES ('193', '3550', '1', '2', '193', '0', '1');
INSERT INTO `answers` VALUES ('194', '3550', '1', '2', '194', '0', '1');
INSERT INTO `answers` VALUES ('195', '3550', '1', '2', '195', '0', '1');
INSERT INTO `answers` VALUES ('196', '3550', '1', '2', '196', '0', '1');
INSERT INTO `answers` VALUES ('197', '3550', '1', '2', '197', '0', '1');
INSERT INTO `answers` VALUES ('198', '3550', '1', '2', '198', '0', '1');
INSERT INTO `answers` VALUES ('199', '3550', '1', '2', '199', '0', '1');
INSERT INTO `answers` VALUES ('200', '3550', '1', '2', '200', '0', '1');
INSERT INTO `answers` VALUES ('201', '3550', '1', '2', '201', '0', '1');
INSERT INTO `answers` VALUES ('202', '3550', '1', '2', '202', '0', '1');
INSERT INTO `answers` VALUES ('203', '3550', '1', '2', '203', '0', '1');
INSERT INTO `answers` VALUES ('204', '3550', '1', '2', '204', '0', '1');
INSERT INTO `answers` VALUES ('205', '3550', '1', '2', '205', '0', '1');
INSERT INTO `answers` VALUES ('206', '3550', '1', '2', '206', '0', '1');
INSERT INTO `answers` VALUES ('207', '3550', '1', '2', '207', '0', '1');
INSERT INTO `answers` VALUES ('208', '3550', '1', '2', '208', '0', '1');
INSERT INTO `answers` VALUES ('209', '3550', '1', '2', '209', '0', '1');
INSERT INTO `answers` VALUES ('210', '3550', '1', '2', '210', '0', '1');
INSERT INTO `answers` VALUES ('211', '3550', '1', '3', '211', '0', '1');
INSERT INTO `answers` VALUES ('212', '3550', '1', '3', '212', '0', '1');
INSERT INTO `answers` VALUES ('213', '3550', '1', '3', '213', '0', '1');
INSERT INTO `answers` VALUES ('214', '3550', '1', '3', '214', '0', '1');
INSERT INTO `answers` VALUES ('215', '3550', '1', '3', '215', '0', '1');
INSERT INTO `answers` VALUES ('216', '3550', '1', '3', '216', '0', '1');
INSERT INTO `answers` VALUES ('217', '3550', '1', '3', '217', '0', '1');
INSERT INTO `answers` VALUES ('218', '3550', '1', '3', '218', '0', '1');
INSERT INTO `answers` VALUES ('219', '3550', '1', '3', '219', '0', '1');
INSERT INTO `answers` VALUES ('220', '3550', '1', '3', '220', '0', '1');
INSERT INTO `answers` VALUES ('221', '3550', '1', '3', '221', '0', '1');
INSERT INTO `answers` VALUES ('222', '3550', '1', '3', '222', '0', '1');
INSERT INTO `answers` VALUES ('223', '3550', '1', '3', '223', '0', '1');
INSERT INTO `answers` VALUES ('224', '3550', '1', '3', '224', '0', '1');
INSERT INTO `answers` VALUES ('225', '3550', '1', '3', '225', '0', '1');
INSERT INTO `answers` VALUES ('226', '3550', '1', '3', '226', '0', '1');
INSERT INTO `answers` VALUES ('227', '3550', '1', '3', '227', '0', '1');
INSERT INTO `answers` VALUES ('228', '3550', '1', '3', '228', '0', '1');
INSERT INTO `answers` VALUES ('229', '3550', '1', '3', '229', '0', '1');
INSERT INTO `answers` VALUES ('230', '3550', '1', '3', '230', '0', '1');
INSERT INTO `answers` VALUES ('231', '3550', '1', '3', '231', '0', '1');
INSERT INTO `answers` VALUES ('232', '3550', '1', '3', '232', '0', '1');
INSERT INTO `answers` VALUES ('233', '3550', '1', '3', '233', '0', '1');
INSERT INTO `answers` VALUES ('234', '3550', '1', '3', '234', '0', '1');
INSERT INTO `answers` VALUES ('235', '3550', '1', '3', '235', '0', '1');
INSERT INTO `answers` VALUES ('236', '3550', '1', '3', '236', '0', '1');
INSERT INTO `answers` VALUES ('237', '3550', '1', '3', '237', '0', '1');
INSERT INTO `answers` VALUES ('238', '3550', '1', '3', '238', '0', '1');

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
-- Table structure for major_categories
-- ----------------------------
DROP TABLE IF EXISTS `major_categories`;
CREATE TABLE `major_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `code` varchar(45) NOT NULL DEFAULT '' COMMENT '教育部统一专业编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业分类';

-- ----------------------------
-- Records of major_categories
-- ----------------------------

-- ----------------------------
-- Table structure for majors
-- ----------------------------
DROP TABLE IF EXISTS `majors`;
CREATE TABLE `majors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '专业名称',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `major_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `interest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `interest_name` varchar(45) NOT NULL DEFAULT '',
  `shake_id` int(10) unsigned NOT NULL DEFAULT '0',
  `shake_name` varchar(45) NOT NULL DEFAULT '' COMMENT '型格名称',
  `potential_ids` varchar(45) NOT NULL DEFAULT '',
  `potential_names` varchar(45) NOT NULL DEFAULT '' COMMENT '教育部统一专业编号',
  `code` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `major_category_id` (`major_category_id`),
  KEY `shake_id` (`shake_id`),
  KEY `potential_ids` (`potential_ids`),
  KEY `interest_id` (`interest_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=611 DEFAULT CHARSET=utf8 COMMENT='专业';

-- ----------------------------
-- Records of majors
-- ----------------------------
INSERT INTO `majors` VALUES ('1', '学科门类：哲学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '01');
INSERT INTO `majors` VALUES ('2', '哲学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0101');
INSERT INTO `majors` VALUES ('3', '哲学', '1', '', '0', '0', '0', '0', '6', 'A', '5', '思维创造型', '179', '', '010101');
INSERT INTO `majors` VALUES ('4', '逻辑学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '010102');
INSERT INTO `majors` VALUES ('5', '宗教学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '010103K');
INSERT INTO `majors` VALUES ('6', '伦理学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '479', '', '010104T');
INSERT INTO `majors` VALUES ('7', '学科门类：经济学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '02');
INSERT INTO `majors` VALUES ('8', '经济学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0201');
INSERT INTO `majors` VALUES ('9', '经济学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '135', '', '020101');
INSERT INTO `majors` VALUES ('10', '经济统计学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '020102');
INSERT INTO `majors` VALUES ('11', '国民经济管理', '1', '', '0', '0', '0', '0', '5', 'I', '2', '目标管理型', '158', '', '020103T');
INSERT INTO `majors` VALUES ('12', '资源与环境经济学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '157', '', '020104T');
INSERT INTO `majors` VALUES ('13', '商务经济学', '1', '', '0', '0', '0', '0', '5', 'I', '2', '目标管理型', '158', '', '020105T');
INSERT INTO `majors` VALUES ('14', '能源经济', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '159', '', '020106T');
INSERT INTO `majors` VALUES ('15', '财政学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0202');
INSERT INTO `majors` VALUES ('16', '财政学', '1', '', '0', '0', '0', '0', '5', 'I', '2', '目标管理型', '158', '', '020201K');
INSERT INTO `majors` VALUES ('17', '税收学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '159', '', '020202');
INSERT INTO `majors` VALUES ('18', '金融学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0203');
INSERT INTO `majors` VALUES ('19', '金融学', '1', '', '0', '0', '0', '0', '5', 'I', '2', '目标管理型', '158', '', '020301K');
INSERT INTO `majors` VALUES ('20', '金融工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '020302');
INSERT INTO `majors` VALUES ('21', '保险学', '1', '', '0', '0', '0', '0', '5', 'I', '1', '社会交际型', '459', '', '020303');
INSERT INTO `majors` VALUES ('22', '投资学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '159', '', '020304');
INSERT INTO `majors` VALUES ('23', '金融数学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '139', '', '020305T');
INSERT INTO `majors` VALUES ('24', '信用管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '359', '', '020306T');
INSERT INTO `majors` VALUES ('25', '经济与金融', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '159', '', '020307T');
INSERT INTO `majors` VALUES ('26', '经济与贸易类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0204');
INSERT INTO `majors` VALUES ('27', '国际经济与贸易', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '158', '', '020401');
INSERT INTO `majors` VALUES ('28', '贸易经济', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '158', '', '020402');
INSERT INTO `majors` VALUES ('29', '学科门类：法学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '03');
INSERT INTO `majors` VALUES ('30', '法学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0301');
INSERT INTO `majors` VALUES ('31', '法学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '030101K');
INSERT INTO `majors` VALUES ('32', '知识产权', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '030102T');
INSERT INTO `majors` VALUES ('33', '监狱学', '1', '', '0', '0', '0', '0', '5', 'I', '4', '个人工作型', '235', '', '030103T');
INSERT INTO `majors` VALUES ('34', '政治学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0302');
INSERT INTO `majors` VALUES ('35', '政治学与行政学', '1', '', '0', '0', '0', '0', '5', 'I', '1', '社会交际型', '459', '', '030201');
INSERT INTO `majors` VALUES ('36', '国际政治', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030202');
INSERT INTO `majors` VALUES ('37', '外交学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '569', '', '030203');
INSERT INTO `majors` VALUES ('38', '国际事务与国际关系', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '569', '', '030204T');
INSERT INTO `majors` VALUES ('39', '政治学、经济学与哲学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030205T');
INSERT INTO `majors` VALUES ('40', '社会学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0303');
INSERT INTO `majors` VALUES ('41', '社会学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030301');
INSERT INTO `majors` VALUES ('42', '社会工作', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '259', '', '030302');
INSERT INTO `majors` VALUES ('43', '人类学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '479', '', '030303T');
INSERT INTO `majors` VALUES ('44', '女性学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '479', '', '030304T');
INSERT INTO `majors` VALUES ('45', '家政学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030305T');
INSERT INTO `majors` VALUES ('46', '民族学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0304');
INSERT INTO `majors` VALUES ('47', '民族学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030401');
INSERT INTO `majors` VALUES ('48', '马克思主义理论类', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '0305');
INSERT INTO `majors` VALUES ('49', '科学社会主义', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030501');
INSERT INTO `majors` VALUES ('50', '中国共产党历史', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030502');
INSERT INTO `majors` VALUES ('51', '思想政治教育', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '469', '', '030503');
INSERT INTO `majors` VALUES ('52', '公安学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0306');
INSERT INTO `majors` VALUES ('53', '治安学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '030601K');
INSERT INTO `majors` VALUES ('54', '侦查学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '030602K');
INSERT INTO `majors` VALUES ('55', '边防管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '030603K');
INSERT INTO `majors` VALUES ('56', '禁毒学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '030604TK');
INSERT INTO `majors` VALUES ('57', '警犬技术', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '030605TK');
INSERT INTO `majors` VALUES ('58', '经济犯罪侦查', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '030606TK');
INSERT INTO `majors` VALUES ('59', '边防指挥', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '030607TK');
INSERT INTO `majors` VALUES ('60', '消防指挥', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '356', '', '030608TK');
INSERT INTO `majors` VALUES ('61', '警卫学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '030609TK');
INSERT INTO `majors` VALUES ('62', '公安情报学', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '137', '', '030610TK');
INSERT INTO `majors` VALUES ('63', '犯罪学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '579', '', '030611TK');
INSERT INTO `majors` VALUES ('64', '公安管理学', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '359', '', '030612TK');
INSERT INTO `majors` VALUES ('65', '涉外警务', '1', '', '0', '0', '0', '0', '1', 'S', '4', '个人工作型', '234', '', '030613TK');
INSERT INTO `majors` VALUES ('66', '国内安全保卫', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '030614TK');
INSERT INTO `majors` VALUES ('67', '警务指挥与战术', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '158', '', '030615TK');
INSERT INTO `majors` VALUES ('68', '学科门类：教育学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '04');
INSERT INTO `majors` VALUES ('69', '教育学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0401');
INSERT INTO `majors` VALUES ('70', '教育学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '359', '', '040101');
INSERT INTO `majors` VALUES ('71', '科学教育', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '359', '', '040102');
INSERT INTO `majors` VALUES ('72', '人文教育', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '359', '', '040103');
INSERT INTO `majors` VALUES ('73', '教育技术学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '159', '', '040104');
INSERT INTO `majors` VALUES ('74', '艺术教育', '1', '', '0', '0', '0', '0', '2', 'E', '6', '文艺革新型', '367', '', '040105');
INSERT INTO `majors` VALUES ('75', '学前教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '040106');
INSERT INTO `majors` VALUES ('76', '小学教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '040107');
INSERT INTO `majors` VALUES ('77', '特殊教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '040108');
INSERT INTO `majors` VALUES ('78', '华文教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '040109T');
INSERT INTO `majors` VALUES ('79', '体育学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0402');
INSERT INTO `majors` VALUES ('80', '体育教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '269', '', '040201');
INSERT INTO `majors` VALUES ('81', '运动训练', '1', '', '0', '0', '0', '0', '1', 'S', '4', '个人工作型', '238', '', '040202K');
INSERT INTO `majors` VALUES ('82', '社会体育指导与管理', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '040203');
INSERT INTO `majors` VALUES ('83', '武术与民族传统体育', '1', '', '0', '0', '0', '0', '1', 'S', '4', '个人工作型', '238', '', '040204K');
INSERT INTO `majors` VALUES ('84', '运动人体科学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '040205');
INSERT INTO `majors` VALUES ('85', '运动康复', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '459', '', '040206T');
INSERT INTO `majors` VALUES ('86', '休闲体育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '040207T');
INSERT INTO `majors` VALUES ('87', '学科门类：文学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '05');
INSERT INTO `majors` VALUES ('88', '中国语言文学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0501');
INSERT INTO `majors` VALUES ('89', '汉语言文学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '379', '', '050101');
INSERT INTO `majors` VALUES ('90', '汉语言', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '379', '', '050102');
INSERT INTO `majors` VALUES ('91', '汉语国际教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '050103');
INSERT INTO `majors` VALUES ('92', '中国少数民族语言文学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '379', '', '050104');
INSERT INTO `majors` VALUES ('93', '古典文献学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '359', '', '050105');
INSERT INTO `majors` VALUES ('94', '应用语言学', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '050106T');
INSERT INTO `majors` VALUES ('95', '秘书学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '050107T');
INSERT INTO `majors` VALUES ('96', '外国语言文学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0502');
INSERT INTO `majors` VALUES ('97', '英语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050201');
INSERT INTO `majors` VALUES ('98', '俄语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050202');
INSERT INTO `majors` VALUES ('99', '德语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050203');
INSERT INTO `majors` VALUES ('100', '法语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050204');
INSERT INTO `majors` VALUES ('101', '西班牙语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050205');
INSERT INTO `majors` VALUES ('102', '阿拉伯语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050206');
INSERT INTO `majors` VALUES ('103', '日语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050207');
INSERT INTO `majors` VALUES ('104', '波斯语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050208');
INSERT INTO `majors` VALUES ('105', '朝鲜语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050209');
INSERT INTO `majors` VALUES ('106', '菲律宾语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050210');
INSERT INTO `majors` VALUES ('107', '梵语巴利语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050211');
INSERT INTO `majors` VALUES ('108', '印度尼西亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050212');
INSERT INTO `majors` VALUES ('109', '印地语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050213');
INSERT INTO `majors` VALUES ('110', '柬埔寨语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050214');
INSERT INTO `majors` VALUES ('111', '老挝语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050215');
INSERT INTO `majors` VALUES ('112', '缅甸语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050216');
INSERT INTO `majors` VALUES ('113', '马来语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050217');
INSERT INTO `majors` VALUES ('114', '蒙古语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050218');
INSERT INTO `majors` VALUES ('115', '僧伽罗语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050219');
INSERT INTO `majors` VALUES ('116', '泰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050220');
INSERT INTO `majors` VALUES ('117', '乌尔都语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050221');
INSERT INTO `majors` VALUES ('118', '希伯来语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050222');
INSERT INTO `majors` VALUES ('119', '越南语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050223');
INSERT INTO `majors` VALUES ('120', '豪萨语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050224');
INSERT INTO `majors` VALUES ('121', '斯瓦希里语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050225');
INSERT INTO `majors` VALUES ('122', '阿尔巴尼亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050226');
INSERT INTO `majors` VALUES ('123', '保加利亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050227');
INSERT INTO `majors` VALUES ('124', '波兰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050228');
INSERT INTO `majors` VALUES ('125', '捷克语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050229');
INSERT INTO `majors` VALUES ('126', '斯洛伐克语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050230');
INSERT INTO `majors` VALUES ('127', '罗马尼亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050231');
INSERT INTO `majors` VALUES ('128', '葡萄牙语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050232');
INSERT INTO `majors` VALUES ('129', '瑞典语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050233');
INSERT INTO `majors` VALUES ('130', '塞尔维亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050234');
INSERT INTO `majors` VALUES ('131', '土耳其语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050235');
INSERT INTO `majors` VALUES ('132', '希腊语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050236');
INSERT INTO `majors` VALUES ('133', '匈牙利语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050237');
INSERT INTO `majors` VALUES ('134', '意大利语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050238');
INSERT INTO `majors` VALUES ('135', '泰米尔语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050239');
INSERT INTO `majors` VALUES ('136', '普什图语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050240');
INSERT INTO `majors` VALUES ('137', '世界语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050241');
INSERT INTO `majors` VALUES ('138', '孟加拉语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050242');
INSERT INTO `majors` VALUES ('139', '尼泊尔语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050243');
INSERT INTO `majors` VALUES ('140', '克罗地亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050244');
INSERT INTO `majors` VALUES ('141', '荷兰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050245');
INSERT INTO `majors` VALUES ('142', '芬兰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050246');
INSERT INTO `majors` VALUES ('143', '乌克兰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050247');
INSERT INTO `majors` VALUES ('144', '挪威语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050248');
INSERT INTO `majors` VALUES ('145', '丹麦语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050249');
INSERT INTO `majors` VALUES ('146', '冰岛语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050250');
INSERT INTO `majors` VALUES ('147', '爱尔兰语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050251');
INSERT INTO `majors` VALUES ('148', '拉脱维亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050252');
INSERT INTO `majors` VALUES ('149', '立陶宛语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050253');
INSERT INTO `majors` VALUES ('150', '斯洛文尼亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050254');
INSERT INTO `majors` VALUES ('151', '爱沙尼亚语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050255');
INSERT INTO `majors` VALUES ('152', '马耳他语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050256');
INSERT INTO `majors` VALUES ('153', '哈萨克语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050257');
INSERT INTO `majors` VALUES ('154', '乌兹别克语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050258');
INSERT INTO `majors` VALUES ('155', '祖鲁语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050259');
INSERT INTO `majors` VALUES ('156', '拉丁语', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '246', '', '050260');
INSERT INTO `majors` VALUES ('157', '翻译', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '234', '', '050261');
INSERT INTO `majors` VALUES ('158', '商务英语', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '234', '', '050262');
INSERT INTO `majors` VALUES ('159', '新闻传播学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0503');
INSERT INTO `majors` VALUES ('160', '新闻学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '149', '', '050301');
INSERT INTO `majors` VALUES ('161', '广播电视学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '369', '', '050302');
INSERT INTO `majors` VALUES ('162', '广告学', '1', '', '0', '0', '0', '0', '6', 'A', '5', '思维创造型', '178', '', '050303');
INSERT INTO `majors` VALUES ('163', '传播学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '479', '', '050304');
INSERT INTO `majors` VALUES ('164', '编辑出版学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '050305');
INSERT INTO `majors` VALUES ('165', '网络与新媒体', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '237', '', '050306T');
INSERT INTO `majors` VALUES ('166', '数字出版', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '137', '', '050307T');
INSERT INTO `majors` VALUES ('167', '学科门类：历史学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '06');
INSERT INTO `majors` VALUES ('168', '历史学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0601');
INSERT INTO `majors` VALUES ('169', '历史学', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '139', '', '060101');
INSERT INTO `majors` VALUES ('170', '世界史', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '139', '', '060102');
INSERT INTO `majors` VALUES ('171', '考古学', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '239', '', '060103');
INSERT INTO `majors` VALUES ('172', '文物与博物馆学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '060104');
INSERT INTO `majors` VALUES ('173', '文物保护技术', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '060105T');
INSERT INTO `majors` VALUES ('174', '外国语言与外国历史', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '139', '', '060106T');
INSERT INTO `majors` VALUES ('175', '学科门类：理学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '07');
INSERT INTO `majors` VALUES ('176', '数学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0701');
INSERT INTO `majors` VALUES ('177', '数学与应用数学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '070101');
INSERT INTO `majors` VALUES ('178', '信息与计算科学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '070102');
INSERT INTO `majors` VALUES ('179', '数理基础科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070103T');
INSERT INTO `majors` VALUES ('180', '物理学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0702');
INSERT INTO `majors` VALUES ('181', '物理学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070201');
INSERT INTO `majors` VALUES ('182', '应用物理学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070202');
INSERT INTO `majors` VALUES ('183', '核物理', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070203');
INSERT INTO `majors` VALUES ('184', '声学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070204T');
INSERT INTO `majors` VALUES ('185', '化学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0703');
INSERT INTO `majors` VALUES ('186', '化学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070301');
INSERT INTO `majors` VALUES ('187', '应用化学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070302');
INSERT INTO `majors` VALUES ('188', '化学生物学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070303T');
INSERT INTO `majors` VALUES ('189', '分子科学与工程', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070304T');
INSERT INTO `majors` VALUES ('190', '天文学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0704');
INSERT INTO `majors` VALUES ('191', '天文学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070401');
INSERT INTO `majors` VALUES ('192', '地理科学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0705');
INSERT INTO `majors` VALUES ('193', '地理科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070501');
INSERT INTO `majors` VALUES ('194', '自然地理与资源环境', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070502');
INSERT INTO `majors` VALUES ('195', '人文地理与城乡规划', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '159', '', '070503');
INSERT INTO `majors` VALUES ('196', '地理信息科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070504');
INSERT INTO `majors` VALUES ('197', '大气科学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0706');
INSERT INTO `majors` VALUES ('198', '大气科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070601');
INSERT INTO `majors` VALUES ('199', '应用气象学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070602');
INSERT INTO `majors` VALUES ('200', '海洋科学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0707');
INSERT INTO `majors` VALUES ('201', '海洋科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070701');
INSERT INTO `majors` VALUES ('202', '海洋技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070702');
INSERT INTO `majors` VALUES ('203', '海洋资源与环境', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '239', '', '070703T');
INSERT INTO `majors` VALUES ('204', '军事海洋学', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '289', '', '070704T');
INSERT INTO `majors` VALUES ('205', '地球物理学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0708');
INSERT INTO `majors` VALUES ('206', '地球物理学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070801');
INSERT INTO `majors` VALUES ('207', '空间科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '157', '', '070802');
INSERT INTO `majors` VALUES ('208', '地质学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0709');
INSERT INTO `majors` VALUES ('209', '地质学', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '239', '', '070901');
INSERT INTO `majors` VALUES ('210', '地球化学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '070902');
INSERT INTO `majors` VALUES ('211', '地球信息科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '070903T');
INSERT INTO `majors` VALUES ('212', '古生物学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '139', '', '070904T');
INSERT INTO `majors` VALUES ('213', '生物科学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0710');
INSERT INTO `majors` VALUES ('214', '生物科学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '179', '', '071001');
INSERT INTO `majors` VALUES ('215', '生物技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '071002');
INSERT INTO `majors` VALUES ('216', '生物信息学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '071003');
INSERT INTO `majors` VALUES ('217', '生态学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '159', '', '071004');
INSERT INTO `majors` VALUES ('218', '心理学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0711');
INSERT INTO `majors` VALUES ('219', '心理学', '1', '', '0', '0', '0', '0', '1', 'S', '5', '思维创造型', '179', '', '071101');
INSERT INTO `majors` VALUES ('220', '应用心理学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '179', '', '071102');
INSERT INTO `majors` VALUES ('221', '统计学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0712');
INSERT INTO `majors` VALUES ('222', '统计学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '071201');
INSERT INTO `majors` VALUES ('223', '应用统计学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '071202');
INSERT INTO `majors` VALUES ('224', '学科门类：工学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '08');
INSERT INTO `majors` VALUES ('225', '力学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0801');
INSERT INTO `majors` VALUES ('226', '理论与应用力学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '080101');
INSERT INTO `majors` VALUES ('227', '工程力学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '237', '', '080102');
INSERT INTO `majors` VALUES ('228', '机械类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0802');
INSERT INTO `majors` VALUES ('229', '机械工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080201');
INSERT INTO `majors` VALUES ('230', '机械设计制造及其自动化', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '127', '', '080202');
INSERT INTO `majors` VALUES ('231', '材料成型及控制工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '080203');
INSERT INTO `majors` VALUES ('232', '机械电子工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080204');
INSERT INTO `majors` VALUES ('233', '工业设计', '1', '', '0', '0', '0', '0', '6', 'A', '5', '思维创造型', '178', '', '080205');
INSERT INTO `majors` VALUES ('234', '过程装备与控制工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080206');
INSERT INTO `majors` VALUES ('235', '车辆工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080207');
INSERT INTO `majors` VALUES ('236', '汽车服务工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080208');
INSERT INTO `majors` VALUES ('237', '机械工艺技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '127', '', '080209T');
INSERT INTO `majors` VALUES ('238', '微机电系统工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080210T');
INSERT INTO `majors` VALUES ('239', '机电技术教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '279', '', '080211T');
INSERT INTO `majors` VALUES ('240', '汽车维修工程教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '279', '', '080212T');
INSERT INTO `majors` VALUES ('241', '仪器类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0803');
INSERT INTO `majors` VALUES ('242', '测控技术与仪器', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080301');
INSERT INTO `majors` VALUES ('243', '材料类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0804');
INSERT INTO `majors` VALUES ('244', '材料科学与工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080401');
INSERT INTO `majors` VALUES ('245', '材料物理', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080402');
INSERT INTO `majors` VALUES ('246', '材料化学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080403');
INSERT INTO `majors` VALUES ('247', '冶金工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '080404');
INSERT INTO `majors` VALUES ('248', '金属材料工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080405');
INSERT INTO `majors` VALUES ('249', '无机非金属材料工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080406');
INSERT INTO `majors` VALUES ('250', '高分子材料与工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080407');
INSERT INTO `majors` VALUES ('251', '复合材料与工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080408');
INSERT INTO `majors` VALUES ('252', '粉体材料科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080409T');
INSERT INTO `majors` VALUES ('253', '宝石及材料工艺学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080410T');
INSERT INTO `majors` VALUES ('254', '焊接技术与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '080411T');
INSERT INTO `majors` VALUES ('255', '功能材料', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '378', '', '080412T');
INSERT INTO `majors` VALUES ('256', '纳米材料与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080413T');
INSERT INTO `majors` VALUES ('257', '新能源材料与器件', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '378', '', '080414T');
INSERT INTO `majors` VALUES ('258', '能源动力类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0805');
INSERT INTO `majors` VALUES ('259', '能源与动力工程', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '278', '', '080501');
INSERT INTO `majors` VALUES ('260', '能源与环境系统工程', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '278', '', '080502T');
INSERT INTO `majors` VALUES ('261', '新能源科学与工程', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '278', '', '080503T');
INSERT INTO `majors` VALUES ('262', '电气类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0806');
INSERT INTO `majors` VALUES ('263', '电气工程及其自动化', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080601');
INSERT INTO `majors` VALUES ('264', '智能电网信息工程', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '137', '', '080602T');
INSERT INTO `majors` VALUES ('265', '光源与照明', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '238', '', '080603T');
INSERT INTO `majors` VALUES ('266', '电气工程与智能控制', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '238', '', '080604T');
INSERT INTO `majors` VALUES ('267', '电子信息类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0807');
INSERT INTO `majors` VALUES ('268', '电子信息工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '80701');
INSERT INTO `majors` VALUES ('269', '电子科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '80702');
INSERT INTO `majors` VALUES ('270', '通信工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '80703');
INSERT INTO `majors` VALUES ('271', '微电子科学与工程', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '278', '', '80704');
INSERT INTO `majors` VALUES ('272', '光电信息科学与工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '80705');
INSERT INTO `majors` VALUES ('273', '信息工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '80706');
INSERT INTO `majors` VALUES ('274', '广播电视工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080707T');
INSERT INTO `majors` VALUES ('275', '水声工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080708T');
INSERT INTO `majors` VALUES ('276', '电子封装技术', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '138', '', '080709T');
INSERT INTO `majors` VALUES ('277', '集成电路设计与集成系统', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080710T');
INSERT INTO `majors` VALUES ('278', '医学信息工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '080711T');
INSERT INTO `majors` VALUES ('279', '电磁场与无线技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080712T');
INSERT INTO `majors` VALUES ('280', '电波传播与天线', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080713T');
INSERT INTO `majors` VALUES ('281', '电子信息科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080714T');
INSERT INTO `majors` VALUES ('282', '电信工程及管理', '1', '', '0', '0', '0', '0', '4', 'R', '2', '目标管理型', '258', '', '080715T');
INSERT INTO `majors` VALUES ('283', '应用电子技术教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '279', '', '080716T');
INSERT INTO `majors` VALUES ('284', '自动化类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0808');
INSERT INTO `majors` VALUES ('285', '自动化', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '080801');
INSERT INTO `majors` VALUES ('286', '轨道交通信号与控制', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080802T');
INSERT INTO `majors` VALUES ('287', '计算机类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0809');
INSERT INTO `majors` VALUES ('288', '计算机科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080901');
INSERT INTO `majors` VALUES ('289', '软件工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '080902');
INSERT INTO `majors` VALUES ('290', '网络工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '080903');
INSERT INTO `majors` VALUES ('291', '信息安全', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '080904K');
INSERT INTO `majors` VALUES ('292', '物联网工程', '1', '', '0', '0', '0', '0', '3', 'C', '1', '社会交际型', '149', '', '080905');
INSERT INTO `majors` VALUES ('293', '数字媒体技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080906');
INSERT INTO `majors` VALUES ('294', '智能科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080907T');
INSERT INTO `majors` VALUES ('295', '空间信息与数字技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '080908T');
INSERT INTO `majors` VALUES ('296', '电子与计算机工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '129', '', '080909T');
INSERT INTO `majors` VALUES ('297', '土木类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0810');
INSERT INTO `majors` VALUES ('298', '土木工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '081001');
INSERT INTO `majors` VALUES ('299', '建筑环境与能源应用工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '129', '', '081002');
INSERT INTO `majors` VALUES ('300', '给排水科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081003');
INSERT INTO `majors` VALUES ('301', '建筑电气与智能化', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '178', '', '081004');
INSERT INTO `majors` VALUES ('302', '城市地下空间工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '139', '', '081005T');
INSERT INTO `majors` VALUES ('303', '道路桥梁与渡河工程', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '178', '', '081006T');
INSERT INTO `majors` VALUES ('304', '水利类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0811');
INSERT INTO `majors` VALUES ('305', '水利水电工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081101');
INSERT INTO `majors` VALUES ('306', '水文与水资源工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081102');
INSERT INTO `majors` VALUES ('307', '港口航道与海岸工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081103');
INSERT INTO `majors` VALUES ('308', '水务工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '081104T');
INSERT INTO `majors` VALUES ('309', '测绘类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0812');
INSERT INTO `majors` VALUES ('310', '测绘工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '081201');
INSERT INTO `majors` VALUES ('311', '遥感科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '081202');
INSERT INTO `majors` VALUES ('312', '导航工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '081203T');
INSERT INTO `majors` VALUES ('313', '地理国情监测', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081204T');
INSERT INTO `majors` VALUES ('314', '化工与制药类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0813');
INSERT INTO `majors` VALUES ('315', '化学工程与工艺', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '081301');
INSERT INTO `majors` VALUES ('316', '制药工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '139', '', '081302');
INSERT INTO `majors` VALUES ('317', '资源循环科学与工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081303T');
INSERT INTO `majors` VALUES ('318', '能源化学工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081304T');
INSERT INTO `majors` VALUES ('319', '化学工程与工业生物工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '081305T');
INSERT INTO `majors` VALUES ('320', '地质类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0814');
INSERT INTO `majors` VALUES ('321', '地质工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081401');
INSERT INTO `majors` VALUES ('322', '勘查技术与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '081402');
INSERT INTO `majors` VALUES ('323', '资源勘查工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081403');
INSERT INTO `majors` VALUES ('324', '地下水科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081404T');
INSERT INTO `majors` VALUES ('325', '矿业类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0815');
INSERT INTO `majors` VALUES ('326', '采矿工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081501');
INSERT INTO `majors` VALUES ('327', '石油工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081502');
INSERT INTO `majors` VALUES ('328', '矿物加工工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081503');
INSERT INTO `majors` VALUES ('329', '油气储运工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081504');
INSERT INTO `majors` VALUES ('330', '矿物资源工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081505T');
INSERT INTO `majors` VALUES ('331', '海洋油气工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081506T');
INSERT INTO `majors` VALUES ('332', '纺织类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0816');
INSERT INTO `majors` VALUES ('333', '纺织工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081601');
INSERT INTO `majors` VALUES ('334', '服装设计与工程', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '167', '', '081602');
INSERT INTO `majors` VALUES ('335', '非织造材料与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081603T');
INSERT INTO `majors` VALUES ('336', '服装设计与工艺教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '279', '', '081604T');
INSERT INTO `majors` VALUES ('337', '轻工类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0817');
INSERT INTO `majors` VALUES ('338', '轻化工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081701');
INSERT INTO `majors` VALUES ('339', '包装工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081702');
INSERT INTO `majors` VALUES ('340', '印刷工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081703');
INSERT INTO `majors` VALUES ('341', '交通运输类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0818');
INSERT INTO `majors` VALUES ('342', '交通运输', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '081801');
INSERT INTO `majors` VALUES ('343', '交通工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '081802');
INSERT INTO `majors` VALUES ('344', '航海技术', '1', '', '0', '0', '0', '0', '3', 'C', '5', '思维创造型', '137', '', '081803K');
INSERT INTO `majors` VALUES ('345', '轮机工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '081804K');
INSERT INTO `majors` VALUES ('346', '飞行技术', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '138', '', '081805K');
INSERT INTO `majors` VALUES ('347', '交通设备与控制工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081806T');
INSERT INTO `majors` VALUES ('348', '救助与打捞工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081807T');
INSERT INTO `majors` VALUES ('349', '船舶电子电气工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '138', '', '081808TK');
INSERT INTO `majors` VALUES ('350', '海洋工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0819');
INSERT INTO `majors` VALUES ('351', '船舶与海洋工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081901');
INSERT INTO `majors` VALUES ('352', '海洋工程与技术', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '138', '', '081902T');
INSERT INTO `majors` VALUES ('353', '海洋资源开发技术', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '081903T');
INSERT INTO `majors` VALUES ('354', '航空航天类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0820');
INSERT INTO `majors` VALUES ('355', '航空航天工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082001');
INSERT INTO `majors` VALUES ('356', '飞行器设计与工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082002');
INSERT INTO `majors` VALUES ('357', '飞行器制造工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082003');
INSERT INTO `majors` VALUES ('358', '飞行器动力工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082004');
INSERT INTO `majors` VALUES ('359', '飞行器环境与生命保障工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '082005');
INSERT INTO `majors` VALUES ('360', '飞行器质量与可靠性', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '082006T');
INSERT INTO `majors` VALUES ('361', '飞行器适航技术', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '178', '', '082007T');
INSERT INTO `majors` VALUES ('362', '兵器类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0821');
INSERT INTO `majors` VALUES ('363', '武器系统与工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082101');
INSERT INTO `majors` VALUES ('364', '武器发射工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082102');
INSERT INTO `majors` VALUES ('365', '探测制导与控制技术', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '178', '', '082103');
INSERT INTO `majors` VALUES ('366', '弹药工程与爆炸技术', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '178', '', '082104');
INSERT INTO `majors` VALUES ('367', '特种能源技术与工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082105');
INSERT INTO `majors` VALUES ('368', '装甲车辆工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082106');
INSERT INTO `majors` VALUES ('369', '信息对抗技术', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '178', '', '082107');
INSERT INTO `majors` VALUES ('370', '核工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0822');
INSERT INTO `majors` VALUES ('371', '核工程与核技术', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '178', '', '082201');
INSERT INTO `majors` VALUES ('372', '辐射防护与核安全', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '082202');
INSERT INTO `majors` VALUES ('373', '工程物理', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082203');
INSERT INTO `majors` VALUES ('374', '核化工与核燃料工程', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '082204');
INSERT INTO `majors` VALUES ('375', '农业工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0823');
INSERT INTO `majors` VALUES ('376', '农业工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '129', '', '082301');
INSERT INTO `majors` VALUES ('377', '农业机械化及其自动化', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '082302');
INSERT INTO `majors` VALUES ('378', '农业电气化', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '082303');
INSERT INTO `majors` VALUES ('379', '农业建筑环境与能源工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '082304');
INSERT INTO `majors` VALUES ('380', '农业水利工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '082305');
INSERT INTO `majors` VALUES ('381', '林业工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0824');
INSERT INTO `majors` VALUES ('382', '森林工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082401');
INSERT INTO `majors` VALUES ('383', '木材科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082402');
INSERT INTO `majors` VALUES ('384', '林产化工', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082403');
INSERT INTO `majors` VALUES ('385', '环境科学与工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0825');
INSERT INTO `majors` VALUES ('386', '环境科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '139', '', '082501');
INSERT INTO `majors` VALUES ('387', '环境工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '082502');
INSERT INTO `majors` VALUES ('388', '环境科学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '139', '', '082503');
INSERT INTO `majors` VALUES ('389', '环境生态工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '139', '', '082504');
INSERT INTO `majors` VALUES ('390', '环保设备工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '082505T');
INSERT INTO `majors` VALUES ('391', '资源环境科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '082506T');
INSERT INTO `majors` VALUES ('392', '水质科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '082507T');
INSERT INTO `majors` VALUES ('393', '生物医学工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0826');
INSERT INTO `majors` VALUES ('394', '生物医学工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082601');
INSERT INTO `majors` VALUES ('395', '假肢矫形工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082602T');
INSERT INTO `majors` VALUES ('396', '食品科学与工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0827');
INSERT INTO `majors` VALUES ('397', '食品科学与工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '082701');
INSERT INTO `majors` VALUES ('398', '食品质量与安全', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '082702');
INSERT INTO `majors` VALUES ('399', '粮食工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '082703');
INSERT INTO `majors` VALUES ('400', '乳品工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '082704');
INSERT INTO `majors` VALUES ('401', '酿酒工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082705');
INSERT INTO `majors` VALUES ('402', '葡萄与葡萄酒工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082706T');
INSERT INTO `majors` VALUES ('403', '食品营养与检验教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '239', '', '082707T');
INSERT INTO `majors` VALUES ('404', '烹饪与营养教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '239', '', '082708T');
INSERT INTO `majors` VALUES ('405', '建筑类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0828');
INSERT INTO `majors` VALUES ('406', '建筑学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '136', '', '082801');
INSERT INTO `majors` VALUES ('407', '城乡规划', '1', '', '0', '0', '0', '0', '3', 'C', '2', '目标管理型', '158', '', '082802');
INSERT INTO `majors` VALUES ('408', '风景园林', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '679', '', '082803');
INSERT INTO `majors` VALUES ('409', '历史建筑保护工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '082804T');
INSERT INTO `majors` VALUES ('410', '安全科学与工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '829');
INSERT INTO `majors` VALUES ('411', '安全工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '82901');
INSERT INTO `majors` VALUES ('412', '生物工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '830');
INSERT INTO `majors` VALUES ('413', '生物工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '83001');
INSERT INTO `majors` VALUES ('414', '生物制药', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '083002T');
INSERT INTO `majors` VALUES ('415', '公安技术类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '831');
INSERT INTO `majors` VALUES ('416', '刑事科学技术', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '083101K');
INSERT INTO `majors` VALUES ('417', '消防工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '083102K');
INSERT INTO `majors` VALUES ('418', '交通管理工程', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '135', '', '083103TK');
INSERT INTO `majors` VALUES ('419', '安全防范工程', '1', '', '0', '0', '0', '0', '3', 'C', '2', '目标管理型', '158', '', '083104TK');
INSERT INTO `majors` VALUES ('420', '公安视听技术', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '138', '', '083105TK');
INSERT INTO `majors` VALUES ('421', '抢险救援指挥与技术', '1', '', '0', '0', '0', '0', '2', 'E', '4', '个人工作型', '235', '', '083106TK');
INSERT INTO `majors` VALUES ('422', '火灾勘查', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '083107TK');
INSERT INTO `majors` VALUES ('423', '网络安全与执法', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '083108TK');
INSERT INTO `majors` VALUES ('424', '核生化消防', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '083109TK');
INSERT INTO `majors` VALUES ('425', '学科门类：农学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '09');
INSERT INTO `majors` VALUES ('426', '植物生产类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '0901');
INSERT INTO `majors` VALUES ('427', '农学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090101');
INSERT INTO `majors` VALUES ('428', '园艺', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '679', '', '090102');
INSERT INTO `majors` VALUES ('429', '植物保护', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090103');
INSERT INTO `majors` VALUES ('430', '植物科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '090104');
INSERT INTO `majors` VALUES ('431', '种子科学与工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090105');
INSERT INTO `majors` VALUES ('432', '设施农业科学与工程', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090106');
INSERT INTO `majors` VALUES ('433', '茶学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090107T');
INSERT INTO `majors` VALUES ('434', '烟草', '1', '', '0', '0', '0', '0', '4', 'R', '2', '目标管理型', '158', '', '090108T');
INSERT INTO `majors` VALUES ('435', '应用生物科学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '090109T');
INSERT INTO `majors` VALUES ('436', '农艺教育', '1', '', '0', '0', '0', '0', '1', 'S', '3', '公益维护型', '239', '', '090110T');
INSERT INTO `majors` VALUES ('437', '园艺教育', '1', '', '0', '0', '0', '0', '1', 'S', '6', '文艺革新型', '679', '', '090111T');
INSERT INTO `majors` VALUES ('438', '自然保护与环境生态类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '902');
INSERT INTO `majors` VALUES ('439', '农业资源与环境', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '129', '', '90201');
INSERT INTO `majors` VALUES ('440', '野生动物与自然保护区管理', '1', '', '0', '0', '0', '0', '4', 'R', '3', '公益维护型', '129', '', '90202');
INSERT INTO `majors` VALUES ('441', '水土保持与荒漠化防治', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '90203');
INSERT INTO `majors` VALUES ('442', '动物生产类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '903');
INSERT INTO `majors` VALUES ('443', '动物科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '90301');
INSERT INTO `majors` VALUES ('444', '蚕学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090302T');
INSERT INTO `majors` VALUES ('445', '蜂学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '090303T');
INSERT INTO `majors` VALUES ('446', '动物医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '904');
INSERT INTO `majors` VALUES ('447', '动物医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '179', '', '90401');
INSERT INTO `majors` VALUES ('448', '动物药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '90402');
INSERT INTO `majors` VALUES ('449', '动植物检疫', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '090403T');
INSERT INTO `majors` VALUES ('450', '林学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '905');
INSERT INTO `majors` VALUES ('451', '林学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '90501');
INSERT INTO `majors` VALUES ('452', '园林', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '159', '', '90502');
INSERT INTO `majors` VALUES ('453', '森林保护', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '90503');
INSERT INTO `majors` VALUES ('454', '水产类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '906');
INSERT INTO `majors` VALUES ('455', '水产养殖学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '123', '', '90601');
INSERT INTO `majors` VALUES ('456', '海洋渔业科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '90602');
INSERT INTO `majors` VALUES ('457', '水族科学与技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '090603T');
INSERT INTO `majors` VALUES ('458', '草学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '907');
INSERT INTO `majors` VALUES ('459', '草业科学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '139', '', '90701');
INSERT INTO `majors` VALUES ('460', '学科门类：医学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '10');
INSERT INTO `majors` VALUES ('461', '基础医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1001');
INSERT INTO `majors` VALUES ('462', '基础医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100101K');
INSERT INTO `majors` VALUES ('463', '临床医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1002');
INSERT INTO `majors` VALUES ('464', '临床医学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '128', '', '100201K');
INSERT INTO `majors` VALUES ('465', '麻醉学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100202TK');
INSERT INTO `majors` VALUES ('466', '医学影像学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100203TK');
INSERT INTO `majors` VALUES ('467', '眼视光医学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '100204TK');
INSERT INTO `majors` VALUES ('468', '精神医学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '100205TK');
INSERT INTO `majors` VALUES ('469', '放射医学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '100206TK');
INSERT INTO `majors` VALUES ('470', '口腔医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1003');
INSERT INTO `majors` VALUES ('471', '口腔医学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '100301K');
INSERT INTO `majors` VALUES ('472', '公共卫生与预防医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1004');
INSERT INTO `majors` VALUES ('473', '预防医学', '1', '', '0', '0', '0', '0', '4', 'R', '5', '思维创造型', '137', '', '100401K');
INSERT INTO `majors` VALUES ('474', '食品卫生与营养学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '138', '', '100402');
INSERT INTO `majors` VALUES ('475', '妇幼保健医学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '139', '', '100403TK');
INSERT INTO `majors` VALUES ('476', '卫生监督', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '100404TK');
INSERT INTO `majors` VALUES ('477', '全球健康学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100405TK');
INSERT INTO `majors` VALUES ('478', '中医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1005');
INSERT INTO `majors` VALUES ('479', '中医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100501K');
INSERT INTO `majors` VALUES ('480', '针灸推拿学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100502K');
INSERT INTO `majors` VALUES ('481', '藏医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100503K');
INSERT INTO `majors` VALUES ('482', '蒙医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100504K');
INSERT INTO `majors` VALUES ('483', '维医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100505K');
INSERT INTO `majors` VALUES ('484', '壮医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100506K');
INSERT INTO `majors` VALUES ('485', '哈医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100507K');
INSERT INTO `majors` VALUES ('486', '中西医结合类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1006');
INSERT INTO `majors` VALUES ('487', '中西医临床医学', '1', '', '0', '0', '0', '0', '4', 'R', '4', '个人工作型', '128', '', '100601K');
INSERT INTO `majors` VALUES ('488', '药学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1007');
INSERT INTO `majors` VALUES ('489', '药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100701');
INSERT INTO `majors` VALUES ('490', '药物制剂', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '100702');
INSERT INTO `majors` VALUES ('491', '临床药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '100703TK');
INSERT INTO `majors` VALUES ('492', '药事管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '100704T');
INSERT INTO `majors` VALUES ('493', '药物分析', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '100705T');
INSERT INTO `majors` VALUES ('494', '药物化学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '100706T');
INSERT INTO `majors` VALUES ('495', '海洋药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100707T');
INSERT INTO `majors` VALUES ('496', '中药学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1008');
INSERT INTO `majors` VALUES ('497', '中药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100801');
INSERT INTO `majors` VALUES ('498', '中药资源与开发', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '100802');
INSERT INTO `majors` VALUES ('499', '藏药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100803T');
INSERT INTO `majors` VALUES ('500', '蒙药学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '137', '', '100804T');
INSERT INTO `majors` VALUES ('501', '中药制药', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '178', '', '100805T');
INSERT INTO `majors` VALUES ('502', '中草药栽培与鉴定', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '100806T');
INSERT INTO `majors` VALUES ('503', '法医学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1009');
INSERT INTO `majors` VALUES ('504', '法医学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '100901K');
INSERT INTO `majors` VALUES ('505', '医学技术类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1010');
INSERT INTO `majors` VALUES ('506', '医学检验技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '128', '', '101001');
INSERT INTO `majors` VALUES ('507', '医学实验技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '128', '', '101002');
INSERT INTO `majors` VALUES ('508', '医学影像技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '128', '', '101003');
INSERT INTO `majors` VALUES ('509', '眼视光学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '101004');
INSERT INTO `majors` VALUES ('510', '康复治疗学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '189', '', '101005');
INSERT INTO `majors` VALUES ('511', '口腔医学技术', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '128', '', '101006');
INSERT INTO `majors` VALUES ('512', '卫生检验与检疫', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '101007');
INSERT INTO `majors` VALUES ('513', '听力与言语康复学', '1', '', '0', '0', '0', '0', '5', 'I', '5', '思维创造型', '138', '', '101008T');
INSERT INTO `majors` VALUES ('514', '护理学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1011');
INSERT INTO `majors` VALUES ('515', '护理学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '289', '', '101101');
INSERT INTO `majors` VALUES ('516', '学科门类：管理学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '12');
INSERT INTO `majors` VALUES ('517', '管理科学与工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1201');
INSERT INTO `majors` VALUES ('518', '管理科学', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '158', '', '120101');
INSERT INTO `majors` VALUES ('519', '信息管理与信息系统', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '120102');
INSERT INTO `majors` VALUES ('520', '工程管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '120103');
INSERT INTO `majors` VALUES ('521', '房地产开发与管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '120104');
INSERT INTO `majors` VALUES ('522', '工程造价', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '120105');
INSERT INTO `majors` VALUES ('523', '保密管理', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120106TK');
INSERT INTO `majors` VALUES ('524', '工商管理类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1202');
INSERT INTO `majors` VALUES ('525', '工商管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '458', '', '120201K');
INSERT INTO `majors` VALUES ('526', '市场营销', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '458', '', '120202');
INSERT INTO `majors` VALUES ('527', '会计学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '120203K');
INSERT INTO `majors` VALUES ('528', '财务管理', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '125', '', '120204');
INSERT INTO `majors` VALUES ('529', '国际商务', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '458', '', '120205');
INSERT INTO `majors` VALUES ('530', '人力资源管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '456', '', '120206');
INSERT INTO `majors` VALUES ('531', '审计学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '123', '', '120207');
INSERT INTO `majors` VALUES ('532', '资产评估', '1', '', '0', '0', '0', '0', '3', 'C', '2', '目标管理型', '158', '', '120208');
INSERT INTO `majors` VALUES ('533', '物业管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '458', '', '120209');
INSERT INTO `majors` VALUES ('534', '文化产业管理', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '120210');
INSERT INTO `majors` VALUES ('535', '劳动关系', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '120211T');
INSERT INTO `majors` VALUES ('536', '体育经济与管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '158', '', '120212T');
INSERT INTO `majors` VALUES ('537', '财务会计教育', '1', '', '0', '0', '0', '0', '1', 'S', '1', '社会交际型', '139', '', '120213T');
INSERT INTO `majors` VALUES ('538', '市场营销教育', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '456', '', '120214T');
INSERT INTO `majors` VALUES ('539', '农业经济管理类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1203');
INSERT INTO `majors` VALUES ('540', '农林经济管理', '1', '', '0', '0', '0', '0', '3', 'C', '2', '目标管理型', '258', '', '120301');
INSERT INTO `majors` VALUES ('541', '农村区域发展', '1', '', '0', '0', '0', '0', '3', 'C', '2', '目标管理型', '158', '', '120302');
INSERT INTO `majors` VALUES ('542', '公共管理类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1204');
INSERT INTO `majors` VALUES ('543', '公共事业管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '359', '', '120401');
INSERT INTO `majors` VALUES ('544', '行政管理', '1', '', '0', '0', '0', '0', '2', 'E', '3', '公益维护型', '259', '', '120402');
INSERT INTO `majors` VALUES ('545', '劳动与社会保障', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '120403');
INSERT INTO `majors` VALUES ('546', '土地资源管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '120404');
INSERT INTO `majors` VALUES ('547', '城市管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '359', '', '120405');
INSERT INTO `majors` VALUES ('548', '海关管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '120406TK');
INSERT INTO `majors` VALUES ('549', '交通管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '359', '', '120407T');
INSERT INTO `majors` VALUES ('550', '海事管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '358', '', '120408T');
INSERT INTO `majors` VALUES ('551', '公共关系学', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '120409T');
INSERT INTO `majors` VALUES ('552', '图书情报与档案管理类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1205');
INSERT INTO `majors` VALUES ('553', '图书馆学', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '239', '', '120501');
INSERT INTO `majors` VALUES ('554', '档案学', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120502');
INSERT INTO `majors` VALUES ('555', '信息资源管理', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '135', '', '120503');
INSERT INTO `majors` VALUES ('556', '物流管理与工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1206');
INSERT INTO `majors` VALUES ('557', '物流管理', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '120601');
INSERT INTO `majors` VALUES ('558', '物流工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120602');
INSERT INTO `majors` VALUES ('559', '采购管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '348', '', '120603T');
INSERT INTO `majors` VALUES ('560', '工业工程类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1207');
INSERT INTO `majors` VALUES ('561', '工业工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120701');
INSERT INTO `majors` VALUES ('562', '标准化工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120702T');
INSERT INTO `majors` VALUES ('563', '质量管理工程', '1', '', '0', '0', '0', '0', '3', 'C', '4', '个人工作型', '238', '', '120703T');
INSERT INTO `majors` VALUES ('564', '电子商务类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1208');
INSERT INTO `majors` VALUES ('565', '电子商务', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '125', '', '120801');
INSERT INTO `majors` VALUES ('566', '电子商务及法律', '1', '', '0', '0', '0', '0', '3', 'C', '3', '公益维护型', '128', '', '120802T');
INSERT INTO `majors` VALUES ('567', '旅游管理类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1209');
INSERT INTO `majors` VALUES ('568', '旅游管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '458', '', '120901K');
INSERT INTO `majors` VALUES ('569', '酒店管理', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '459', '', '120902');
INSERT INTO `majors` VALUES ('570', '会展经济与管理', '1', '', '0', '0', '0', '0', '2', 'E', '2', '目标管理型', '189', '', '120903');
INSERT INTO `majors` VALUES ('571', '旅游管理与服务教育', '1', '', '0', '0', '0', '0', '2', 'E', '1', '社会交际型', '469', '', '120904T');
INSERT INTO `majors` VALUES ('572', '学科门类：艺术学', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '13');
INSERT INTO `majors` VALUES ('573', '艺术学理论类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1301');
INSERT INTO `majors` VALUES ('574', '艺术史论', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '349', '', '130101');
INSERT INTO `majors` VALUES ('575', '音乐与舞蹈学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1302');
INSERT INTO `majors` VALUES ('576', '音乐表演', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '367', '', '130201');
INSERT INTO `majors` VALUES ('577', '音乐学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '367', '', '130202');
INSERT INTO `majors` VALUES ('578', '作曲与作曲技术理论', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '367', '', '130203');
INSERT INTO `majors` VALUES ('579', '舞蹈表演', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '367', '', '130204');
INSERT INTO `majors` VALUES ('580', '舞蹈学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '267', '', '130205');
INSERT INTO `majors` VALUES ('581', '舞蹈编导', '1', '', '0', '0', '0', '0', '6', 'A', '3', '公益维护型', '279', '', '130206');
INSERT INTO `majors` VALUES ('582', '戏剧与影视学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1303');
INSERT INTO `majors` VALUES ('583', '表演', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '267', '', '130301');
INSERT INTO `majors` VALUES ('584', '戏剧学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '679', '', '130302');
INSERT INTO `majors` VALUES ('585', '电影学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '679', '', '130303');
INSERT INTO `majors` VALUES ('586', '戏剧影视文学', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130304');
INSERT INTO `majors` VALUES ('587', '广播电视编导', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '345', '', '130305');
INSERT INTO `majors` VALUES ('588', '戏剧影视导演', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '345', '', '130306');
INSERT INTO `majors` VALUES ('589', '戏剧影视美术设计', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130307');
INSERT INTO `majors` VALUES ('590', '录音艺术', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130308');
INSERT INTO `majors` VALUES ('591', '播音与主持艺术', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '368', '', '130309');
INSERT INTO `majors` VALUES ('592', '动画', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130310');
INSERT INTO `majors` VALUES ('593', '影视摄影与制作', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '238', '', '130311T');
INSERT INTO `majors` VALUES ('594', '美术学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1304');
INSERT INTO `majors` VALUES ('595', '美术学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '137', '', '130401');
INSERT INTO `majors` VALUES ('596', '绘画', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130402');
INSERT INTO `majors` VALUES ('597', '雕塑', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130403');
INSERT INTO `majors` VALUES ('598', '摄影', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130404');
INSERT INTO `majors` VALUES ('599', '书法学', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '236', '', '130405T');
INSERT INTO `majors` VALUES ('600', '中国画', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '237', '', '130406T');
INSERT INTO `majors` VALUES ('601', '设计学类', '1', '', '0', '0', '0', '0', '0', '', '0', '', '', '', '1305');
INSERT INTO `majors` VALUES ('602', '艺术设计学', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '379', '', '130501');
INSERT INTO `majors` VALUES ('603', '视觉传达设计', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '378', '', '130502');
INSERT INTO `majors` VALUES ('604', '环境设计', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '239', '', '130503');
INSERT INTO `majors` VALUES ('605', '产品设计', '1', '', '0', '0', '0', '0', '2', 'E', '5', '思维创造型', '179', '', '130504');
INSERT INTO `majors` VALUES ('606', '服装与服饰设计', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '678', '', '130505');
INSERT INTO `majors` VALUES ('607', '公共艺术', '1', '', '0', '0', '0', '0', '6', 'A', '6', '文艺革新型', '379', '', '130506');
INSERT INTO `majors` VALUES ('608', '工艺美术', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '123', '', '130507');
INSERT INTO `majors` VALUES ('609', '数字媒体艺术', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '123', '', '0130508');
INSERT INTO `majors` VALUES ('610', '艺术与科技', '1', '', '0', '0', '0', '0', '6', 'A', '4', '个人工作型', '123', '', '0130509T');

-- ----------------------------
-- Table structure for member_ability_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_ability_grades`;
CREATE TABLE `member_ability_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `ability_id` int(10) unsigned NOT NULL,
  `grade` decimal(3,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`ability_id`),
  KEY `fk_member_has_abilities_abilities1_idx` (`ability_id`),
  KEY `fk_member_has_abilities_member1_idx` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='才干得分';

-- ----------------------------
-- Records of member_ability_grades
-- ----------------------------
INSERT INTO `member_ability_grades` VALUES ('3550', '1', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '2', '11.1');
INSERT INTO `member_ability_grades` VALUES ('3550', '3', '44.4');
INSERT INTO `member_ability_grades` VALUES ('3550', '4', '62.5');
INSERT INTO `member_ability_grades` VALUES ('3550', '5', '12.5');
INSERT INTO `member_ability_grades` VALUES ('3550', '6', '66.7');
INSERT INTO `member_ability_grades` VALUES ('3550', '7', '37.5');
INSERT INTO `member_ability_grades` VALUES ('3550', '8', '22.2');
INSERT INTO `member_ability_grades` VALUES ('3550', '9', '44.4');
INSERT INTO `member_ability_grades` VALUES ('3550', '10', '44.4');
INSERT INTO `member_ability_grades` VALUES ('3550', '11', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '12', '66.7');
INSERT INTO `member_ability_grades` VALUES ('3550', '13', '70.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '14', '33.3');
INSERT INTO `member_ability_grades` VALUES ('3550', '15', '55.6');
INSERT INTO `member_ability_grades` VALUES ('3550', '16', '66.7');
INSERT INTO `member_ability_grades` VALUES ('3550', '17', '33.3');
INSERT INTO `member_ability_grades` VALUES ('3550', '18', '99.9');
INSERT INTO `member_ability_grades` VALUES ('3550', '19', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '20', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '21', '60.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '22', '55.6');
INSERT INTO `member_ability_grades` VALUES ('3550', '23', '50.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '24', '10.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '25', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '26', '40.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '27', '42.9');
INSERT INTO `member_ability_grades` VALUES ('3550', '28', '11.1');
INSERT INTO `member_ability_grades` VALUES ('3550', '29', '25.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '30', '77.8');
INSERT INTO `member_ability_grades` VALUES ('3550', '31', '44.4');
INSERT INTO `member_ability_grades` VALUES ('3550', '32', '50.0');
INSERT INTO `member_ability_grades` VALUES ('3550', '33', '28.6');
INSERT INTO `member_ability_grades` VALUES ('3550', '34', '37.5');

-- ----------------------------
-- Table structure for member_interest_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_interest_grades`;
CREATE TABLE `member_interest_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `interest_id` int(10) unsigned NOT NULL,
  `grade` decimal(3,1) NOT NULL DEFAULT '0.0' COMMENT '得分',
  PRIMARY KEY (`member_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户兴趣得分';

-- ----------------------------
-- Records of member_interest_grades
-- ----------------------------
INSERT INTO `member_interest_grades` VALUES ('3550', '1', '50.0');
INSERT INTO `member_interest_grades` VALUES ('3550', '4', '70.0');
INSERT INTO `member_interest_grades` VALUES ('3550', '6', '90.0');
INSERT INTO `member_interest_grades` VALUES ('3550', '5', '60.0');
INSERT INTO `member_interest_grades` VALUES ('3550', '2', '70.0');
INSERT INTO `member_interest_grades` VALUES ('3550', '3', '70.0');

-- ----------------------------
-- Table structure for member_major_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_major_grades`;
CREATE TABLE `member_major_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `major_id` int(10) unsigned NOT NULL,
  `grade` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`major_id`),
  KEY `major_id` (`major_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户专业得分';

-- ----------------------------
-- Records of member_major_grades
-- ----------------------------
INSERT INTO `member_major_grades` VALUES ('3550', '1', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '2', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '3', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '4', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '5', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '6', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '7', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '8', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '9', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '10', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '11', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '12', '70.0');
INSERT INTO `member_major_grades` VALUES ('3550', '13', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '14', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '15', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '16', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '17', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '18', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '19', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '20', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '21', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '22', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '23', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '24', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '25', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '26', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '27', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '28', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '29', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '30', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '31', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '32', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '33', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '34', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '35', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '36', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '37', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '38', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '39', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '40', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '41', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '42', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '43', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '44', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '45', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '46', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '47', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '48', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '49', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '50', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '51', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '52', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '53', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '54', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '55', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '56', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '57', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '58', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '59', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '60', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '61', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '62', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '63', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '64', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '65', '20.0');
INSERT INTO `member_major_grades` VALUES ('3550', '66', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '67', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '68', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '69', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '70', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '71', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '72', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '73', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '74', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '75', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '76', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '77', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '78', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '79', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '80', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '81', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '82', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '83', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '84', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '85', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '86', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '87', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '88', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '89', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '90', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '91', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '92', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '93', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '94', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '95', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '96', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '97', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '98', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '99', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '100', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '101', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '102', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '103', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '104', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '105', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '106', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '107', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '108', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '109', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '110', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '111', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '112', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '113', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '114', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '115', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '116', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '117', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '118', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '119', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '120', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '121', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '122', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '123', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '124', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '125', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '126', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '127', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '128', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '129', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '130', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '131', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '132', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '133', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '134', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '135', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '136', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '137', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '138', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '139', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '140', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '141', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '142', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '143', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '144', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '145', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '146', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '147', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '148', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '149', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '150', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '151', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '152', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '153', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '154', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '155', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '156', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '157', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '158', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '159', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '160', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '161', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '162', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '163', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '164', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '165', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '166', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '167', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '168', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '169', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '170', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '171', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '172', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '173', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '174', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '175', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '176', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '177', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '178', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '179', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '180', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '181', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '182', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '183', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '184', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '185', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '186', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '187', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '188', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '189', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '190', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '191', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '192', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '193', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '194', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '195', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '196', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '197', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '198', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '199', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '200', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '201', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '202', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '203', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '204', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '205', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '206', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '207', '70.0');
INSERT INTO `member_major_grades` VALUES ('3550', '208', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '209', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '210', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '211', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '212', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '213', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '214', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '215', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '216', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '217', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '218', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '219', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '220', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '221', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '222', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '223', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '224', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '225', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '226', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '227', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '228', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '229', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '230', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '231', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '232', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '233', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '234', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '235', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '236', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '237', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '238', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '239', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '240', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '241', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '242', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '243', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '244', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '245', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '246', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '247', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '248', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '249', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '250', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '251', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '252', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '253', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '254', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '255', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '256', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '257', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '258', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '259', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '260', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '261', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '262', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '263', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '264', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '265', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '266', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '267', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '268', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '269', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '270', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '271', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '272', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '273', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '274', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '275', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '276', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '277', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '278', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '279', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '280', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '281', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '282', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '283', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '284', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '285', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '286', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '287', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '288', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '289', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '290', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '291', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '292', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '293', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '294', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '295', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '296', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '297', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '298', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '299', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '300', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '301', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '302', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '303', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '304', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '305', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '306', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '307', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '308', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '309', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '310', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '311', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '312', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '313', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '314', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '315', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '316', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '317', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '318', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '319', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '320', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '321', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '322', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '323', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '324', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '325', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '326', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '327', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '328', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '329', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '330', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '331', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '332', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '333', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '334', '75.0');
INSERT INTO `member_major_grades` VALUES ('3550', '335', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '336', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '337', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '338', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '339', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '340', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '341', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '342', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '343', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '344', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '345', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '346', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '347', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '348', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '349', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '350', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '351', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '352', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '353', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '354', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '355', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '356', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '357', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '358', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '359', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '360', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '361', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '362', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '363', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '364', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '365', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '366', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '367', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '368', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '369', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '370', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '371', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '372', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '373', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '374', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '375', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '376', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '377', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '378', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '379', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '380', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '381', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '382', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '383', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '384', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '385', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '386', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '387', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '388', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '389', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '390', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '391', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '392', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '393', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '394', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '395', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '396', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '397', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '398', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '399', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '400', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '401', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '402', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '403', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '404', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '405', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '406', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '407', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '408', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '409', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '410', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '411', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '412', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '413', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '414', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '415', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '416', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '417', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '418', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '419', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '420', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '421', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '422', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '423', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '424', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '425', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '426', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '427', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '428', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '429', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '430', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '431', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '432', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '433', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '434', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '435', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '436', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '437', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '438', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '439', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '440', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '441', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '442', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '443', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '444', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '445', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '446', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '447', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '448', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '449', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '450', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '451', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '452', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '453', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '454', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '455', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '456', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '457', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '458', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '459', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '460', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '461', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '462', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '463', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '464', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '465', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '466', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '467', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '468', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '469', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '470', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '471', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '472', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '473', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '474', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '475', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '476', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '477', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '478', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '479', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '480', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '481', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '482', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '483', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '484', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '485', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '486', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '487', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '488', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '489', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '490', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '491', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '492', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '493', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '494', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '495', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '496', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '497', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '498', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '499', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '500', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '501', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '502', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '503', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '504', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '505', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '506', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '507', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '508', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '509', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '510', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '511', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '512', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '513', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '514', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '515', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '516', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '517', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '518', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '519', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '520', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '521', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '522', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '523', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '524', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '525', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '526', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '527', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '528', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '529', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '530', '75.0');
INSERT INTO `member_major_grades` VALUES ('3550', '531', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '532', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '533', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '534', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '535', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '536', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '537', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '538', '75.0');
INSERT INTO `member_major_grades` VALUES ('3550', '539', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '540', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '541', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '542', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '543', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '544', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '545', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '546', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '547', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '548', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '549', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '550', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '551', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '552', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '553', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '554', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '555', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '556', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '557', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '558', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '559', '30.0');
INSERT INTO `member_major_grades` VALUES ('3550', '560', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '561', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '562', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '563', '5.0');
INSERT INTO `member_major_grades` VALUES ('3550', '564', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '565', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '566', '15.0');
INSERT INTO `member_major_grades` VALUES ('3550', '567', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '568', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '569', '55.0');
INSERT INTO `member_major_grades` VALUES ('3550', '570', '20.0');
INSERT INTO `member_major_grades` VALUES ('3550', '571', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '572', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '573', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '574', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '575', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '576', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '577', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '578', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '579', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '580', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '581', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '582', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '583', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '584', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '585', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '586', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '587', '75.0');
INSERT INTO `member_major_grades` VALUES ('3550', '588', '75.0');
INSERT INTO `member_major_grades` VALUES ('3550', '589', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '590', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '591', '40.0');
INSERT INTO `member_major_grades` VALUES ('3550', '592', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '593', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '594', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '595', '60.0');
INSERT INTO `member_major_grades` VALUES ('3550', '596', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '597', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '598', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '599', '25.0');
INSERT INTO `member_major_grades` VALUES ('3550', '600', '35.0');
INSERT INTO `member_major_grades` VALUES ('3550', '601', '0.0');
INSERT INTO `member_major_grades` VALUES ('3550', '602', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '603', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '604', '10.0');
INSERT INTO `member_major_grades` VALUES ('3550', '605', '45.0');
INSERT INTO `member_major_grades` VALUES ('3550', '606', '65.0');
INSERT INTO `member_major_grades` VALUES ('3550', '607', '50.0');
INSERT INTO `member_major_grades` VALUES ('3550', '608', '20.0');
INSERT INTO `member_major_grades` VALUES ('3550', '609', '20.0');
INSERT INTO `member_major_grades` VALUES ('3550', '610', '20.0');

-- ----------------------------
-- Table structure for member_personality_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_personality_grades`;
CREATE TABLE `member_personality_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `personality_id` int(10) unsigned NOT NULL,
  `grade` decimal(3,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`personality_id`),
  KEY `personality_id` (`personality_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='风格得分';

-- ----------------------------
-- Records of member_personality_grades
-- ----------------------------
INSERT INTO `member_personality_grades` VALUES ('3550', '1', '70.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '2', '0.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '3', '0.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '4', '70.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '5', '0.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '6', '70.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '7', '70.0');
INSERT INTO `member_personality_grades` VALUES ('3550', '8', '0.0');

-- ----------------------------
-- Table structure for member_potential_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_potential_grades`;
CREATE TABLE `member_potential_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `potential_id` int(10) unsigned NOT NULL,
  `grade` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`potential_id`),
  KEY `fk_member_has_potentials_potentials1_idx` (`potential_id`),
  KEY `fk_member_has_potentials_member1_idx` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='潜能分数';

-- ----------------------------
-- Records of member_potential_grades
-- ----------------------------
INSERT INTO `member_potential_grades` VALUES ('3550', '1', '38.6');
INSERT INTO `member_potential_grades` VALUES ('3550', '2', '28.8');
INSERT INTO `member_potential_grades` VALUES ('3550', '3', '35.3');
INSERT INTO `member_potential_grades` VALUES ('3550', '4', '40.2');
INSERT INTO `member_potential_grades` VALUES ('3550', '5', '43.4');
INSERT INTO `member_potential_grades` VALUES ('3550', '6', '39.3');
INSERT INTO `member_potential_grades` VALUES ('3550', '7', '40.8');
INSERT INTO `member_potential_grades` VALUES ('3550', '8', '34.1');
INSERT INTO `member_potential_grades` VALUES ('3550', '9', '36.6');

-- ----------------------------
-- Table structure for member_quality_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_quality_grades`;
CREATE TABLE `member_quality_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `quality_id` int(10) unsigned NOT NULL,
  `grade` decimal(3,1) NOT NULL,
  PRIMARY KEY (`member_id`,`quality_id`),
  KEY `quality_id` (`quality_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='素质模型得分';

-- ----------------------------
-- Records of member_quality_grades
-- ----------------------------
INSERT INTO `member_quality_grades` VALUES ('3550', '1', '57.7');
INSERT INTO `member_quality_grades` VALUES ('3550', '2', '48.3');
INSERT INTO `member_quality_grades` VALUES ('3550', '3', '41.9');
INSERT INTO `member_quality_grades` VALUES ('3550', '4', '52.3');
INSERT INTO `member_quality_grades` VALUES ('3550', '5', '54.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '6', '48.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '7', '52.0');
INSERT INTO `member_quality_grades` VALUES ('3550', '8', '49.2');
INSERT INTO `member_quality_grades` VALUES ('3550', '9', '40.2');
INSERT INTO `member_quality_grades` VALUES ('3550', '10', '34.2');
INSERT INTO `member_quality_grades` VALUES ('3550', '11', '58.2');
INSERT INTO `member_quality_grades` VALUES ('3550', '12', '35.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '13', '52.3');
INSERT INTO `member_quality_grades` VALUES ('3550', '14', '38.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '15', '52.3');
INSERT INTO `member_quality_grades` VALUES ('3550', '16', '35.4');
INSERT INTO `member_quality_grades` VALUES ('3550', '17', '38.5');
INSERT INTO `member_quality_grades` VALUES ('3550', '18', '37.1');
INSERT INTO `member_quality_grades` VALUES ('3550', '19', '54.1');
INSERT INTO `member_quality_grades` VALUES ('3550', '20', '56.9');
INSERT INTO `member_quality_grades` VALUES ('3550', '21', '40.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '22', '38.5');
INSERT INTO `member_quality_grades` VALUES ('3550', '23', '42.0');
INSERT INTO `member_quality_grades` VALUES ('3550', '24', '47.8');
INSERT INTO `member_quality_grades` VALUES ('3550', '25', '46.0');
INSERT INTO `member_quality_grades` VALUES ('3550', '26', '35.9');
INSERT INTO `member_quality_grades` VALUES ('3550', '27', '35.4');
INSERT INTO `member_quality_grades` VALUES ('3550', '28', '40.1');
INSERT INTO `member_quality_grades` VALUES ('3550', '29', '45.7');

-- ----------------------------
-- Table structure for member_shake_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_shake_grades`;
CREATE TABLE `member_shake_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `grade` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`shake_id`),
  KEY `shake_id` (`shake_id`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='型格得分';

-- ----------------------------
-- Records of member_shake_grades
-- ----------------------------
INSERT INTO `member_shake_grades` VALUES ('3550', '6', '42.9');
INSERT INTO `member_shake_grades` VALUES ('3550', '5', '32.6');
INSERT INTO `member_shake_grades` VALUES ('3550', '4', '24.3');
INSERT INTO `member_shake_grades` VALUES ('3550', '3', '29.1');
INSERT INTO `member_shake_grades` VALUES ('3550', '2', '36.3');
INSERT INTO `member_shake_grades` VALUES ('3550', '1', '27.4');

-- ----------------------------
-- Table structure for member_shake_potential_grades
-- ----------------------------
DROP TABLE IF EXISTS `member_shake_potential_grades`;
CREATE TABLE `member_shake_potential_grades` (
  `member_id` int(10) unsigned NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `potential_ids` varchar(45) NOT NULL,
  `grade` decimal(4,1) unsigned NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`member_id`,`shake_id`),
  KEY `shake_id` (`shake_id`),
  KEY `member_id` (`member_id`),
  KEY `potential_id` (`potential_ids`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='型格对应双潜能分数';

-- ----------------------------
-- Records of member_shake_potential_grades
-- ----------------------------
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '1', '49', '38.4');
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '2', '58', '38.8');
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '3', '29', '32.7');
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '4', '23', '32.1');
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '5', '17', '39.7');
INSERT INTO `member_shake_potential_grades` VALUES ('3550', '6', '67', '40.1');

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
-- Table structure for potentials
-- ----------------------------
DROP TABLE IF EXISTS `potentials`;
CREATE TABLE `potentials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='潜能';

-- ----------------------------
-- Records of potentials
-- ----------------------------
INSERT INTO `potentials` VALUES ('1', '思维研究类', '1', '战略规划能力+逻辑性+领悟能力+总结能力', '0', '0', '0');
INSERT INTO `potentials` VALUES ('2', '动手执行类', '1', '执行力+细节处理能力+坚韧性+责任心', '0', '0', '0');
INSERT INTO `potentials` VALUES ('3', '意志坚定类', '1', '自信心+自控能力+原则性+决策能力+抗压能力+坚韧性', '0', '0', '0');
INSERT INTO `potentials` VALUES ('4', '社交人脉类', '1', '服务意识+影响说服能力+人际关系维系+团队合作', '0', '0', '0');
INSERT INTO `potentials` VALUES ('5', '管理领导类', '1', '辅导培养能力+团队领导能力+大局观+战略规划能力+组织协调能力', '0', '0', '0');
INSERT INTO `potentials` VALUES ('6', '表现展示类', '1', '沟通能力+影响说服能力+灵活应变能力+开拓能力+好胜性+自信心', '0', '0', '0');
INSERT INTO `potentials` VALUES ('7', '创意创造类', '1', '创新能力+开拓能力+领悟能力+灵活应变能力+好胜性+总结能力', '0', '0', '0');
INSERT INTO `potentials` VALUES ('8', '结果达成类', '1', '结果导向+抗压能力+坚韧性+好胜性+开拓能力+原则性', '0', '0', '0');
INSERT INTO `potentials` VALUES ('9', '社会意识类', '1', '责任心+大局观+团队合作+服务意识+自控能力', '0', '0', '0');

-- ----------------------------
-- Table structure for qualities
-- ----------------------------
DROP TABLE IF EXISTS `qualities`;
CREATE TABLE `qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min` decimal(3,1) NOT NULL DEFAULT '0.0' COMMENT '最低分',
  `max` decimal(3,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='素质';

-- ----------------------------
-- Records of qualities
-- ----------------------------
INSERT INTO `qualities` VALUES ('1', '团队领导能力', '1', '0', '-24.4', '28.4');
INSERT INTO `qualities` VALUES ('2', '战略规划能力', '1', '0', '-17.9', '23.3');
INSERT INTO `qualities` VALUES ('3', '结果导向', '1', '0', '-18.3', '22.1');
INSERT INTO `qualities` VALUES ('4', '决策能力', '1', '0', '-22.3', '25.7');
INSERT INTO `qualities` VALUES ('5', '辅导培养能力', '1', '0', '-20.8', '26.0');
INSERT INTO `qualities` VALUES ('6', '影响说服能力', '1', '0', '-19.4', '25.4');
INSERT INTO `qualities` VALUES ('7', '组织协调能力', '1', '0', '-20.4', '24.8');
INSERT INTO `qualities` VALUES ('8', '服务意识', '1', '0', '-23.2', '27.6');
INSERT INTO `qualities` VALUES ('9', '创新能力', '1', '0', '-17.4', '20.2');
INSERT INTO `qualities` VALUES ('10', '逻辑性', '1', '0', '-12.8', '16.0');
INSERT INTO `qualities` VALUES ('11', '总结能力', '1', '0', '-22.2', '24.0');
INSERT INTO `qualities` VALUES ('12', '执行力', '1', '0', '-21.3', '26.7');
INSERT INTO `qualities` VALUES ('13', '领悟能力', '1', '0', '-19.2', '26.0');
INSERT INTO `qualities` VALUES ('14', '上进心', '1', '0', '-21.7', '27.5');
INSERT INTO `qualities` VALUES ('15', '沟通能力', '1', '0', '-19.2', '26.0');
INSERT INTO `qualities` VALUES ('16', '细节处理能力', '1', '0', '-19.9', '21.7');
INSERT INTO `qualities` VALUES ('17', '抗压能力', '1', '0', '-23.8', '27.8');
INSERT INTO `qualities` VALUES ('18', '坚韧性', '1', '0', '-28.9', '34.5');
INSERT INTO `qualities` VALUES ('19', '灵活应变能力', '1', '0', '-30.3', '33.3');
INSERT INTO `qualities` VALUES ('20', '人际关系维系', '1', '0', '-29.6', '36.0');
INSERT INTO `qualities` VALUES ('21', '自控能力', '1', '0', '-29.2', '32.0');
INSERT INTO `qualities` VALUES ('22', '自信心', '1', '0', '-16.4', '20.8');
INSERT INTO `qualities` VALUES ('23', '诚信正直', '1', '0', '-20.3', '26.3');
INSERT INTO `qualities` VALUES ('24', '大局观', '1', '0', '-17.9', '23.3');
INSERT INTO `qualities` VALUES ('25', '团队合作', '1', '0', '-24.3', '30.3');
INSERT INTO `qualities` VALUES ('26', '责任心', '1', '0', '-21.9', '27.3');
INSERT INTO `qualities` VALUES ('27', '好胜性', '1', '0', '-21.0', '25.4');
INSERT INTO `qualities` VALUES ('28', '原则性', '1', '0', '-27.2', '32.6');
INSERT INTO `qualities` VALUES ('29', '开拓能力', '1', '0', '-25.3', '34.5');

-- ----------------------------
-- Table structure for quality_has_ability
-- ----------------------------
DROP TABLE IF EXISTS `quality_has_ability`;
CREATE TABLE `quality_has_ability` (
  `quality_id` int(10) unsigned NOT NULL,
  `ability_id` int(10) unsigned NOT NULL,
  `type_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`quality_id`,`ability_id`),
  KEY `ability_id` (`ability_id`),
  KEY `quality_id` (`quality_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='素质模型与才干关系';

-- ----------------------------
-- Records of quality_has_ability
-- ----------------------------
INSERT INTO `quality_has_ability` VALUES ('1', '34', '1');
INSERT INTO `quality_has_ability` VALUES ('1', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('2', '24', '1');
INSERT INTO `quality_has_ability` VALUES ('2', '3', '1');
INSERT INTO `quality_has_ability` VALUES ('3', '21', '1');
INSERT INTO `quality_has_ability` VALUES ('3', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('4', '27', '1');
INSERT INTO `quality_has_ability` VALUES ('4', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('5', '15', '1');
INSERT INTO `quality_has_ability` VALUES ('5', '12', '1');
INSERT INTO `quality_has_ability` VALUES ('6', '25', '1');
INSERT INTO `quality_has_ability` VALUES ('6', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('7', '34', '1');
INSERT INTO `quality_has_ability` VALUES ('7', '12', '1');
INSERT INTO `quality_has_ability` VALUES ('8', '18', '1');
INSERT INTO `quality_has_ability` VALUES ('8', '17', '1');
INSERT INTO `quality_has_ability` VALUES ('8', '11', '1');
INSERT INTO `quality_has_ability` VALUES ('9', '16', '1');
INSERT INTO `quality_has_ability` VALUES ('10', '2', '1');
INSERT INTO `quality_has_ability` VALUES ('11', '4', '1');
INSERT INTO `quality_has_ability` VALUES ('11', '16', '1');
INSERT INTO `quality_has_ability` VALUES ('11', '30', '1');
INSERT INTO `quality_has_ability` VALUES ('12', '7', '1');
INSERT INTO `quality_has_ability` VALUES ('12', '21', '1');
INSERT INTO `quality_has_ability` VALUES ('12', '20', '1');
INSERT INTO `quality_has_ability` VALUES ('13', '8', '1');
INSERT INTO `quality_has_ability` VALUES ('13', '16', '1');
INSERT INTO `quality_has_ability` VALUES ('14', '5', '1');
INSERT INTO `quality_has_ability` VALUES ('14', '9', '1');
INSERT INTO `quality_has_ability` VALUES ('15', '25', '1');
INSERT INTO `quality_has_ability` VALUES ('15', '1', '1');
INSERT INTO `quality_has_ability` VALUES ('16', '9', '1');
INSERT INTO `quality_has_ability` VALUES ('17', '32', '1');
INSERT INTO `quality_has_ability` VALUES ('17', '27', '1');
INSERT INTO `quality_has_ability` VALUES ('18', '21', '1');
INSERT INTO `quality_has_ability` VALUES ('18', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('18', '27', '1');
INSERT INTO `quality_has_ability` VALUES ('19', '34', '1');
INSERT INTO `quality_has_ability` VALUES ('19', '20', '1');
INSERT INTO `quality_has_ability` VALUES ('19', '32', '1');
INSERT INTO `quality_has_ability` VALUES ('20', '12', '1');
INSERT INTO `quality_has_ability` VALUES ('20', '11', '1');
INSERT INTO `quality_has_ability` VALUES ('20', '18', '1');
INSERT INTO `quality_has_ability` VALUES ('21', '31', '1');
INSERT INTO `quality_has_ability` VALUES ('21', '27', '1');
INSERT INTO `quality_has_ability` VALUES ('22', '27', '1');
INSERT INTO `quality_has_ability` VALUES ('23', '28', '1');
INSERT INTO `quality_has_ability` VALUES ('23', '26', '1');
INSERT INTO `quality_has_ability` VALUES ('24', '13', '1');
INSERT INTO `quality_has_ability` VALUES ('24', '28', '1');
INSERT INTO `quality_has_ability` VALUES ('25', '15', '1');
INSERT INTO `quality_has_ability` VALUES ('25', '13', '1');
INSERT INTO `quality_has_ability` VALUES ('25', '11', '1');
INSERT INTO `quality_has_ability` VALUES ('26', '28', '1');
INSERT INTO `quality_has_ability` VALUES ('26', '9', '1');
INSERT INTO `quality_has_ability` VALUES ('26', '23', '1');
INSERT INTO `quality_has_ability` VALUES ('27', '6', '1');
INSERT INTO `quality_has_ability` VALUES ('27', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('28', '31', '1');
INSERT INTO `quality_has_ability` VALUES ('28', '2', '1');
INSERT INTO `quality_has_ability` VALUES ('29', '20', '1');
INSERT INTO `quality_has_ability` VALUES ('29', '19', '1');
INSERT INTO `quality_has_ability` VALUES ('29', '1', '1');
INSERT INTO `quality_has_ability` VALUES ('1', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('1', '13', '2');
INSERT INTO `quality_has_ability` VALUES ('1', '15', '2');
INSERT INTO `quality_has_ability` VALUES ('1', '12', '2');
INSERT INTO `quality_has_ability` VALUES ('1', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('1', '11', '3');
INSERT INTO `quality_has_ability` VALUES ('1', '31', '3');
INSERT INTO `quality_has_ability` VALUES ('1', '28', '3');
INSERT INTO `quality_has_ability` VALUES ('1', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('1', '21', '4');
INSERT INTO `quality_has_ability` VALUES ('1', '5', '4');
INSERT INTO `quality_has_ability` VALUES ('1', '2', '4');
INSERT INTO `quality_has_ability` VALUES ('2', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('2', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('2', '30', '2');
INSERT INTO `quality_has_ability` VALUES ('2', '16', '3');
INSERT INTO `quality_has_ability` VALUES ('2', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('2', '34', '3');
INSERT INTO `quality_has_ability` VALUES ('2', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('2', '20', '4');
INSERT INTO `quality_has_ability` VALUES ('2', '32', '4');
INSERT INTO `quality_has_ability` VALUES ('3', '20', '2');
INSERT INTO `quality_has_ability` VALUES ('3', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('3', '5', '3');
INSERT INTO `quality_has_ability` VALUES ('3', '10', '3');
INSERT INTO `quality_has_ability` VALUES ('3', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('3', '11', '4');
INSERT INTO `quality_has_ability` VALUES ('3', '3', '4');
INSERT INTO `quality_has_ability` VALUES ('3', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('4', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('4', '20', '2');
INSERT INTO `quality_has_ability` VALUES ('4', '24', '2');
INSERT INTO `quality_has_ability` VALUES ('4', '3', '3');
INSERT INTO `quality_has_ability` VALUES ('4', '16', '3');
INSERT INTO `quality_has_ability` VALUES ('4', '26', '3');
INSERT INTO `quality_has_ability` VALUES ('4', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('4', '11', '4');
INSERT INTO `quality_has_ability` VALUES ('4', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('4', '18', '4');
INSERT INTO `quality_has_ability` VALUES ('5', '28', '2');
INSERT INTO `quality_has_ability` VALUES ('5', '10', '2');
INSERT INTO `quality_has_ability` VALUES ('5', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('5', '8', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '16', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '4', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '13', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '14', '3');
INSERT INTO `quality_has_ability` VALUES ('5', '20', '4');
INSERT INTO `quality_has_ability` VALUES ('5', '19', '4');
INSERT INTO `quality_has_ability` VALUES ('5', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('6', '12', '2');
INSERT INTO `quality_has_ability` VALUES ('6', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('6', '27', '2');
INSERT INTO `quality_has_ability` VALUES ('6', '16', '2');
INSERT INTO `quality_has_ability` VALUES ('6', '6', '3');
INSERT INTO `quality_has_ability` VALUES ('6', '5', '3');
INSERT INTO `quality_has_ability` VALUES ('6', '20', '3');
INSERT INTO `quality_has_ability` VALUES ('6', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('6', '11', '4');
INSERT INTO `quality_has_ability` VALUES ('6', '13', '4');
INSERT INTO `quality_has_ability` VALUES ('7', '19', '2');
INSERT INTO `quality_has_ability` VALUES ('7', '27', '2');
INSERT INTO `quality_has_ability` VALUES ('7', '20', '2');
INSERT INTO `quality_has_ability` VALUES ('7', '32', '3');
INSERT INTO `quality_has_ability` VALUES ('7', '24', '3');
INSERT INTO `quality_has_ability` VALUES ('7', '13', '3');
INSERT INTO `quality_has_ability` VALUES ('7', '11', '3');
INSERT INTO `quality_has_ability` VALUES ('7', '21', '4');
INSERT INTO `quality_has_ability` VALUES ('7', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('7', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('8', '10', '2');
INSERT INTO `quality_has_ability` VALUES ('8', '14', '2');
INSERT INTO `quality_has_ability` VALUES ('8', '15', '3');
INSERT INTO `quality_has_ability` VALUES ('8', '29', '3');
INSERT INTO `quality_has_ability` VALUES ('8', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('8', '19', '4');
INSERT INTO `quality_has_ability` VALUES ('8', '27', '4');
INSERT INTO `quality_has_ability` VALUES ('8', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('9', '3', '2');
INSERT INTO `quality_has_ability` VALUES ('9', '10', '2');
INSERT INTO `quality_has_ability` VALUES ('9', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('9', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('9', '32', '3');
INSERT INTO `quality_has_ability` VALUES ('9', '24', '3');
INSERT INTO `quality_has_ability` VALUES ('9', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('9', '4', '4');
INSERT INTO `quality_has_ability` VALUES ('9', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('9', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('10', '21', '2');
INSERT INTO `quality_has_ability` VALUES ('10', '31', '2');
INSERT INTO `quality_has_ability` VALUES ('10', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('10', '27', '3');
INSERT INTO `quality_has_ability` VALUES ('10', '8', '3');
INSERT INTO `quality_has_ability` VALUES ('10', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('10', '32', '4');
INSERT INTO `quality_has_ability` VALUES ('11', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('11', '20', '2');
INSERT INTO `quality_has_ability` VALUES ('11', '8', '2');
INSERT INTO `quality_has_ability` VALUES ('11', '34', '3');
INSERT INTO `quality_has_ability` VALUES ('11', '33', '3');
INSERT INTO `quality_has_ability` VALUES ('11', '3', '4');
INSERT INTO `quality_has_ability` VALUES ('11', '17', '4');
INSERT INTO `quality_has_ability` VALUES ('11', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('12', '28', '2');
INSERT INTO `quality_has_ability` VALUES ('12', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('12', '27', '3');
INSERT INTO `quality_has_ability` VALUES ('12', '34', '3');
INSERT INTO `quality_has_ability` VALUES ('12', '31', '3');
INSERT INTO `quality_has_ability` VALUES ('12', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('12', '3', '4');
INSERT INTO `quality_has_ability` VALUES ('12', '5', '4');
INSERT INTO `quality_has_ability` VALUES ('13', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('13', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('13', '12', '2');
INSERT INTO `quality_has_ability` VALUES ('13', '20', '2');
INSERT INTO `quality_has_ability` VALUES ('13', '5', '3');
INSERT INTO `quality_has_ability` VALUES ('13', '21', '3');
INSERT INTO `quality_has_ability` VALUES ('13', '1', '3');
INSERT INTO `quality_has_ability` VALUES ('13', '10', '3');
INSERT INTO `quality_has_ability` VALUES ('13', '32', '3');
INSERT INTO `quality_has_ability` VALUES ('13', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('13', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('14', '7', '2');
INSERT INTO `quality_has_ability` VALUES ('14', '6', '2');
INSERT INTO `quality_has_ability` VALUES ('14', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('14', '8', '2');
INSERT INTO `quality_has_ability` VALUES ('14', '27', '3');
INSERT INTO `quality_has_ability` VALUES ('14', '1', '3');
INSERT INTO `quality_has_ability` VALUES ('14', '15', '3');
INSERT INTO `quality_has_ability` VALUES ('14', '3', '3');
INSERT INTO `quality_has_ability` VALUES ('14', '28', '3');
INSERT INTO `quality_has_ability` VALUES ('14', '14', '4');
INSERT INTO `quality_has_ability` VALUES ('14', '32', '4');
INSERT INTO `quality_has_ability` VALUES ('14', '18', '4');
INSERT INTO `quality_has_ability` VALUES ('15', '16', '2');
INSERT INTO `quality_has_ability` VALUES ('15', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('15', '12', '2');
INSERT INTO `quality_has_ability` VALUES ('15', '27', '2');
INSERT INTO `quality_has_ability` VALUES ('15', '10', '3');
INSERT INTO `quality_has_ability` VALUES ('15', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('15', '32', '3');
INSERT INTO `quality_has_ability` VALUES ('15', '3', '3');
INSERT INTO `quality_has_ability` VALUES ('15', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('15', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('15', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('16', '33', '2');
INSERT INTO `quality_has_ability` VALUES ('16', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('16', '31', '2');
INSERT INTO `quality_has_ability` VALUES ('16', '2', '3');
INSERT INTO `quality_has_ability` VALUES ('16', '28', '3');
INSERT INTO `quality_has_ability` VALUES ('16', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('16', '4', '3');
INSERT INTO `quality_has_ability` VALUES ('16', '20', '4');
INSERT INTO `quality_has_ability` VALUES ('16', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('16', '3', '4');
INSERT INTO `quality_has_ability` VALUES ('16', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('17', '19', '2');
INSERT INTO `quality_has_ability` VALUES ('17', '11', '2');
INSERT INTO `quality_has_ability` VALUES ('17', '21', '2');
INSERT INTO `quality_has_ability` VALUES ('17', '26', '2');
INSERT INTO `quality_has_ability` VALUES ('17', '20', '3');
INSERT INTO `quality_has_ability` VALUES ('17', '3', '3');
INSERT INTO `quality_has_ability` VALUES ('17', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('17', '28', '4');
INSERT INTO `quality_has_ability` VALUES ('17', '5', '4');
INSERT INTO `quality_has_ability` VALUES ('17', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('17', '18', '4');
INSERT INTO `quality_has_ability` VALUES ('18', '2', '2');
INSERT INTO `quality_has_ability` VALUES ('18', '7', '2');
INSERT INTO `quality_has_ability` VALUES ('18', '31', '2');
INSERT INTO `quality_has_ability` VALUES ('18', '32', '2');
INSERT INTO `quality_has_ability` VALUES ('18', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('18', '14', '3');
INSERT INTO `quality_has_ability` VALUES ('18', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('18', '11', '3');
INSERT INTO `quality_has_ability` VALUES ('18', '5', '3');
INSERT INTO `quality_has_ability` VALUES ('18', '10', '4');
INSERT INTO `quality_has_ability` VALUES ('18', '20', '4');
INSERT INTO `quality_has_ability` VALUES ('18', '1', '4');
INSERT INTO `quality_has_ability` VALUES ('18', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('18', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '10', '2');
INSERT INTO `quality_has_ability` VALUES ('19', '12', '2');
INSERT INTO `quality_has_ability` VALUES ('19', '16', '2');
INSERT INTO `quality_has_ability` VALUES ('19', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('19', '1', '3');
INSERT INTO `quality_has_ability` VALUES ('19', '25', '3');
INSERT INTO `quality_has_ability` VALUES ('19', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '22', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '21', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '2', '4');
INSERT INTO `quality_has_ability` VALUES ('19', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('20', '29', '2');
INSERT INTO `quality_has_ability` VALUES ('20', '13', '2');
INSERT INTO `quality_has_ability` VALUES ('20', '14', '2');
INSERT INTO `quality_has_ability` VALUES ('20', '17', '2');
INSERT INTO `quality_has_ability` VALUES ('20', '26', '2');
INSERT INTO `quality_has_ability` VALUES ('20', '32', '3');
INSERT INTO `quality_has_ability` VALUES ('20', '21', '3');
INSERT INTO `quality_has_ability` VALUES ('20', '28', '3');
INSERT INTO `quality_has_ability` VALUES ('20', '15', '3');
INSERT INTO `quality_has_ability` VALUES ('20', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('20', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('20', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('20', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('20', '2', '4');
INSERT INTO `quality_has_ability` VALUES ('20', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '33', '2');
INSERT INTO `quality_has_ability` VALUES ('21', '21', '2');
INSERT INTO `quality_has_ability` VALUES ('21', '28', '2');
INSERT INTO `quality_has_ability` VALUES ('21', '11', '2');
INSERT INTO `quality_has_ability` VALUES ('21', '14', '3');
INSERT INTO `quality_has_ability` VALUES ('21', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('21', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('21', '2', '3');
INSERT INTO `quality_has_ability` VALUES ('21', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('21', '20', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '1', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '18', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('21', '19', '4');
INSERT INTO `quality_has_ability` VALUES ('22', '19', '2');
INSERT INTO `quality_has_ability` VALUES ('22', '16', '2');
INSERT INTO `quality_has_ability` VALUES ('22', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('22', '5', '2');
INSERT INTO `quality_has_ability` VALUES ('22', '3', '3');
INSERT INTO `quality_has_ability` VALUES ('22', '6', '3');
INSERT INTO `quality_has_ability` VALUES ('22', '20', '3');
INSERT INTO `quality_has_ability` VALUES ('22', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('22', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('22', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('23', '10', '2');
INSERT INTO `quality_has_ability` VALUES ('23', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('23', '14', '2');
INSERT INTO `quality_has_ability` VALUES ('23', '17', '2');
INSERT INTO `quality_has_ability` VALUES ('23', '15', '2');
INSERT INTO `quality_has_ability` VALUES ('23', '29', '3');
INSERT INTO `quality_has_ability` VALUES ('23', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('23', '23', '3');
INSERT INTO `quality_has_ability` VALUES ('23', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('23', '1', '4');
INSERT INTO `quality_has_ability` VALUES ('24', '34', '2');
INSERT INTO `quality_has_ability` VALUES ('24', '17', '2');
INSERT INTO `quality_has_ability` VALUES ('24', '23', '2');
INSERT INTO `quality_has_ability` VALUES ('24', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('24', '24', '3');
INSERT INTO `quality_has_ability` VALUES ('24', '14', '3');
INSERT INTO `quality_has_ability` VALUES ('24', '22', '3');
INSERT INTO `quality_has_ability` VALUES ('24', '21', '4');
INSERT INTO `quality_has_ability` VALUES ('24', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('25', '17', '2');
INSERT INTO `quality_has_ability` VALUES ('25', '14', '2');
INSERT INTO `quality_has_ability` VALUES ('25', '22', '2');
INSERT INTO `quality_has_ability` VALUES ('25', '29', '2');
INSERT INTO `quality_has_ability` VALUES ('25', '9', '3');
INSERT INTO `quality_has_ability` VALUES ('25', '18', '3');
INSERT INTO `quality_has_ability` VALUES ('25', '20', '3');
INSERT INTO `quality_has_ability` VALUES ('25', '6', '4');
INSERT INTO `quality_has_ability` VALUES ('25', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('25', '23', '4');
INSERT INTO `quality_has_ability` VALUES ('26', '15', '2');
INSERT INTO `quality_has_ability` VALUES ('26', '17', '2');
INSERT INTO `quality_has_ability` VALUES ('26', '31', '3');
INSERT INTO `quality_has_ability` VALUES ('26', '29', '3');
INSERT INTO `quality_has_ability` VALUES ('26', '13', '3');
INSERT INTO `quality_has_ability` VALUES ('26', '14', '3');
INSERT INTO `quality_has_ability` VALUES ('26', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('26', '1', '4');
INSERT INTO `quality_has_ability` VALUES ('26', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('27', '5', '2');
INSERT INTO `quality_has_ability` VALUES ('27', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('27', '27', '2');
INSERT INTO `quality_has_ability` VALUES ('27', '25', '3');
INSERT INTO `quality_has_ability` VALUES ('27', '1', '3');
INSERT INTO `quality_has_ability` VALUES ('27', '16', '3');
INSERT INTO `quality_has_ability` VALUES ('27', '21', '3');
INSERT INTO `quality_has_ability` VALUES ('27', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('27', '32', '4');
INSERT INTO `quality_has_ability` VALUES ('27', '11', '4');
INSERT INTO `quality_has_ability` VALUES ('27', '18', '4');
INSERT INTO `quality_has_ability` VALUES ('28', '22', '2');
INSERT INTO `quality_has_ability` VALUES ('28', '14', '2');
INSERT INTO `quality_has_ability` VALUES ('28', '19', '2');
INSERT INTO `quality_has_ability` VALUES ('28', '9', '2');
INSERT INTO `quality_has_ability` VALUES ('28', '29', '2');
INSERT INTO `quality_has_ability` VALUES ('28', '21', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '33', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '28', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '27', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '5', '3');
INSERT INTO `quality_has_ability` VALUES ('28', '26', '4');
INSERT INTO `quality_has_ability` VALUES ('28', '13', '4');
INSERT INTO `quality_has_ability` VALUES ('28', '11', '4');
INSERT INTO `quality_has_ability` VALUES ('28', '16', '4');
INSERT INTO `quality_has_ability` VALUES ('28', '1', '4');
INSERT INTO `quality_has_ability` VALUES ('29', '27', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '6', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '3', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '21', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '16', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '25', '2');
INSERT INTO `quality_has_ability` VALUES ('29', '12', '3');
INSERT INTO `quality_has_ability` VALUES ('29', '30', '3');
INSERT INTO `quality_has_ability` VALUES ('29', '13', '3');
INSERT INTO `quality_has_ability` VALUES ('29', '7', '3');
INSERT INTO `quality_has_ability` VALUES ('29', '17', '3');
INSERT INTO `quality_has_ability` VALUES ('29', '33', '4');
INSERT INTO `quality_has_ability` VALUES ('29', '31', '4');
INSERT INTO `quality_has_ability` VALUES ('29', '23', '4');

-- ----------------------------
-- Table structure for quality_has_personality
-- ----------------------------
DROP TABLE IF EXISTS `quality_has_personality`;
CREATE TABLE `quality_has_personality` (
  `quality_id` int(10) unsigned NOT NULL,
  `personality_id` int(10) unsigned NOT NULL,
  `ratio` decimal(3,2) unsigned NOT NULL COMMENT '系数',
  `type_name` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`quality_id`,`personality_id`,`ratio`),
  KEY `personality_id` (`personality_id`),
  KEY `quality_id` (`quality_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='素质模型与风格关系';

-- ----------------------------
-- Records of quality_has_personality
-- ----------------------------
INSERT INTO `quality_has_personality` VALUES ('1', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('1', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('1', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('1', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('1', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('2', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('2', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('2', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('2', '3', '0.90', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('2', '7', '0.90', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('2', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('3', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('3', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('3', '4', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('3', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('3', '6', '0.90', 'NF');
INSERT INTO `quality_has_personality` VALUES ('3', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('4', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('4', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('4', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('4', '3', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('4', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('5', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('5', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('5', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('5', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('5', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('5', '5', '0.80', 'NT');
INSERT INTO `quality_has_personality` VALUES ('6', '3', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('6', '8', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('6', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('6', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('6', '7', '0.90', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('6', '5', '0.80', 'NT');
INSERT INTO `quality_has_personality` VALUES ('7', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('7', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('7', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('7', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('7', '5', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('8', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('8', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('8', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('8', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('8', '5', '0.80', 'NT');
INSERT INTO `quality_has_personality` VALUES ('9', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('9', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('9', '3', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('9', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('9', '7', '0.80', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('10', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('10', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('10', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('10', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('10', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('11', '4', '1.20', 'N');
INSERT INTO `quality_has_personality` VALUES ('11', '3', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('11', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('12', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('12', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('12', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('12', '4', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('12', '5', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('13', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('13', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('13', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('14', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('14', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('14', '4', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('14', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('14', '6', '0.90', 'NF');
INSERT INTO `quality_has_personality` VALUES ('15', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('15', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('15', '3', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('15', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('15', '5', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('16', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('16', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('16', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('16', '4', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('16', '5', '0.90', 'NT');
INSERT INTO `quality_has_personality` VALUES ('16', '6', '0.80', 'NF');
INSERT INTO `quality_has_personality` VALUES ('17', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('17', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('17', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('17', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('18', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('18', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('18', '4', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('18', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('18', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('18', '6', '0.80', 'NF');
INSERT INTO `quality_has_personality` VALUES ('19', '3', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('19', '8', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('19', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('19', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('19', '7', '0.90', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('20', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('20', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('20', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('20', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('20', '5', '0.80', 'NT');
INSERT INTO `quality_has_personality` VALUES ('21', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('21', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('21', '4', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('21', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('21', '6', '0.90', 'NF');
INSERT INTO `quality_has_personality` VALUES ('21', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('22', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('22', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('22', '3', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('22', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('23', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('23', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('23', '4', '1.10', 'NJ');
INSERT INTO `quality_has_personality` VALUES ('23', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('24', '4', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('24', '6', '1.20', 'NF');
INSERT INTO `quality_has_personality` VALUES ('24', '3', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('24', '7', '1.10', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('24', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('25', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('25', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('25', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('25', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('25', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('25', '5', '0.80', 'NT');
INSERT INTO `quality_has_personality` VALUES ('26', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('26', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('26', '8', '0.90', 'SP');
INSERT INTO `quality_has_personality` VALUES ('27', '4', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('27', '5', '1.20', 'NT');
INSERT INTO `quality_has_personality` VALUES ('27', '3', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('27', '8', '1.10', 'SP');
INSERT INTO `quality_has_personality` VALUES ('28', '3', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('28', '7', '1.20', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('28', '4', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('28', '5', '1.10', 'NT');
INSERT INTO `quality_has_personality` VALUES ('28', '6', '0.90', 'NF');
INSERT INTO `quality_has_personality` VALUES ('28', '8', '0.80', 'SP');
INSERT INTO `quality_has_personality` VALUES ('29', '3', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('29', '8', '1.20', 'SP');
INSERT INTO `quality_has_personality` VALUES ('29', '4', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('29', '6', '1.10', 'NF');
INSERT INTO `quality_has_personality` VALUES ('29', '7', '0.90', 'SJ');
INSERT INTO `quality_has_personality` VALUES ('29', '5', '0.80', 'NT');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
INSERT INTO `questions` VALUES ('1', '1', '', '1.和一群人在一起的时候，我总想不出恰当的话来说。', '1', '0', '1');
INSERT INTO `questions` VALUES ('2', '1', '', '2.与言情小说相比，我更喜欢推理小说。', '1', '0', '1');
INSERT INTO `questions` VALUES ('3', '1', '', '3.同学们公认我是一名踏实的、愿为大家服务的人。', '1', '0', '1');
INSERT INTO `questions` VALUES ('4', '1', '', '4.我很容易结识同性别朋友。', '1', '0', '1');
INSERT INTO `questions` VALUES ('5', '1', '', '5.我喜欢按照自己的学习计划去学习。', '1', '0', '1');
INSERT INTO `questions` VALUES ('6', '1', '', '6.我通常比较有耐心。', '1', '0', '1');
INSERT INTO `questions` VALUES ('7', '1', '', '7.我喜欢使用榔头、锤子一类的工具。', '1', '0', '1');
INSERT INTO `questions` VALUES ('8', '1', '', '8.我喜欢亲自动手制作一些东西，从中得到乐趣。', '1', '0', '1');
INSERT INTO `questions` VALUES ('9', '1', '', '9.我总留有充裕的时间去上学。', '1', '0', '1');
INSERT INTO `questions` VALUES ('10', '1', '', '10.和不熟悉的人交谈对我来说很困难。', '1', '0', '1');
INSERT INTO `questions` VALUES ('11', '1', '', '11.我讨厌跟各类机械打交道。', '1', '0', '1');
INSERT INTO `questions` VALUES ('12', '1', '', '12.我小时候经常把玩具拆开，把里面看个究竟。', '1', '0', '1');
INSERT INTO `questions` VALUES ('13', '1', '', '13.我喜欢看一些时政和财经类的新闻', '1', '0', '1');
INSERT INTO `questions` VALUES ('14', '1', '', '14.我总是能够说服别人同意我的观点', '1', '0', '1');
INSERT INTO `questions` VALUES ('15', '1', '', '15.当我开始做一件事情后，即使碰到再多的困难，我也要执著地干下去', '1', '0', '1');
INSERT INTO `questions` VALUES ('16', '1', '', '16.我不喜欢和数字打交道。', '1', '0', '1');
INSERT INTO `questions` VALUES ('17', '1', '', '17.我讨厌学数学。', '1', '0', '1');
INSERT INTO `questions` VALUES ('18', '1', '', '18.音乐能使我陶醉。', '1', '0', '1');
INSERT INTO `questions` VALUES ('19', '1', '', '19.我喜欢组织大家搞活动', '1', '0', '1');
INSERT INTO `questions` VALUES ('20', '1', '', '20.我办事很少思前想后。', '1', '0', '1');
INSERT INTO `questions` VALUES ('21', '1', '', '21.我喜欢抽象思维的工作，不喜欢动手的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('22', '1', '', '22.我有文艺方面的天赋。', '1', '0', '1');
INSERT INTO `questions` VALUES ('23', '1', '', '23.我喜欢需要运用智力的游戏。', '1', '0', '1');
INSERT INTO `questions` VALUES ('24', '1', '', '24.我曾渴望成为一名飞行员。', '1', '0', '1');
INSERT INTO `questions` VALUES ('25', '1', '', '25.遇到难解答的题目时，我常常放弃。', '1', '0', '1');
INSERT INTO `questions` VALUES ('26', '1', '', '26.我喜欢以自己的独特方法做事，不喜欢受到约束。', '1', '0', '1');
INSERT INTO `questions` VALUES ('27', '1', '', '27.对别人借我的和我借别人的东西，我都能记得很清楚。', '1', '0', '1');
INSERT INTO `questions` VALUES ('28', '1', '', '28.我总是主动地向别人提出自己的建议', '1', '0', '1');
INSERT INTO `questions` VALUES ('29', '1', '', '29.我的理想是当一名科学家。', '1', '0', '1');
INSERT INTO `questions` VALUES ('30', '1', '', '30.我喜欢给同学辅功课导。', '1', '0', '1');
INSERT INTO `questions` VALUES ('31', '1', '', '31.我经常不停地思考某一问题，直到想出正确的答案。', '1', '0', '1');
INSERT INTO `questions` VALUES ('32', '1', '', '32.我乐于解除别人的痛苦。', '1', '0', '1');
INSERT INTO `questions` VALUES ('33', '1', '', '33.我的事情很少请示我的父母。', '1', '0', '1');
INSERT INTO `questions` VALUES ('34', '1', '', '34.我喜欢参加各种各样的聚会。', '1', '0', '1');
INSERT INTO `questions` VALUES ('35', '1', '', '35.对于社会问题，我通常持中庸的态度。', '1', '0', '1');
INSERT INTO `questions` VALUES ('36', '1', '', '36.我喜欢在做事情前，对此事情做出细致的安排。', '1', '0', '1');
INSERT INTO `questions` VALUES ('37', '1', '', '37.有些人太霸道，有时明明知道他们是对的，也要和他们对着干。', '1', '0', '1');
INSERT INTO `questions` VALUES ('38', '1', '', '38.我是个理想主义者。', '1', '0', '1');
INSERT INTO `questions` VALUES ('39', '1', '', '39.在集体讨论中，我往往保持沉默。', '1', '0', '1');
INSERT INTO `questions` VALUES ('40', '1', '', '40.我喜欢把一件事情做完后再做另一件事。', '1', '0', '1');
INSERT INTO `questions` VALUES ('41', '1', '', '41.我喜欢成为人们注意的焦点。', '1', '0', '1');
INSERT INTO `questions` VALUES ('42', '1', '', '42.我喜欢阅读自然科学方面的书籍和杂志。', '1', '0', '1');
INSERT INTO `questions` VALUES ('43', '1', '', '43.我很难做那种需要持续集中注意力的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('44', '1', '', '44.在实验室里独自做实验会令我寂寞难耐。', '1', '0', '1');
INSERT INTO `questions` VALUES ('45', '1', '', '45.我希望未来能掌握一门手艺并能以此为生。', '1', '0', '1');
INSERT INTO `questions` VALUES ('46', '1', '', '46.我的动手能力很差。', '1', '0', '1');
INSERT INTO `questions` VALUES ('47', '1', '', '47.我讨厌修理自行车、电器一类的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('48', '1', '', '48.我曾经渴望有机会参加探险', '1', '0', '1');
INSERT INTO `questions` VALUES ('49', '1', '', '49.当我学习时，我喜欢避免干扰。', '1', '0', '1');
INSERT INTO `questions` VALUES ('50', '1', '', '50.对于急躁、爱发脾气的人，我仍能以礼相待。', '1', '0', '1');
INSERT INTO `questions` VALUES ('51', '1', '', '51.我喜欢养些花花草草', '1', '0', '1');
INSERT INTO `questions` VALUES ('52', '1', '', '52.我喜欢不时地夸耀一下自己取得的好成就。', '1', '0', '1');
INSERT INTO `questions` VALUES ('53', '1', '', '53.我是一个沉静而不易动感情的人', '1', '0', '1');
INSERT INTO `questions` VALUES ('54', '1', '', '54.和别人谈判时，我总是很容易放弃自己的观点', '1', '0', '1');
INSERT INTO `questions` VALUES ('55', '1', '', '55.我喜欢把一切安排得整整齐齐、井井有条。', '1', '0', '1');
INSERT INTO `questions` VALUES ('56', '1', '', '56.我希望未来能够从事戏剧、音乐、歌舞、新闻采访等方面的工作。', '1', '0', '1');
INSERT INTO `questions` VALUES ('57', '1', '', '57.当我一个独处时，会感到更愉快。', '1', '0', '1');
INSERT INTO `questions` VALUES ('58', '1', '', '58.看情感影片时，我常禁不住眼圈红润。', '1', '0', '1');
INSERT INTO `questions` VALUES ('59', '1', '', '59.听别人谈“家中被盗”一类的事，很难引起我的同情', '1', '0', '1');
INSERT INTO `questions` VALUES ('60', '1', '', '60.我不在乎别人是否认同我', '1', '0', '1');
INSERT INTO `questions` VALUES ('61', '1', '', '1、', '2', '0', '1');
INSERT INTO `questions` VALUES ('62', '1', '', '2、', '2', '0', '1');
INSERT INTO `questions` VALUES ('63', '1', '', '3、', '2', '0', '1');
INSERT INTO `questions` VALUES ('64', '1', '', '4、', '2', '0', '1');
INSERT INTO `questions` VALUES ('65', '1', '', '5、', '2', '0', '1');
INSERT INTO `questions` VALUES ('66', '1', '', '6、', '2', '0', '1');
INSERT INTO `questions` VALUES ('67', '1', '', '7、', '2', '0', '1');
INSERT INTO `questions` VALUES ('68', '1', '', '8、', '2', '0', '1');
INSERT INTO `questions` VALUES ('69', '1', '', '9、', '2', '0', '1');
INSERT INTO `questions` VALUES ('70', '1', '', '10、', '2', '0', '1');
INSERT INTO `questions` VALUES ('71', '1', '', '11、', '2', '0', '1');
INSERT INTO `questions` VALUES ('72', '1', '', '12、', '2', '0', '1');
INSERT INTO `questions` VALUES ('73', '1', '', '13、', '2', '0', '1');
INSERT INTO `questions` VALUES ('74', '1', '', '14、', '2', '0', '1');
INSERT INTO `questions` VALUES ('75', '1', '', '15、', '2', '0', '1');
INSERT INTO `questions` VALUES ('76', '1', '', '16、', '2', '0', '1');
INSERT INTO `questions` VALUES ('77', '1', '', '17、', '2', '0', '1');
INSERT INTO `questions` VALUES ('78', '1', '', '18、', '2', '0', '1');
INSERT INTO `questions` VALUES ('79', '1', '', '19、', '2', '0', '1');
INSERT INTO `questions` VALUES ('80', '1', '', '20、', '2', '0', '1');
INSERT INTO `questions` VALUES ('81', '1', '', '21、', '2', '0', '1');
INSERT INTO `questions` VALUES ('82', '1', '', '22、', '2', '0', '1');
INSERT INTO `questions` VALUES ('83', '1', '', '23、', '2', '0', '1');
INSERT INTO `questions` VALUES ('84', '1', '', '24、', '2', '0', '1');
INSERT INTO `questions` VALUES ('85', '1', '', '25、', '2', '0', '1');
INSERT INTO `questions` VALUES ('86', '1', '', '26、', '2', '0', '1');
INSERT INTO `questions` VALUES ('87', '1', '', '27、', '2', '0', '1');
INSERT INTO `questions` VALUES ('88', '1', '', '28、', '2', '0', '1');
INSERT INTO `questions` VALUES ('89', '1', '', '29、', '2', '0', '1');
INSERT INTO `questions` VALUES ('90', '1', '', '30、', '2', '0', '1');
INSERT INTO `questions` VALUES ('91', '1', '', '31、', '2', '0', '1');
INSERT INTO `questions` VALUES ('92', '1', '', '32、', '2', '0', '1');
INSERT INTO `questions` VALUES ('93', '1', '', '33、', '2', '0', '1');
INSERT INTO `questions` VALUES ('94', '1', '', '34、', '2', '0', '1');
INSERT INTO `questions` VALUES ('95', '1', '', '35、', '2', '0', '1');
INSERT INTO `questions` VALUES ('96', '1', '', '36、', '2', '0', '1');
INSERT INTO `questions` VALUES ('97', '1', '', '37、', '2', '0', '1');
INSERT INTO `questions` VALUES ('98', '1', '', '38、', '2', '0', '1');
INSERT INTO `questions` VALUES ('99', '1', '', '39、', '2', '0', '1');
INSERT INTO `questions` VALUES ('100', '1', '', '40、', '2', '0', '1');
INSERT INTO `questions` VALUES ('101', '1', '', '41、', '2', '0', '1');
INSERT INTO `questions` VALUES ('102', '1', '', '42、', '2', '0', '1');
INSERT INTO `questions` VALUES ('103', '1', '', '43、', '2', '0', '1');
INSERT INTO `questions` VALUES ('104', '1', '', '44、', '2', '0', '1');
INSERT INTO `questions` VALUES ('105', '1', '', '45、', '2', '0', '1');
INSERT INTO `questions` VALUES ('106', '1', '', '46、', '2', '0', '1');
INSERT INTO `questions` VALUES ('107', '1', '', '47、', '2', '0', '1');
INSERT INTO `questions` VALUES ('108', '1', '', '48、', '2', '0', '1');
INSERT INTO `questions` VALUES ('109', '1', '', '49、', '2', '0', '1');
INSERT INTO `questions` VALUES ('110', '1', '', '50、', '2', '0', '1');
INSERT INTO `questions` VALUES ('111', '1', '', '51、', '2', '0', '1');
INSERT INTO `questions` VALUES ('112', '1', '', '52、', '2', '0', '1');
INSERT INTO `questions` VALUES ('113', '1', '', '53、', '2', '0', '1');
INSERT INTO `questions` VALUES ('114', '1', '', '54、', '2', '0', '1');
INSERT INTO `questions` VALUES ('115', '1', '', '55、', '2', '0', '1');
INSERT INTO `questions` VALUES ('116', '1', '', '56、', '2', '0', '1');
INSERT INTO `questions` VALUES ('117', '1', '', '57、', '2', '0', '1');
INSERT INTO `questions` VALUES ('118', '1', '', '58、', '2', '0', '1');
INSERT INTO `questions` VALUES ('119', '1', '', '59、', '2', '0', '1');
INSERT INTO `questions` VALUES ('120', '1', '', '60、', '2', '0', '1');
INSERT INTO `questions` VALUES ('121', '1', '', '61、', '2', '0', '1');
INSERT INTO `questions` VALUES ('122', '1', '', '62、', '2', '0', '1');
INSERT INTO `questions` VALUES ('123', '1', '', '63、', '2', '0', '1');
INSERT INTO `questions` VALUES ('124', '1', '', '64、', '2', '0', '1');
INSERT INTO `questions` VALUES ('125', '1', '', '65、', '2', '0', '1');
INSERT INTO `questions` VALUES ('126', '1', '', '66、', '2', '0', '1');
INSERT INTO `questions` VALUES ('127', '1', '', '67、', '2', '0', '1');
INSERT INTO `questions` VALUES ('128', '1', '', '68、', '2', '0', '1');
INSERT INTO `questions` VALUES ('129', '1', '', '69、', '2', '0', '1');
INSERT INTO `questions` VALUES ('130', '1', '', '70、', '2', '0', '1');
INSERT INTO `questions` VALUES ('131', '1', '', '71、', '2', '0', '1');
INSERT INTO `questions` VALUES ('132', '1', '', '72、', '2', '0', '1');
INSERT INTO `questions` VALUES ('133', '1', '', '73、', '2', '0', '1');
INSERT INTO `questions` VALUES ('134', '1', '', '74、', '2', '0', '1');
INSERT INTO `questions` VALUES ('135', '1', '', '75、', '2', '0', '1');
INSERT INTO `questions` VALUES ('136', '1', '', '76、', '2', '0', '1');
INSERT INTO `questions` VALUES ('137', '1', '', '77、', '2', '0', '1');
INSERT INTO `questions` VALUES ('138', '1', '', '78、', '2', '0', '1');
INSERT INTO `questions` VALUES ('139', '1', '', '79、', '2', '0', '1');
INSERT INTO `questions` VALUES ('140', '1', '', '80、', '2', '0', '1');
INSERT INTO `questions` VALUES ('141', '1', '', '81、', '2', '0', '1');
INSERT INTO `questions` VALUES ('142', '1', '', '82、', '2', '0', '1');
INSERT INTO `questions` VALUES ('143', '1', '', '83、', '2', '0', '1');
INSERT INTO `questions` VALUES ('144', '1', '', '84、', '2', '0', '1');
INSERT INTO `questions` VALUES ('145', '1', '', '85、', '2', '0', '1');
INSERT INTO `questions` VALUES ('146', '1', '', '86、', '2', '0', '1');
INSERT INTO `questions` VALUES ('147', '1', '', '87、', '2', '0', '1');
INSERT INTO `questions` VALUES ('148', '1', '', '88、', '2', '0', '1');
INSERT INTO `questions` VALUES ('149', '1', '', '89、', '2', '0', '1');
INSERT INTO `questions` VALUES ('150', '1', '', '90、', '2', '0', '1');
INSERT INTO `questions` VALUES ('151', '1', '', '91、', '2', '0', '1');
INSERT INTO `questions` VALUES ('152', '1', '', '92、', '2', '0', '1');
INSERT INTO `questions` VALUES ('153', '1', '', '93、', '2', '0', '1');
INSERT INTO `questions` VALUES ('154', '1', '', '94、', '2', '0', '1');
INSERT INTO `questions` VALUES ('155', '1', '', '95、', '2', '0', '1');
INSERT INTO `questions` VALUES ('156', '1', '', '96、', '2', '0', '1');
INSERT INTO `questions` VALUES ('157', '1', '', '97、', '2', '0', '1');
INSERT INTO `questions` VALUES ('158', '1', '', '98、', '2', '0', '1');
INSERT INTO `questions` VALUES ('159', '1', '', '99、', '2', '0', '1');
INSERT INTO `questions` VALUES ('160', '1', '', '100、', '2', '0', '1');
INSERT INTO `questions` VALUES ('161', '1', '', '101、', '2', '0', '1');
INSERT INTO `questions` VALUES ('162', '1', '', '102、', '2', '0', '1');
INSERT INTO `questions` VALUES ('163', '1', '', '103、', '2', '0', '1');
INSERT INTO `questions` VALUES ('164', '1', '', '104、', '2', '0', '1');
INSERT INTO `questions` VALUES ('165', '1', '', '105、', '2', '0', '1');
INSERT INTO `questions` VALUES ('166', '1', '', '106、', '2', '0', '1');
INSERT INTO `questions` VALUES ('167', '1', '', '107、', '2', '0', '1');
INSERT INTO `questions` VALUES ('168', '1', '', '108、', '2', '0', '1');
INSERT INTO `questions` VALUES ('169', '1', '', '109、', '2', '0', '1');
INSERT INTO `questions` VALUES ('170', '1', '', '110、', '2', '0', '1');
INSERT INTO `questions` VALUES ('171', '1', '', '111、', '2', '0', '1');
INSERT INTO `questions` VALUES ('172', '1', '', '112、', '2', '0', '1');
INSERT INTO `questions` VALUES ('173', '1', '', '113、', '2', '0', '1');
INSERT INTO `questions` VALUES ('174', '1', '', '114、', '2', '0', '1');
INSERT INTO `questions` VALUES ('175', '1', '', '115、', '2', '0', '1');
INSERT INTO `questions` VALUES ('176', '1', '', '116、', '2', '0', '1');
INSERT INTO `questions` VALUES ('177', '1', '', '117、', '2', '0', '1');
INSERT INTO `questions` VALUES ('178', '1', '', '118、', '2', '0', '1');
INSERT INTO `questions` VALUES ('179', '1', '', '119、', '2', '0', '1');
INSERT INTO `questions` VALUES ('180', '1', '', '120、', '2', '0', '1');
INSERT INTO `questions` VALUES ('181', '1', '', '121、', '2', '0', '1');
INSERT INTO `questions` VALUES ('182', '1', '', '122、', '2', '0', '1');
INSERT INTO `questions` VALUES ('183', '1', '', '123、', '2', '0', '1');
INSERT INTO `questions` VALUES ('184', '1', '', '124、', '2', '0', '1');
INSERT INTO `questions` VALUES ('185', '1', '', '125、', '2', '0', '1');
INSERT INTO `questions` VALUES ('186', '1', '', '126、', '2', '0', '1');
INSERT INTO `questions` VALUES ('187', '1', '', '127、', '2', '0', '1');
INSERT INTO `questions` VALUES ('188', '1', '', '128、', '2', '0', '1');
INSERT INTO `questions` VALUES ('189', '1', '', '129、', '2', '0', '1');
INSERT INTO `questions` VALUES ('190', '1', '', '130、', '2', '0', '1');
INSERT INTO `questions` VALUES ('191', '1', '', '131、', '2', '0', '1');
INSERT INTO `questions` VALUES ('192', '1', '', '132、', '2', '0', '1');
INSERT INTO `questions` VALUES ('193', '1', '', '133、', '2', '0', '1');
INSERT INTO `questions` VALUES ('194', '1', '', '134、', '2', '0', '1');
INSERT INTO `questions` VALUES ('195', '1', '', '135、', '2', '0', '1');
INSERT INTO `questions` VALUES ('196', '1', '', '136、', '2', '0', '1');
INSERT INTO `questions` VALUES ('197', '1', '', '137、', '2', '0', '1');
INSERT INTO `questions` VALUES ('198', '1', '', '138、', '2', '0', '1');
INSERT INTO `questions` VALUES ('199', '1', '', '139、', '2', '0', '1');
INSERT INTO `questions` VALUES ('200', '1', '', '140、', '2', '0', '1');
INSERT INTO `questions` VALUES ('201', '1', '', '141、', '2', '0', '1');
INSERT INTO `questions` VALUES ('202', '1', '', '142、', '2', '0', '1');
INSERT INTO `questions` VALUES ('203', '1', '', '143、', '2', '0', '1');
INSERT INTO `questions` VALUES ('204', '1', '', '144、', '2', '0', '1');
INSERT INTO `questions` VALUES ('205', '1', '', '145、', '2', '0', '1');
INSERT INTO `questions` VALUES ('206', '1', '', '146、', '2', '0', '1');
INSERT INTO `questions` VALUES ('207', '1', '', '147、', '2', '0', '1');
INSERT INTO `questions` VALUES ('208', '1', '', '148、', '2', '0', '1');
INSERT INTO `questions` VALUES ('209', '1', '', '149、', '2', '0', '1');
INSERT INTO `questions` VALUES ('210', '1', '', '150、', '2', '0', '1');
INSERT INTO `questions` VALUES ('211', '1', '', '1、认识你的人倾向形容你为：', '3', '0', '1');
INSERT INTO `questions` VALUES ('212', '1', '', '2、下列哪一件事听起来比较吸引你？', '3', '0', '1');
INSERT INTO `questions` VALUES ('213', '1', '', '3、你倾向通过以下哪种方式收集信息：', '3', '0', '1');
INSERT INTO `questions` VALUES ('214', '1', '', '4、哪种特质更像你：', '3', '0', '1');
INSERT INTO `questions` VALUES ('215', '1', '', '5、 你是否经常让:', '3', '0', '1');
INSERT INTO `questions` VALUES ('216', '1', '', '6、当与一个人交往时，你倾向于看重：', '3', '0', '1');
INSERT INTO `questions` VALUES ('217', '1', '', '7、你倾向拥有：', '3', '0', '1');
INSERT INTO `questions` VALUES ('218', '1', '', '8、过去，你的朋友倾向对你说：', '3', '0', '1');
INSERT INTO `questions` VALUES ('219', '1', '', '9、当你对一个聚会觉得放心时，你偏向谈论：', '3', '0', '1');
INSERT INTO `questions` VALUES ('220', '1', '', '10、你倾向相信：', '3', '0', '1');
INSERT INTO `questions` VALUES ('221', '1', '', '11、在聚会中，你通常：', '3', '0', '1');
INSERT INTO `questions` VALUES ('222', '1', '', '12、 在与某个人第一次约会中：', '3', '0', '1');
INSERT INTO `questions` VALUES ('223', '1', '', '13、你通常比较喜欢的是', '3', '0', '1');
INSERT INTO `questions` VALUES ('224', '1', '', '14、你是这种人:', '3', '0', '1');
INSERT INTO `questions` VALUES ('225', '1', '', '15、与人聚会的时候', '3', '0', '1');
INSERT INTO `questions` VALUES ('226', '1', '', '16、你是这类型的人：', '3', '0', '1');
INSERT INTO `questions` VALUES ('227', '1', '', '17、哪一项较常见：', '3', '0', '1');
INSERT INTO `questions` VALUES ('228', '1', '', '18、你偏好：', '3', '0', '1');
INSERT INTO `questions` VALUES ('229', '1', '', '19、你是此类型的人：', '3', '0', '1');
INSERT INTO `questions` VALUES ('230', '1', '', '20、你倾向如此做决定：', '3', '0', '1');
INSERT INTO `questions` VALUES ('231', '1', '', '21、你倾向从何处得到力量：', '3', '0', '1');
INSERT INTO `questions` VALUES ('232', '1', '', '22、一般来说，你和哪些人比较合得来？', '3', '0', '1');
INSERT INTO `questions` VALUES ('233', '1', '', '23、当你参加一个社交聚会时，你会：', '3', '0', '1');
INSERT INTO `questions` VALUES ('234', '1', '', '24、当你不同意他人的想法时：', '3', '0', '1');
INSERT INTO `questions` VALUES ('235', '1', '', '25、你倾向比较能够察觉到：', '3', '0', '1');
INSERT INTO `questions` VALUES ('236', '1', '', '26、处理许多事情上，你会喜欢', '3', '0', '1');
INSERT INTO `questions` VALUES ('237', '1', '', '27、你选择的生活充满着：', '3', '0', '1');
INSERT INTO `questions` VALUES ('238', '1', '', '28、你是这种喜欢……的人：', '3', '0', '1');

-- ----------------------------
-- Table structure for shakes
-- ----------------------------
DROP TABLE IF EXISTS `shakes`;
CREATE TABLE `shakes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `updated_at` int(10) unsigned DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `entry` varchar(245) NOT NULL DEFAULT '' COMMENT '词条',
  `interest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `interest_name` varchar(45) NOT NULL DEFAULT '',
  `potential_ids` varchar(20) NOT NULL DEFAULT '',
  `potential_names` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `interest_id` (`interest_id`),
  KEY `potential_ids` (`potential_ids`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='型格（意译）';

-- ----------------------------
-- Records of shakes
-- ----------------------------
INSERT INTO `shakes` VALUES ('1', '社会交际型', '1', '', '0', '0', '0', '以人际关系为第一思考本能，较强的社会性，关注社会价值和社会影响。', '1', 'S', '49', '');
INSERT INTO `shakes` VALUES ('2', '目标管理型', '1', '', '0', '0', '0', '以目标结果为第一价值倾向，较强的团队性，关注商业价值和商业回报。', '2', 'E', '58', '');
INSERT INTO `shakes` VALUES ('3', '公益维护型', '1', '', '0', '0', '0', '以公益责任为第一立场定位，较强的服从性，关注团队稳定和氛围和谐。', '3', 'C', '29', '');
INSERT INTO `shakes` VALUES ('4', '个人工作型', '1', '', '0', '0', '0', '以个体工作为第一完成要务，较强的投入性，关注事物进展和排除障碍。', '4', 'R', '23', '');
INSERT INTO `shakes` VALUES ('5', '思维创造型', '1', '', '0', '0', '0', '以思维自由为第一舒适领域，较强的思维性，关注事物逻辑和突破变革。', '5', 'I', '17', '');
INSERT INTO `shakes` VALUES ('6', '文艺革新型', '1', '', '0', '0', '0', '以表现形式为第一意识维度，较强的艺术性，关注创意设计和受欢迎度。', '6', 'A', '67', '');

-- ----------------------------
-- Table structure for sub_questions
-- ----------------------------
DROP TABLE IF EXISTS `sub_questions`;
CREATE TABLE `sub_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
INSERT INTO `sub_questions` VALUES ('1', '1', '', 'A.同意', '1', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('2', '1', '', 'B.不同意', '1', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('3', '1', '', 'A.同意', '2', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('4', '1', '', 'B.不同意', '2', '2', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('5', '1', '', 'A.同意', '3', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('6', '1', '', 'B.不同意', '3', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('7', '1', '', 'A.同意', '4', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('8', '1', '', 'B.不同意', '4', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('9', '1', '', 'A.同意', '5', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('10', '1', '', 'B.不同意', '5', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('11', '1', '', 'A.同意', '6', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('12', '1', '', 'B.不同意', '6', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('13', '1', '', 'A.同意', '7', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('14', '1', '', 'B.不同意', '7', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('15', '1', '', 'A.同意', '8', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('16', '1', '', 'B.不同意', '8', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('17', '1', '', 'A.同意', '9', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('18', '1', '', 'B.不同意', '9', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('19', '1', '', 'A.同意', '10', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('20', '1', '', 'B.不同意', '10', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('21', '1', '', 'A.同意', '11', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('22', '1', '', 'B.不同意', '11', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('23', '1', '', 'A.同意', '12', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('24', '1', '', 'B.不同意', '12', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('25', '1', '', 'A.同意', '13', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('26', '1', '', 'B.不同意', '13', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('27', '1', '', 'A.同意', '14', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('28', '1', '', 'B.不同意', '14', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('29', '1', '', 'A.同意', '15', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('30', '1', '', 'B.不同意', '15', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('31', '1', '', 'A.同意', '16', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('32', '1', '', 'B.不同意', '16', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('33', '1', '', 'A.同意', '17', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('34', '1', '', 'B.不同意', '17', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('35', '1', '', 'A.同意', '18', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('36', '1', '', 'B.不同意', '18', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('37', '1', '', 'A.同意', '19', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('38', '1', '', 'B.不同意', '19', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('39', '1', '', 'A.同意', '20', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('40', '1', '', 'B.不同意', '20', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('41', '1', '', 'A.同意', '21', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('42', '1', '', 'B.不同意', '21', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('43', '1', '', 'A.同意', '22', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('44', '1', '', 'B.不同意', '22', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('45', '1', '', 'A.同意', '23', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('46', '1', '', 'B.不同意', '23', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('47', '1', '', 'A.同意', '24', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('48', '1', '', 'B.不同意', '24', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('49', '1', '', 'A.同意', '25', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('50', '1', '', 'B.不同意', '25', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('51', '1', '', 'A.同意', '26', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('52', '1', '', 'B.不同意', '26', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('53', '1', '', 'A.同意', '27', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('54', '1', '', 'B.不同意', '27', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('55', '1', '', 'A.同意', '28', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('56', '1', '', 'B.不同意', '28', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('57', '1', '', 'A.同意', '29', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('58', '1', '', 'B.不同意', '29', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('59', '1', '', 'A.同意', '30', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('60', '1', '', 'B.不同意', '30', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('61', '1', '', 'A.同意', '31', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('62', '1', '', 'B.不同意', '31', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('63', '1', '', 'A.同意', '32', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('64', '1', '', 'B.不同意', '32', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('65', '1', '', 'A.同意', '33', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('66', '1', '', 'B.不同意', '33', '2', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('67', '1', '', 'A.同意', '34', '1', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('68', '1', '', 'B.不同意', '34', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('69', '1', '', 'A.同意', '35', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('70', '1', '', 'B.不同意', '35', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('71', '1', '', 'A.同意', '36', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('72', '1', '', 'B.不同意', '36', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('73', '1', '', 'A.同意', '37', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('74', '1', '', 'B.不同意', '37', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('75', '1', '', 'A.同意', '38', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('76', '1', '', 'B.不同意', '38', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('77', '1', '', 'A.同意', '39', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('78', '1', '', 'B.不同意', '39', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('79', '1', '', 'A.同意', '40', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('80', '1', '', 'B.不同意', '40', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('81', '1', '', 'A.同意', '41', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('82', '1', '', 'B.不同意', '41', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('83', '1', '', 'A.同意', '42', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('84', '1', '', 'B.不同意', '42', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('85', '1', '', 'A.同意', '43', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('86', '1', '', 'B.不同意', '43', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('87', '1', '', 'A.同意', '44', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('88', '1', '', 'B.不同意', '44', '2', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('89', '1', '', 'A.同意', '45', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('90', '1', '', 'B.不同意', '45', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('91', '1', '', 'A.同意', '46', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('92', '1', '', 'B.不同意', '46', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('93', '1', '', 'A.同意', '47', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('94', '1', '', 'B.不同意', '47', '2', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('95', '1', '', 'A.同意', '48', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('96', '1', '', 'B.不同意', '48', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('97', '1', '', 'A.同意', '49', '1', '1', '研究型', '5', '1');
INSERT INTO `sub_questions` VALUES ('98', '1', '', 'B.不同意', '49', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('99', '1', '', 'A.同意', '50', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('100', '1', '', 'B.不同意', '50', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('101', '1', '', 'A.同意', '51', '1', '1', '现实型', '4', '1');
INSERT INTO `sub_questions` VALUES ('102', '1', '', 'B.不同意', '51', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('103', '1', '', 'A.同意', '52', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('104', '1', '', 'B.不同意', '52', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('105', '1', '', 'A.同意', '53', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('106', '1', '', 'B.不同意', '53', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('107', '1', '', 'A.同意', '54', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('108', '1', '', 'B.不同意', '54', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('109', '1', '', 'A.同意', '55', '1', '1', '常规型', '3', '1');
INSERT INTO `sub_questions` VALUES ('110', '1', '', 'B.不同意', '55', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('111', '1', '', 'A.同意', '56', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('112', '1', '', 'B.不同意', '56', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('113', '1', '', 'A.同意', '57', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('114', '1', '', 'B.不同意', '57', '2', '1', '社会型', '1', '1');
INSERT INTO `sub_questions` VALUES ('115', '1', '', 'A.同意', '58', '1', '1', '艺术型', '6', '1');
INSERT INTO `sub_questions` VALUES ('116', '1', '', 'B.不同意', '58', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('117', '1', '', 'A.同意', '59', '1', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('118', '1', '', 'B.不同意', '59', '2', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('119', '1', '', 'A.同意', '60', '1', '1', '', '0', '1');
INSERT INTO `sub_questions` VALUES ('120', '1', '', 'B.不同意', '60', '2', '1', '企业型', '2', '1');
INSERT INTO `sub_questions` VALUES ('121', '1', '', '我喜欢和陌生人打交道', '61', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('122', '1', '', '我喜欢分析事物的原理', '61', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('123', '1', '', '我规划未来', '62', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('124', '1', '', '我总结过去', '62', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('125', '1', '', '我能够让每个人都喜欢我', '63', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('126', '1', '', '我想要每个人都崇拜我', '63', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('127', '1', '', '我力争第一', '64', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('128', '1', '', '我渴望被人认同', '64', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('129', '1', '', '我非常努力的学习，注重学习成果', '65', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('130', '1', '', '我学习努力，注重学习的过程', '65', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('131', '1', '', '我宁缺毋滥', '66', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('132', '1', '', '我解决困难', '66', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('133', '1', '', '我是一个重视集体氛围的人', '67', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('134', '1', '', '我理智，不冲动，追寻事物的本质', '67', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('135', '1', '', '我了解别人的个性特点', '68', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('136', '1', '', '我能够接受多种类型的人', '68', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('137', '1', '', '我喜欢与别人合作', '69', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('138', '1', '', '我擅长与陌生人交谈', '69', '2', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('139', '1', '', '我对生活的感觉极好', '70', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('140', '1', '', '我认为自己很能干', '70', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('141', '1', '', '我能使别人有成就感', '71', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('142', '1', '', '我能使别人感到我的建议很重要', '71', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('143', '1', '', '我按照自己的价值观去生活', '72', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('144', '1', '', '我按照自己的理想生活', '72', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('145', '1', '', '成为他人的知己使我感觉很爽', '73', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('146', '1', '', '我希望大家都能听我的', '73', '2', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('147', '1', '', '只要我认定了，就会马上展开行动', '74', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('148', '1', '', '只要我认定了，都会始终做到底', '74', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('149', '1', '', '我致力于发展', '75', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('150', '1', '', '我信守自己的价值观', '75', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('151', '1', '', '我要在自己的生活中保持平衡', '76', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('152', '1', '', '我希望我的家庭过最好的生活', '76', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('153', '1', '', '我每天多次谈到自己对未来的展望', '77', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('154', '1', '', '我特意腾出时间思考怎样实现未来', '77', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('155', '1', '', '我一旦做出决定，就必须付诸行动', '78', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('156', '1', '', '我在行动之前需要确定一切可能发生的因素', '78', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('157', '1', '', '我比大多数人更加专心去完成要做的事', '79', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('158', '1', '', '我比大多数人更加善于去观察别人做事的方法', '79', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('159', '1', '', '我善于交谈', '80', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('160', '1', '', '我善于倾听', '80', '2', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('161', '1', '', '我喜欢竞赛', '81', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('162', '1', '', '我喜欢学习', '81', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('163', '1', '', '我思考问题总是考虑大家的想法', '82', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('164', '1', '', '我思考问题总是设想各种结果，观察走向', '82', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('165', '1', '', '我充满活力，满怀喜悦和欢乐', '83', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('166', '1', '', '我了解影响形势的所有因素', '83', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('167', '1', '', '我想成为一家公司的总裁', '84', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('168', '1', '', '我时常牵挂我的朋友和家人', '84', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('169', '1', '', '我会威逼别人', '85', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('170', '1', '', '我会唠唠叨叨劝说别人', '85', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('171', '1', '', '我能设身处地为别人着想，理解他们的感受', '86', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('172', '1', '', '我爱所有的人', '86', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('173', '1', '', '我很优秀', '87', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('174', '1', '', '我很快乐', '87', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('175', '1', '', '我尽量与别人一起做事', '88', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('176', '1', '', '我尽量指导别人', '88', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('177', '1', '', '有人不喜欢我时，我会感到沮丧', '89', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('178', '1', '', '如果做自己认为不对的事，我就会感到内疚', '89', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('179', '1', '', '我喜欢解决问题，享受解决问题的成就感', '90', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('180', '1', '', '我要研究透彻，确保不犯错误', '90', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('181', '1', '', '我擅长了解人的本质特点', '91', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('182', '1', '', '我擅长了解事物的本质特点', '91', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('183', '1', '', '我喜欢与富有哲理的人交往', '92', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('184', '1', '', '我喜欢与奋斗并比我强的人交往', '92', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('185', '1', '', '我乐于使别人提高其自身价值', '93', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('186', '1', '', '我乐于使别人认识自己的特点', '93', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('187', '1', '', '我总能感觉到他人的想法', '94', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('188', '1', '', '我能从逻辑上了解事物本质', '94', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('189', '1', '', '我对表面现象持有一种健康的怀疑态度', '95', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('190', '1', '', '我相信自己与全人类都有关系', '95', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('191', '1', '', '我的朋友经常请我讲故事', '96', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('192', '1', '', '我的朋友经常邀请我参加集体活动', '96', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('193', '1', '', '我和朋友关系好是因为他们觉得我很忠诚很可靠', '97', '1', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('194', '1', '', '我和朋友关系好是因为我善于维护和建立亲密的关系', '97', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('195', '1', '', '我只对感兴趣的部分更努力更持久', '98', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('196', '1', '', '我对有价值有意义的事情精力充沛', '98', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('197', '1', '', '任何与体育有关的事都会强烈吸引我', '99', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('198', '1', '', '任何与人文思想有关的事都会强烈吸引我', '99', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('199', '1', '', '我是一个十分整洁的人', '100', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('200', '1', '', '我坚守自己的决定', '100', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('201', '1', '', '我通过与别人分享而成长', '101', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('202', '1', '', '我通过主动学习而成长', '101', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('203', '1', '', '我按照既定的目标去行动', '102', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('204', '1', '', '我把眼前的问题解决好', '102', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('205', '1', '', '我注重未来能够取得的成就', '103', '1', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('206', '1', '', '我想象自己如何应对未来可能发生的事件', '103', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('207', '1', '', '我能很好的理解别人', '104', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('208', '1', '', '我能很长久的联系别人', '104', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('209', '1', '', '我不排斥任何人，从而不伤害他们的感情', '105', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('210', '1', '', '我仔细挑选我的朋友', '105', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('211', '1', '', '我不自负，能够和大多数人融入在一起', '106', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('212', '1', '', '被别人视为可信、专业化和成功的人士对我很重要', '106', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('213', '1', '', '我喜欢追求历史的起因', '107', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('214', '1', '', '我喜欢预测未来', '107', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('215', '1', '', '我对自己的生活中遇到的事件进行分析', '108', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('216', '1', '', '我对影响我生活的事件充满激情', '108', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('217', '1', '', '我通过发挥自身优势取得进步', '109', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('218', '1', '', '我通过克服自身弱点取得进步', '109', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('219', '1', '', '对我来说，每件事都必须分轻重缓急', '110', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('220', '1', '', '我喜欢听取他人的建议', '110', '2', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('221', '1', '', '我寻找各种不同的做事方法', '111', '1', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('222', '1', '', '我确立常规的做事方法', '111', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('223', '1', '', '我征求别人的意见', '112', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('224', '1', '', '别人征求我的意见', '112', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('225', '1', '', '我认为平等对待所有人和制定明确的规则至关重要', '113', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('226', '1', '', '我认为应当发现、激励每个人的优势', '113', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('227', '1', '', '我借助大家的意见寻找正确答案', '114', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('228', '1', '', '我对答案和问题一目了然', '114', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('229', '1', '', '我慷慨地称赞任何人', '115', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('230', '1', '', '我只称赞值得称赞的人', '115', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('231', '1', '', '我只有在竞争中赢得第一才会完全满意', '116', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('232', '1', '', '只要与别人一起参与竞赛我就很满足', '116', '2', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('233', '1', '', '我善于使截然不同的人相互合作', '117', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('234', '1', '', '我平等的对待不同的人', '117', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('235', '1', '', '我尽量不离开自己的舒适领地', '118', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('236', '1', '', '我是一个寻求刺激的人', '118', '2', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('237', '1', '', '我能够体会别人的感受', '119', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('238', '1', '', '我喜欢与别人高谈阔论', '119', '2', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('239', '1', '', '我凭感觉认知别人的特点', '120', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('240', '1', '', '我凭理智进行重要决策', '120', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('241', '1', '', '我随机应变，根据着事情发生而做出反应', '121', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('242', '1', '', '我分清事情的轻重缓急，然后采取行动', '121', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('243', '1', '', '我喜欢每个人', '122', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('244', '1', '', '我要每个人都喜欢我', '122', '2', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('245', '1', '', '我处事很灵活', '123', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('246', '1', '', '我喜欢面对困难', '123', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('247', '1', '', '我每周设定学习目标，并为完成而努力', '124', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('248', '1', '', '我根据当日需求灵活安排自己的学习和生活', '124', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('249', '1', '', '我喜欢处理好眼前的事', '125', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('250', '1', '', '我为未来而生活', '125', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('251', '1', '', '我认为家庭是第一位的', '126', '1', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('252', '1', '', '我认为不断吸取知识是第一位的', '126', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('253', '1', '', '我研究别人行为的根源', '127', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('254', '1', '', '我惯于自我反思', '127', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('255', '1', '', '我按部就班', '128', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('256', '1', '', '我热情洋溢', '128', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('257', '1', '', '我很会讲故事', '129', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('258', '1', '', '我善于辅导别人', '129', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('259', '1', '', '我对自己在生活中取得的进步感到满意', '130', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('260', '1', '', '我的生活充满了变化', '130', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('261', '1', '', '我喜欢讲话', '131', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('262', '1', '', '我喜欢思考', '131', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('263', '1', '', '我追求完美', '132', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('264', '1', '', '我是个实干家', '132', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('265', '1', '', '我思考问题尽量不与权威对抗', '133', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('266', '1', '', '我思考问题具有战略眼光', '133', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('267', '1', '', '我寻找能坦诚指出我弱点的人', '134', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('268', '1', '', '我喜欢欣赏我长处的人', '134', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('269', '1', '', '我善于交际', '135', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('270', '1', '', '我喜欢与朋友一起合作', '135', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('271', '1', '', '我讲话从不缺少词汇', '136', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('272', '1', '', '谈论自己使我为难', '136', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('273', '1', '', '我是一个无忧无虑的人', '137', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('274', '1', '', '我是一个严肃的人', '137', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('275', '1', '', '我善于观察人们之间的区别', '138', '1', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('276', '1', '', '我平等对待每个人', '138', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('277', '1', '', '我的成功之道在于谦虚自省', '139', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('278', '1', '', '我的成功之道在于自学的能力', '139', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('279', '1', '', '在遇到困难而必须圆满完成任务时，我往往先抓重点', '140', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('280', '1', '', '我往往关注细节，面面俱到', '140', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('281', '1', '', '我性格外向', '141', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('282', '1', '', '我在必要时能够做到开朗大方', '141', '2', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('283', '1', '', '我的学习已经满负荷', '142', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('284', '1', '', '我还有很大潜能', '142', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('285', '1', '', '我以整洁著称', '143', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('286', '1', '', '我以富有幽默感著称', '143', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('287', '1', '', '我正在创造我的未来', '144', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('288', '1', '', '我研究我的未来', '144', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('289', '1', '', '我喜欢挑战别人', '145', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('290', '1', '', '我喜欢鼓励别人', '145', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('291', '1', '', '我非常在意隐私', '146', '1', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('292', '1', '', '我处理问题井井有条', '146', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('293', '1', '', '我迫使大家达成一致', '147', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('294', '1', '', '我是一个充满欢乐的人', '147', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('295', '1', '', '我因为理解别人的想法，有时会奉迎别人', '148', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('296', '1', '', '我认为每个部分都很重要，不能失去整体平衡', '148', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('297', '1', '', '我用更多的时间去发现问题', '149', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('298', '1', '', '我更多的时候是跟着感觉走', '149', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('299', '1', '', '我很少赞扬别人，因此当我这样做时就显得很有分量', '150', '1', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('300', '1', '', '我慷慨地赞美别人', '150', '2', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('301', '1', '', '我收集新东西', '151', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('302', '1', '', '我的价值观很稳定', '151', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('303', '1', '', '我喜欢解决实际问题', '152', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('304', '1', '', '我喜欢制定目标的讨论', '152', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('305', '1', '', '我喜欢独处', '153', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('306', '1', '', '我想念我的朋友', '153', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('307', '1', '', '我想象未来', '154', '1', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('308', '1', '', '我理解造成当前情形的原因', '154', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('309', '1', '', '我会把秘密与朋友分享', '155', '1', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('310', '1', '', '我基本不会把秘密和朋友分享', '155', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('311', '1', '', '我小时候好强而独立', '156', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('312', '1', '', '我小时候循规蹈矩', '156', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('313', '1', '', '我喜欢招待别人', '157', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('314', '1', '', '我喜欢竞技活动', '157', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('315', '1', '', '我讨厌被别人控制', '158', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('316', '1', '', '我要避免空虚', '158', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('317', '1', '', '我的自信给我动力', '159', '1', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('318', '1', '', '我的责任给我动力', '159', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('319', '1', '', '我的快乐能感染别人', '160', '1', '2', '积极', '26', '1');
INSERT INTO `sub_questions` VALUES ('320', '1', '', '我以辅导别人成长为快乐', '160', '2', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('321', '1', '', '我过于相信别人', '161', '1', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('322', '1', '', '我过于雄心勃勃', '161', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('323', '1', '', '过去发生的事情激励我', '162', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('324', '1', '', '未来可能取得的成就激励我', '162', '2', '2', '前瞻', '3', '1');
INSERT INTO `sub_questions` VALUES ('325', '1', '', '兵来将挡水来土掩', '163', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('326', '1', '', '说到就要做到', '163', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('327', '1', '', '我是一个重视平衡的人', '164', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('328', '1', '', '我是一个敢于担当的人', '164', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('329', '1', '', '我有强烈求知欲', '165', '1', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('330', '1', '', '我立志有所建树', '165', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('331', '1', '', '我经常考虑因果关系', '166', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('332', '1', '', '我遇到事情及时应对', '166', '2', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('333', '1', '', '我不怕失败，勇敢面对问题', '167', '1', '2', '统率', '19', '1');
INSERT INTO `sub_questions` VALUES ('334', '1', '', '我解决失败造成的影响', '167', '2', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('335', '1', '', '我对我的现状存有不满', '168', '1', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('336', '1', '', '我对我的现状感到满足', '168', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('337', '1', '', '我待人随和', '169', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('338', '1', '', '我敢冒风险', '169', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('339', '1', '', '我鼓励朋友有所作为', '170', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('340', '1', '', '我对待每个人都一样', '170', '2', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('341', '1', '', '我不喜欢走后门找关系', '171', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('342', '1', '', '我只关注哪些事情做得正确', '171', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('343', '1', '', '学习的时候我会全力以赴', '172', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('344', '1', '', '只要需要，任何时候我都可以投入学习', '172', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('345', '1', '', '开始新任务对我很容易', '173', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('346', '1', '', '我发现问题并主动解决', '173', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('347', '1', '', '我不拒绝任何人', '174', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('348', '1', '', '我仔细挑选价值观相同的人', '174', '2', '2', '审慎', '33', '1');
INSERT INTO `sub_questions` VALUES ('349', '1', '', '我通常与别人在一起', '175', '1', '2', '包容', '13', '1');
INSERT INTO `sub_questions` VALUES ('350', '1', '', '我通常意志坚强', '175', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('351', '1', '', '如有必要，我能整晚集中精力学习', '176', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('352', '1', '', '只要取胜就行', '176', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('353', '1', '', '战胜对手使我成就感十足', '177', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('354', '1', '', '攻克复杂的难题使我倍感兴奋', '177', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('355', '1', '', '我同时做几件事效率最高', '178', '1', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('356', '1', '', '我习惯于一次做一件事', '178', '2', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('357', '1', '', '通过总结过去，我能预测未来', '179', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('358', '1', '', '通过分析变量因素，我能预测未来', '179', '2', '2', '战略', '24', '1');
INSERT INTO `sub_questions` VALUES ('359', '1', '', '我发起并积极推动', '180', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('360', '1', '', '我承诺并一心落实', '180', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('361', '1', '', '我能随时随地进入学习状态', '181', '1', '2', '适应', '32', '1');
INSERT INTO `sub_questions` VALUES ('362', '1', '', '我善于构思新点子', '181', '2', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('363', '1', '', '解决问题时我通常先思考其内部规律', '182', '1', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('364', '1', '', '解决问题时我通常先思考过去的成功经验', '182', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('365', '1', '', '我喜欢外出增长见识，因为这能使我了解更多有用信息', '183', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('366', '1', '', '我喜欢关注体育，因为体育有竞技，争抢和胜利', '183', '2', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('367', '1', '', '我偏重于创意和新概念', '184', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('368', '1', '', '我偏重于实际行动', '184', '2', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('369', '1', '', '我使用简短和概念性的词汇', '185', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('370', '1', '', '我相信善有善报、恶有恶报', '185', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('371', '1', '', '用语言表达思想对我十分容易', '186', '1', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('372', '1', '', '我善于借用别人的思想和办法', '186', '2', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('373', '1', '', '我喜爱从阅读中寻找信息', '187', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('374', '1', '', '我喜欢琢磨事物的工作原理', '187', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('375', '1', '', '我的大脑不停地思考', '188', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('376', '1', '', '我说干就干', '188', '2', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('377', '1', '', '我更在意别人的想法', '189', '1', '2', '和谐', '11', '1');
INSERT INTO `sub_questions` VALUES ('378', '1', '', '我喜欢发表建议', '189', '2', '2', '沟通', '25', '1');
INSERT INTO `sub_questions` VALUES ('379', '1', '', '我喜欢了解我所不懂的', '190', '1', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('380', '1', '', '我喜欢从数据中研究规律', '190', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('381', '1', '', '我渴望扩大信息量', '191', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('382', '1', '', '我渴望得到认可', '191', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('383', '1', '', '我往往能够快速及时的开始一个任务', '192', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('384', '1', '', '我说到做到，言而有信', '192', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('385', '1', '', '一个新创意会使我激动不已', '193', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('386', '1', '', '完成交给我的任务会使我激动不已', '193', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('387', '1', '', '和别人在一起时，我觉得我的点子最多', '194', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('388', '1', '', '和别人在一起时，我觉得我的信息最充分', '194', '2', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('389', '1', '', '我善于追本溯源，将复杂事物清晰化、概念化', '195', '1', '2', '理念', '16', '1');
INSERT INTO `sub_questions` VALUES ('390', '1', '', '我善于处理复杂事物，将其流程化', '195', '2', '2', '统筹', '34', '1');
INSERT INTO `sub_questions` VALUES ('391', '1', '', '我能快速阅读我感兴趣的书籍，并获取我需要的东西', '196', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('392', '1', '', '我阅读缓慢，因为我需要推敲其中的内容', '196', '2', '2', '分析', '2', '1');
INSERT INTO `sub_questions` VALUES ('393', '1', '', '取胜的结果最重要', '197', '1', '2', '竞争', '6', '1');
INSERT INTO `sub_questions` VALUES ('394', '1', '', '按规则做事最重要', '197', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('395', '1', '', '生活中人与人之间存在紧密的联系', '198', '1', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('396', '1', '', '我能主导自己的生活', '198', '2', '2', '自信', '27', '1');
INSERT INTO `sub_questions` VALUES ('397', '1', '', '我每周至少花5小时独自思考', '199', '1', '2', '思维', '23', '1');
INSERT INTO `sub_questions` VALUES ('398', '1', '', '我喜欢和别人在一起', '199', '2', '2', '交往', '29', '1');
INSERT INTO `sub_questions` VALUES ('399', '1', '', '我通过发挥长处以达到极致', '200', '1', '2', '完美', '9', '1');
INSERT INTO `sub_questions` VALUES ('400', '1', '', '我通过解决问题使自己成长', '200', '2', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('401', '1', '', '只要确定目标，我往往先做再说', '201', '1', '2', '行动', '20', '1');
INSERT INTO `sub_questions` VALUES ('402', '1', '', '我热爱人们，担心我的行为会影响别人', '201', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('403', '1', '', '我通过倾听，使人们感到获得理解', '202', '1', '2', '体谅', '18', '1');
INSERT INTO `sub_questions` VALUES ('404', '1', '', '我坚持为人处世的原则', '202', '2', '2', '信仰', '14', '1');
INSERT INTO `sub_questions` VALUES ('405', '1', '', '我对要完成的目标能集中注意力', '203', '1', '2', '专注', '21', '1');
INSERT INTO `sub_questions` VALUES ('406', '1', '', '当我的任务完成时，我的思路更清晰', '203', '2', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('407', '1', '', '我喜欢要求、过程和目标都非常精确的任务', '204', '1', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('408', '1', '', '我喜欢个人成绩的提升空间很大的学习方法', '204', '2', '2', '学习', '8', '1');
INSERT INTO `sub_questions` VALUES ('409', '1', '', '我像一个老师，喜欢辅导别人', '205', '1', '2', '伯乐', '15', '1');
INSERT INTO `sub_questions` VALUES ('410', '1', '', '我像一个监督者，一切井井有条', '205', '2', '2', '纪律', '31', '1');
INSERT INTO `sub_questions` VALUES ('411', '1', '', '我帮助别人解决问题得到满足感', '206', '1', '2', '排难', '10', '1');
INSERT INTO `sub_questions` VALUES ('412', '1', '', '我比别人更渴望主宰自己的生活', '206', '2', '2', '追求', '5', '1');
INSERT INTO `sub_questions` VALUES ('413', '1', '', '永远没有理由偏袒任何人', '207', '1', '2', '公平', '22', '1');
INSERT INTO `sub_questions` VALUES ('414', '1', '', '永远没有理由言而无信', '207', '2', '2', '责任', '28', '1');
INSERT INTO `sub_questions` VALUES ('415', '1', '', '我只对感兴趣的事特别关注', '208', '1', '2', '搜集', '30', '1');
INSERT INTO `sub_questions` VALUES ('416', '1', '', '我对任何需要做的事都会全力以赴', '208', '2', '2', '成就', '7', '1');
INSERT INTO `sub_questions` VALUES ('417', '1', '', '我善于争取别人', '209', '1', '2', '取悦', '1', '1');
INSERT INTO `sub_questions` VALUES ('418', '1', '', '我善于了解别人', '209', '2', '2', '个别', '12', '1');
INSERT INTO `sub_questions` VALUES ('419', '1', '', '我喜欢把过去发生的事和现在的事联系在一起', '210', '1', '2', '回顾', '4', '1');
INSERT INTO `sub_questions` VALUES ('420', '1', '', '我能把看上去毫不相关的事相互联系在一起', '210', '2', '2', '关联', '17', '1');
INSERT INTO `sub_questions` VALUES ('421', '1', '', 'A 热情和敏感', '211', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('422', '1', '', 'B 逻辑和明确', '211', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('423', '1', '', 'A 与朋友到有很多人且社交活动频繁的地方', '212', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('424', '1', '', 'B 呆在家中与朋友玩游戏，看电影并享用你最喜欢的外卖食物', '212', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('425', '1', '', 'A 你对有可能发生之事的想像和期望', '213', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('426', '1', '', 'B 你对目前状况的实际认知', '213', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('427', '1', '', 'A 友善而仁慈', '214', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('428', '1', '', 'B 冷静而理智', '214', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('429', '1', '', 'A 你的情感支配你的理智', '215', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('430', '1', '', 'B 你的理智主宰你的情感', '215', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('431', '1', '', 'A 情感上的相容性：表达关心和对朋友的感受很敏感。', '216', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('432', '1', '', 'B 智慧上的相容性：沟通重要的想法；客观地讨论和辩论事情。', '216', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('433', '1', '', 'A 与陌生人容易混熟', '217', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('434', '1', '', 'B 比较沉静或矜持', '217', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('435', '1', '', 'A 你难道不可以安静一会儿吗？', '218', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('436', '1', '', 'B 可以请你从你的世界中出来一下吗？', '218', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('437', '1', '', 'A 未来，关于改进或发明事物和生活的种种可能性', '219', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('438', '1', '', 'B 实际的、具体的、关于“此时此地”的事物', '219', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('439', '1', '', 'A 你的直觉', '220', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('440', '1', '', 'B 你直接的观察和现成的经验', '220', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('441', '1', '', 'A 整体来说很健谈', '221', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('442', '1', '', 'B 较安静并保留，直到你觉得舒服', '221', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('443', '1', '', 'A 若你所约的人来迟了，你会很不高兴。', '222', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('444', '1', '', 'B 一点儿都不在乎，因为你自己常常迟到。', '222', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('445', '1', '', 'A 概念、想象、抽象的', '223', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('446', '1', '', 'B 细化、真实、具体的', '223', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('447', '1', '', 'A 喜欢先纵观全局。', '224', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('448', '1', '', 'B 喜欢先掌握细节。', '224', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('449', '1', '', 'A 令你活力培增', '225', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('450', '1', '', 'B 常常令你感到无趣', '225', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('451', '1', '', 'A 与其活在现实中，不如活在想像里。', '226', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('452', '1', '', 'B 与其活在想像里，不如活在现实中。', '226', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('453', '1', '', 'A 你准时出席而其他人都迟到。', '227', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('454', '1', '', 'B 其他人都准时出席而你迟到。', '227', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('455', '1', '', 'A 事先知道聚会的行程：要去哪里、有谁参加、你会在那里多久、该如何打扮。', '228', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('456', '1', '', 'B 让聚会自然地发生，不做太多事先的计划。', '228', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('457', '1', '', 'A 喜欢在一段时间里专心于一件事情直到完成。', '229', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('458', '1', '', 'B 享受同时进行好几件事情。', '229', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('459', '1', '', 'A 首先依你的心意，然后依你的逻辑。', '230', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('460', '1', '', 'B 首先依你的逻辑，然后依你的心意。', '230', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('461', '1', '', 'A 朋友。', '231', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('462', '1', '', 'B 自己的想法。', '231', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('463', '1', '', 'A 有哲理的人', '232', '1', '3', 'N', '4', '1');
INSERT INTO `sub_questions` VALUES ('464', '1', '', 'B 务实的人', '232', '2', '3', 'S', '3', '1');
INSERT INTO `sub_questions` VALUES ('465', '1', '', 'A 在夜色很深时，一旦你开始投入，也许就是最晚离开的那一个。', '233', '1', '3', 'E', '1', '1');
INSERT INTO `sub_questions` VALUES ('466', '1', '', 'B 在夜晚刚开始的时候，你就疲倦了并且想回家。', '233', '2', '3', 'I', '2', '1');
INSERT INTO `sub_questions` VALUES ('467', '1', '', 'A 你尽可能地避免伤害对方的感情；若是会对对方造成伤害的话，你就不会说。', '234', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('468', '1', '', 'B 你通常毫无保留地说话，并且对他人直言不讳，因为对的就是对的。', '234', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('469', '1', '', 'A 当人们需要情感上的支持时。', '235', '1', '3', 'F', '6', '1');
INSERT INTO `sub_questions` VALUES ('470', '1', '', 'B 当人们不合逻辑时。', '235', '2', '3', 'T', '5', '1');
INSERT INTO `sub_questions` VALUES ('471', '1', '', 'A 按照计划行事', '236', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('472', '1', '', 'B 凭兴所至行事，喜欢变化', '236', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('473', '1', '', 'A 日程表和预先安排。', '237', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('474', '1', '', 'B 自然发生和弹性。', '237', '2', '3', 'P', '8', '1');
INSERT INTO `sub_questions` VALUES ('475', '1', '', 'A 下定决心并且做出最后肯定的结论。', '238', '1', '3', 'J', '7', '1');
INSERT INTO `sub_questions` VALUES ('476', '1', '', 'B 放宽你的选择面并且持续收集信息。', '238', '2', '3', 'P', '8', '1');

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
