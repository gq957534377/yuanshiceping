/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : yuanshiceping

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-04-24 17:25:57
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='才干，能力';

-- ----------------------------
-- Records of abilities
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

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
  `remark` varchar(255) NOT NULL DEFAULT '',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_multi` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否为多个问题',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='分类 (A类 B类 C类)';

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'A类', '1', '', '1', '0', '0');
INSERT INTO `categories` VALUES ('2', 'B类', '1', '', '1', '1', '0');
INSERT INTO `categories` VALUES ('3', 'C类', '1', '', '1', '1', '0');

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
-- Table structure for qualities
-- ----------------------------
DROP TABLE IF EXISTS `qualities`;
CREATE TABLE `qualities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='素质';

-- ----------------------------
-- Records of qualities
-- ----------------------------

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
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='题目';

-- ----------------------------
-- Records of questions
-- ----------------------------

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
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='子问题';

-- ----------------------------
-- Records of sub_questions
-- ----------------------------

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
INSERT INTO `subjects` VALUES ('1', '高中生测', '1', '', '2018-04-24 09:53:05', '2018-04-24 09:53:05');

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
