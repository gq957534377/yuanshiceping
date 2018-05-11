/*
 Navicat Premium Data Transfer

 Source Server         : aws
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : zhaoyi

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 11/05/2018 20:25:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `classroom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of courses
-- ----------------------------
BEGIN;
INSERT INTO `courses` VALUES (2, '高等数学', '100', '周一上午第一节', '2018-03-06 19:35:22', '2018-04-05 19:40:09', '主教楼301', 7, '4');
INSERT INTO `courses` VALUES (3, '计算机导论', '100', '周二上午第二节', '2018-03-06 19:35:53', '2018-04-05 19:40:53', '软件楼301', 9, '3');
INSERT INTO `courses` VALUES (4, 'C语言', '100', '周三下午第一节', '2018-03-10 16:43:00', '2018-04-05 19:41:05', '软件楼401', 20, '3');
INSERT INTO `courses` VALUES (5, '大学英语', '100', '周一上午第一节', '2018-03-24 12:39:16', '2018-04-05 19:45:14', '综合楼201', 28, '3');
INSERT INTO `courses` VALUES (6, '毛概', '100', '周五下午第一节', '2018-04-05 19:47:03', '2018-04-05 19:47:03', '主教楼301', 27, '4');
INSERT INTO `courses` VALUES (7, '马原', '100', '周一下午第一节', '2018-04-05 20:05:25', '2018-04-05 20:05:25', '主教楼401', 7, '4');
INSERT INTO `courses` VALUES (8, '高等数学', '100', '周一上午第四节', '2018-04-05 20:07:17', '2018-04-05 20:07:17', '主教楼101', 27, '6');
INSERT INTO `courses` VALUES (9, '大学体育', '100', '周一上午第三节', '2018-04-05 21:14:03', '2018-04-05 21:14:03', '操场', 20, '3');
COMMIT;

-- ----------------------------
-- Table structure for grades
-- ----------------------------
DROP TABLE IF EXISTS `grades`;
CREATE TABLE `grades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of grades
-- ----------------------------
BEGIN;
INSERT INTO `grades` VALUES (1, 2, 13, 1, '90', '2018-03-24 12:15:31', '2018-04-05 20:49:02');
INSERT INTO `grades` VALUES (2, 2, 14, 1, '85', '2018-03-24 12:22:26', '2018-03-24 12:22:34');
INSERT INTO `grades` VALUES (4, 2, 14, 2, '100', '2018-03-24 22:44:36', '2018-03-24 22:44:36');
INSERT INTO `grades` VALUES (6, 2, 13, 2, '80', '2018-04-05 11:31:17', '2018-04-05 11:31:17');
INSERT INTO `grades` VALUES (7, 2, 21, 1, '86', '2018-04-05 11:40:00', '2018-04-05 11:40:00');
INSERT INTO `grades` VALUES (8, 2, 29, 1, '90', '2018-04-05 20:49:02', '2018-04-05 20:49:02');
INSERT INTO `grades` VALUES (9, 2, 26, 1, '90', '2018-04-05 20:49:02', '2018-04-05 20:49:02');
INSERT INTO `grades` VALUES (10, 8, 29, 1, '90', '2018-04-05 20:51:01', '2018-04-05 20:51:01');
INSERT INTO `grades` VALUES (11, 8, 26, 1, '90', '2018-04-05 20:51:01', '2018-04-05 20:51:01');
INSERT INTO `grades` VALUES (12, 8, 13, 1, '90', '2018-04-05 20:51:01', '2018-04-05 20:51:01');
INSERT INTO `grades` VALUES (13, 8, 25, 1, '90', '2018-04-05 21:09:05', '2018-04-05 21:09:05');
INSERT INTO `grades` VALUES (14, 8, 24, 1, '99', '2018-04-05 21:09:05', '2018-04-05 21:09:28');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_03_03_053359_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (4, '2018_03_03_055053_create_teams_table', 1);
INSERT INTO `migrations` VALUES (5, '2018_03_03_055125_create_courses_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_03_10_171819_create_team_has_users_table', 2);
INSERT INTO `migrations` VALUES (11, '2018_03_10_182343_create_team_has_courses_table', 3);
INSERT INTO `migrations` VALUES (12, '2018_03_03_055448_create_grades_table', 4);
INSERT INTO `migrations` VALUES (13, '2018_03_03_055330_create_news_table', 5);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
INSERT INTO `model_has_roles` VALUES (4, 1, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 4, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 5, 'App\\User');
INSERT INTO `model_has_roles` VALUES (3, 7, 'App\\User');
INSERT INTO `model_has_roles` VALUES (3, 9, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 13, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 17, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 18, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 19, 'App\\User');
INSERT INTO `model_has_roles` VALUES (3, 20, 'App\\User');
INSERT INTO `model_has_roles` VALUES (1, 22, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 24, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 25, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 26, 'App\\User');
INSERT INTO `model_has_roles` VALUES (3, 27, 'App\\User');
INSERT INTO `model_has_roles` VALUES (3, 28, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 29, 'App\\User');
INSERT INTO `model_has_roles` VALUES (2, 30, 'App\\User');
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_id` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES (3, 7, 13, 'dfdsfdsfdsfdsfdsf', 2, '2018-03-24 15:17:50', '2018-03-24 15:37:56');
INSERT INTO `news` VALUES (5, 7, 13, '你成绩出来了', 2, '2018-04-05 11:43:32', '2018-04-05 20:22:47');
INSERT INTO `news` VALUES (6, 22, 7, '周五上午安排高数考试，考场主教楼201', 2, '2018-04-05 19:52:29', '2018-04-05 20:32:09');
INSERT INTO `news` VALUES (7, 22, 20, '安排考试', 2, '2018-04-05 19:54:01', '2018-04-05 19:55:29');
INSERT INTO `news` VALUES (8, 20, 26, '查看成绩', 1, '2018-04-05 19:55:53', '2018-04-05 19:55:53');
INSERT INTO `news` VALUES (9, 27, 25, '成绩已出，请查看', 2, '2018-04-05 21:10:10', '2018-04-05 21:10:43');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` VALUES (7, 'dean_add', 'web', '2018-03-04 13:01:24', '2018-03-19 20:37:32', '添加教务');
INSERT INTO `permissions` VALUES (8, 'course', 'web', '2018-03-04 13:02:20', '2018-03-19 20:37:51', '课程管理');
INSERT INTO `permissions` VALUES (9, 'class', 'web', '2018-03-19 20:38:07', '2018-03-19 20:38:07', '班级管理');
INSERT INTO `permissions` VALUES (10, 'teacher', 'web', '2018-03-19 20:39:16', '2018-03-19 20:39:16', '老师管理');
INSERT INTO `permissions` VALUES (11, 'student', 'web', '2018-03-19 20:39:33', '2018-03-19 20:39:33', '学生管理');
INSERT INTO `permissions` VALUES (12, 'role', 'web', '2018-03-19 20:39:45', '2018-03-19 20:39:45', '角色管理');
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `role_has_permissions` VALUES (7, 1);
INSERT INTO `role_has_permissions` VALUES (8, 1);
INSERT INTO `role_has_permissions` VALUES (7, 2);
INSERT INTO `role_has_permissions` VALUES (8, 2);
INSERT INTO `role_has_permissions` VALUES (7, 3);
INSERT INTO `role_has_permissions` VALUES (8, 3);
INSERT INTO `role_has_permissions` VALUES (7, 4);
INSERT INTO `role_has_permissions` VALUES (8, 4);
INSERT INTO `role_has_permissions` VALUES (9, 4);
INSERT INTO `role_has_permissions` VALUES (10, 4);
INSERT INTO `role_has_permissions` VALUES (11, 4);
INSERT INTO `role_has_permissions` VALUES (12, 4);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'dean', 'web', '2018-03-05 19:25:43', '2018-03-05 19:25:43', '教务');
INSERT INTO `roles` VALUES (2, 'student', 'web', '2018-03-05 21:30:15', '2018-03-05 21:30:15', '学生');
INSERT INTO `roles` VALUES (3, 'teacher', 'web', '2018-03-05 21:34:07', '2018-03-05 21:34:07', '老师');
INSERT INTO `roles` VALUES (4, 'admin', 'web', '2018-03-19 20:40:35', '2018-04-05 19:21:16', '管理员');
COMMIT;

-- ----------------------------
-- Table structure for team_has_courses
-- ----------------------------
DROP TABLE IF EXISTS `team_has_courses`;
CREATE TABLE `team_has_courses` (
  `team_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of team_has_courses
-- ----------------------------
BEGIN;
INSERT INTO `team_has_courses` VALUES (2, 4, 3, 4, '2018-03-18 13:37:20', '2018-03-18 14:04:42', 2, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 4, 4, '2018-03-18 14:04:52', '2018-03-18 14:04:52', 4, 1);
INSERT INTO `team_has_courses` VALUES (4, 2, 2, 1, '2018-03-18 14:06:34', '2018-03-18 14:06:34', 5, 1);
INSERT INTO `team_has_courses` VALUES (4, 4, 3, 1, '2018-03-18 14:06:43', '2018-03-20 21:50:29', 6, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 3, 2, '2018-03-18 15:34:34', '2018-03-20 19:49:48', 8, 8);
INSERT INTO `team_has_courses` VALUES (2, 2, 4, 1, '2018-03-19 20:49:59', '2018-03-19 20:49:59', 9, 1);
INSERT INTO `team_has_courses` VALUES (2, 4, 5, 3, '2018-03-19 20:50:05', '2018-03-19 20:50:05', 10, 1);
INSERT INTO `team_has_courses` VALUES (2, 3, 2, 2, '2018-03-19 20:50:10', '2018-03-20 19:49:54', 11, 8);
INSERT INTO `team_has_courses` VALUES (2, 3, 3, 3, '2018-03-19 20:50:17', '2018-03-19 20:50:17', 12, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 5, 1, '2018-03-19 20:50:22', '2018-03-19 20:50:22', 13, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 3, 5, '2018-03-19 20:50:33', '2018-03-19 20:50:33', 14, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 1, 3, '2018-03-19 20:50:37', '2018-03-19 20:50:37', 15, 1);
INSERT INTO `team_has_courses` VALUES (2, 4, 5, 2, '2018-03-19 20:50:46', '2018-03-19 20:50:46', 16, 1);
INSERT INTO `team_has_courses` VALUES (2, 4, 4, 2, '2018-03-19 20:50:54', '2018-03-19 20:50:54', 17, 1);
INSERT INTO `team_has_courses` VALUES (2, 3, 2, 1, '2018-03-20 19:42:51', '2018-03-20 22:04:12', 18, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 3, 1, '2018-03-20 19:42:58', '2018-03-20 21:53:57', 19, 1);
INSERT INTO `team_has_courses` VALUES (2, 3, 1, 2, '2018-03-20 21:31:31', '2018-03-20 21:31:31', 20, 8);
INSERT INTO `team_has_courses` VALUES (4, 2, 1, 1, '2018-03-20 21:49:48', '2018-03-20 21:49:48', 21, 1);
INSERT INTO `team_has_courses` VALUES (4, 3, 4, 1, '2018-03-20 21:50:56', '2018-03-20 21:50:56', 22, 1);
INSERT INTO `team_has_courses` VALUES (2, 2, 6, 1, '2018-03-20 21:53:48', '2018-03-20 21:53:48', 23, 1);
INSERT INTO `team_has_courses` VALUES (6, 8, 1, 1, '2018-04-05 20:07:46', '2018-04-05 20:07:46', 24, 1);
INSERT INTO `team_has_courses` VALUES (5, 8, 1, 1, '2018-04-05 20:17:02', '2018-04-05 20:17:02', 25, 1);
INSERT INTO `team_has_courses` VALUES (7, 7, 1, 1, '2018-04-05 21:15:19', '2018-04-05 21:15:19', 26, 1);
COMMIT;

-- ----------------------------
-- Table structure for team_has_users
-- ----------------------------
DROP TABLE IF EXISTS `team_has_users`;
CREATE TABLE `team_has_users` (
  `team_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of team_has_users
-- ----------------------------
BEGIN;
INSERT INTO `team_has_users` VALUES (2, 14);
INSERT INTO `team_has_users` VALUES (4, 13);
INSERT INTO `team_has_users` VALUES (4, 21);
INSERT INTO `team_has_users` VALUES (4, 26);
INSERT INTO `team_has_users` VALUES (4, 29);
INSERT INTO `team_has_users` VALUES (5, 23);
INSERT INTO `team_has_users` VALUES (6, 24);
INSERT INTO `team_has_users` VALUES (6, 25);
INSERT INTO `team_has_users` VALUES (6, 30);
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teams_class_unique` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
BEGIN;
INSERT INTO `teams` VALUES (4, '软工1411', '2018-03-10 17:32:33', '2018-03-24 14:01:53', 2014);
INSERT INTO `teams` VALUES (5, '软工1410', '2018-03-19 20:46:35', '2018-03-24 14:02:00', 2014);
INSERT INTO `teams` VALUES (6, '软工1412', '2018-04-05 19:33:06', '2018-04-05 19:33:43', 2014);
INSERT INTO `teams` VALUES (7, '软工1402', '2018-04-05 21:14:37', '2018-04-05 21:14:50', 2014);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `weChat` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'openId',
  `weChat_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '姓名',
  `weChat_head` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '上次登陆ip',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_no_unique` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'admin', 'admin', '', '15735104610', '929426602@qq.com', 1, NULL, NULL, NULL, '$2y$10$KDnbIHG5NLQB3GKFMrUG0uj4OPatY0ivZXoMQYTmTzqeay8vf1STy', '219.139.250.41', 'bxRXBMhSO7O5QqwN8qqbolbD1yPGAjTjzRZMylmHH1lHovH2pa42ReVmsajy', '2018-03-03 06:36:47', '2018-04-20 16:52:29');
INSERT INTO `users` VALUES (4, 'dlgcx', '电力工程系', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$diV3ENNVfNnTJUb7GxepDeATVUp5erCank/OfM8fDVGwcKUtGAvdC', '127.0.0.1', '0hxTjXQ5acOpgBRbry4U3bBoCCeve3t9UulnQiuAw87vM6eqR9sTLVGV139V', '2018-03-05 20:06:56', '2018-04-03 20:50:10');
INSERT INTO `users` VALUES (5, 'gcglx', '工程管理系', '//ol0fkmsij.bkt.clouddn.com/FnFGgrfeY1tX2w8boKF7Wu8warAo', '18234424039', '95@qq.com', 1, NULL, NULL, NULL, '$2y$10$fpZiLFPv54NZH8J9JpUZWOWCxbbxN1PoQsrwZLFRXDAUHKsvJ8aOy', '127.0.0.1', 'tNOpJE10O2156mBxh8P3S4ZVLW8uqq4bOuxlzbgpRGN0obwqFjxHcVI02IyN', '2018-03-05 20:13:01', '2018-03-19 20:41:56');
INSERT INTO `users` VALUES (7, '005', '赵老师', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$.woCu36llkcH9aPBssEmu.OENVgk9i1Q224R104P407Y5RW3/dSbK', '123.118.25.117', 'PR3NaO55QvjdQiTZTYJ64u8HTCkJ06wTo2zMH4PYJylPaLZ7Ee14TEaKjsHc', '2018-03-06 18:55:29', '2018-05-11 19:57:34');
INSERT INTO `users` VALUES (9, '003', '李老师', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$hmNkHkhlcsVDp.VahDDsduONKL406YaWjDKOKwUX0CXEFgXOaCWH.', NULL, NULL, '2018-03-06 18:55:42', '2018-04-05 19:43:28');
INSERT INTO `users` VALUES (13, '1462141156', '赵艺', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$q6ZsONAtWHHJk8SyyETc/.eAHjeJQJnpxutE3scL5f.BpqYTQQvSy', '223.104.145.117', 'iEr9vmOFr5HUCiyjJ9kuZdRiAlt97XJiVyubNx16J2Imc0DDux1nvw7SxyzH', '2018-03-10 17:53:17', '2018-04-05 20:19:07');
INSERT INTO `users` VALUES (17, 'dlgcxa', '动力工程系', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$OqmcQ5LifngbNt8PhoSOr.EvoAL1.RsPKWZP5tbi/a78giivy/0c2', '127.0.0.1', 'BsFyNZFbsIqWdNk5CEhYL9NXxjNs6xLxCo9CrlvwfTmuejZelpdE4KXtb8zh', '2018-03-19 20:42:32', '2018-03-21 19:40:09');
INSERT INTO `users` VALUES (18, 'dzxxgcx', '电子信息工程系', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$wGNQm7jRMtb9EkjXBV9qy.ZO7vxoA8cm55UwYpTaNQEItOYvqmNy2', NULL, NULL, '2018-03-19 20:42:56', '2018-03-19 20:42:56');
INSERT INTO `users` VALUES (19, 'zdh', '自动化', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$aqMPK2ZZWVuXhNNDjCSRNu4DqVLzurHYRdtO97E7KPz0XXwfEfWXK', NULL, NULL, '2018-03-19 20:43:13', '2018-03-19 20:43:13');
INSERT INTO `users` VALUES (20, '002', '王老师', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$7.OGxDkTGCUvHOurNEubvujL60t.Lu24LGVGDjXXXlGlY0rcXnoIO', '223.104.145.117', 'fx9tNk1QtjwrtNK4HkuuEULvYrLFlsZkNdUomfHJbJ6lhTUfsMGw5xGTjs8j', '2018-03-19 20:44:48', '2018-04-05 19:55:12');
INSERT INTO `users` VALUES (22, 'rjxy', '软件学院', '//ol0fkmsij.bkt.clouddn.com/Fm8j1_gpoBnHhCLquQq3yJERM6Tf', '15735104610', '929426602@qq.com', 1, NULL, NULL, NULL, '$2y$10$8lBr34KehJ5M5vvTOohYR.JYcP3Gqlxe3YInWnxks5cZ8SRNvc3V2', '223.104.145.117', 'fCdjgEkT0L8fMwsWnxZv3Q34BO9ngHKrxndLN0Edzc447jDzzCBXBK7S68bC', '2018-04-05 11:23:36', '2018-04-05 21:11:31');
INSERT INTO `users` VALUES (24, '1462141214', '侯燕婷', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$VHo3eQUlU8vjUK0jqx763uHFJyyiDfdqqxt04A1rnqG0/sohp9Gby', '171.118.50.96', NULL, '2018-04-05 19:34:12', '2018-04-08 22:18:25');
INSERT INTO `users` VALUES (25, '1462141213', '郭艳', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$cYMVKsvgnR.rryI33fd1e.8cFkspi8VaefjL31M07Snzk.WlJYaiK', '223.104.145.117', 'jXDA3aY0lEK5mfiljKUsbNrc15Z3Kn94T4Yr1zxMDr0ueB6eapaNOfDh15DW', '2018-04-05 19:35:22', '2018-04-05 21:10:35');
INSERT INTO `users` VALUES (26, '1462141134', '王玉珏', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$9G0Kk53AAjKp2MRf6p5xs.VTQsa47axcdu59J2kb9aM3lZpEKwEG.', NULL, NULL, '2018-04-05 19:36:05', '2018-04-05 19:36:05');
INSERT INTO `users` VALUES (27, '001', '吴老师', '//ol0fkmsij.bkt.clouddn.com/FkQ5guuX5Iq52wtq7q2qtx4nS7_J', '15735104610', '123@qq.con', 1, NULL, NULL, NULL, '$2y$10$bH.EYIiXSMDYmYG8CB4bjOqJ/IadSjwZkIEhnWHWKMOf2eisgE25S', '223.104.146.37', '7W2TjDgUevmsHvLIRC7tCJ5oIa7brgCWYAPolhCo34OvfkxIxXewVK0I0GVq', '2018-04-05 19:43:10', '2018-04-13 19:37:02');
INSERT INTO `users` VALUES (28, '004', '毛老师', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$FJAEAr3TABUqGnoZqyXBiebJQH3.rbx4PJjzZmfqZ3b0UALY20cCu', NULL, NULL, '2018-04-05 19:44:08', '2018-04-05 19:44:08');
INSERT INTO `users` VALUES (29, '1462141103', '郭晨茹', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$oKz9Osf04bbmrIJ3V.Lnx.m6urIVJJ9Q7fbHBvNk3ilXLAMxFG5EK', NULL, NULL, '2018-04-05 20:16:23', '2018-04-05 20:16:23');
INSERT INTO `users` VALUES (30, '1462141215', '胡蓉蓉', NULL, NULL, NULL, 1, NULL, NULL, NULL, '$2y$10$MxkyHsqKB.NauJzSauRYQuNsmQ6x9edYJcDBQpVfIHzy1Q2aKq2Fm', NULL, NULL, '2018-04-05 21:12:22', '2018-04-05 21:12:22');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
