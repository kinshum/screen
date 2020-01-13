/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : screen

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 13/01/2020 20:42:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文件md5',
  `contentType` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '物理路径',
  `url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` int(1) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `BLOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `CALENDAR_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `CRON_EXPRESSION` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ENTRY_ID` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `ENTRY_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `LOCK_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `LOCK_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('adminQuartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `INSTANCE_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `INSTANCE_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('adminQuartzScheduler', 'DESKTOP-DHJFLEC1578931341296', 1578914593199, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `STR_PROP_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `STR_PROP_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `STR_PROP_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `INT_PROP_1` int(11) NULL DEFAULT NULL,
  `INT_PROP_2` int(11) NULL DEFAULT NULL,
  `LONG_PROP_1` bigint(20) NULL DEFAULT NULL,
  `LONG_PROP_2` bigint(20) NULL DEFAULT NULL,
  `DEC_PROP_1` decimal(13, 4) NULL DEFAULT NULL,
  `DEC_PROP_2` decimal(13, 4) NULL DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `SCHED_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_NAME` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `JOB_GROUP` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `DESCRIPTION` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) NULL DEFAULT NULL,
  `PRIORITY` int(11) NULL DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) NULL DEFAULT NULL,
  `CALENDAR_NAME` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) NULL DEFAULT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) USING BTREE,
  INDEX `SCHED_NAME`(`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '模块名',
  `flag` tinyint(4) NOT NULL DEFAULT 1 COMMENT '成功失败',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '备注',
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `createTime`(`createTime`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 661 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES (1, 1, '登陆', 1, NULL, '2020-01-13 18:20:56');
INSERT INTO `sys_logs` VALUES (2, 1, '退出', 1, NULL, '2020-01-13 18:25:56');
INSERT INTO `sys_logs` VALUES (3, 1, '登陆', 1, NULL, '2020-01-13 18:25:59');
INSERT INTO `sys_logs` VALUES (4, 1, '登陆', 1, NULL, '2020-01-15 23:59:39');
INSERT INTO `sys_logs` VALUES (5, 1, '保存用户', 1, NULL, '2020-01-16 00:02:21');
INSERT INTO `sys_logs` VALUES (6, 1, '保存角色', 1, NULL, '2020-01-16 23:59:20');
INSERT INTO `sys_logs` VALUES (7, 1, '登陆', 1, NULL, '2020-01-17 00:00:00');
INSERT INTO `sys_logs` VALUES (8, 1, '登陆', 1, NULL, '2020-01-18 00:00:22');
INSERT INTO `sys_logs` VALUES (9, 1, '退出', 1, NULL, '2020-01-13 18:51:51');
INSERT INTO `sys_logs` VALUES (10, 1, '登陆', 0, 'kafka消费第82次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (11, 1, '登陆', 0, 'kafka消费第98次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (12, 1, '登陆', 0, 'kafka消费第72次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (13, 1, '登陆', 0, 'kafka消费第99次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (14, 1, '登陆', 0, 'kafka消费第64次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (15, 1, '登陆', 0, 'kafka消费第79次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (16, 1, '登陆', 0, 'kafka消费第52次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (17, 1, '登陆', 0, 'kafka消费第76次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (18, 1, '登陆', 0, 'kafka消费第87次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (19, 1, '登陆', 0, 'kafka消费第68次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (20, 1, '登陆', 0, 'kafka消费第97次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (21, 1, '登陆', 0, 'kafka消费第95次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (22, 1, '登陆', 0, 'kafka消费第50次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (23, 1, '登陆', 0, 'kafka消费第51次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (24, 1, '登陆', 0, 'kafka消费第67次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (25, 1, '登陆', 0, 'kafka消费第81次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (26, 1, '登陆', 0, 'kafka消费第54次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (27, 1, '登陆', 0, 'kafka消费第96次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (28, 1, '登陆', 0, 'kafka消费第55次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (29, 1, '登陆', 0, 'kafka消费第65次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (30, 1, '登陆', 0, 'kafka消费第61次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (31, 1, '登陆', 0, 'kafka消费第69次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (32, 1, '登陆', 0, 'kafka消费第85次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (33, 1, '登陆', 0, 'kafka消费第104次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (34, 1, '登陆', 0, 'kafka消费第103次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (35, 1, '登陆', 0, 'kafka消费第109次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (36, 1, '登陆', 0, 'kafka消费第63次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (37, 1, '登陆', 0, 'kafka消费第83次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (38, 1, '登陆', 0, 'kafka消费第105次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (39, 1, '登陆', 0, 'kafka消费第106次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (40, 1, '登陆', 0, 'kafka消费第108次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (41, 1, '登陆', 0, 'kafka消费第107次', '2020-01-13 20:05:41');
INSERT INTO `sys_logs` VALUES (42, 1, '登陆', 0, 'kafka消费第74次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (43, 1, '登陆', 0, 'kafka消费第58次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (44, 1, '登陆', 0, 'kafka消费第93次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (45, 1, '登陆', 0, 'kafka消费第102次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (46, 1, '登陆', 0, 'kafka消费第90次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (47, 1, '登陆', 0, 'kafka消费第71次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (48, 1, '登陆', 0, 'kafka消费第62次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (49, 1, '登陆', 0, 'kafka消费第70次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (50, 1, '登陆', 0, 'kafka消费第53次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (51, 1, '登陆', 0, 'kafka消费第86次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (52, 1, '登陆', 0, 'kafka消费第100次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (53, 1, '登陆', 0, 'kafka消费第59次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (54, 1, '登陆', 0, 'kafka消费第75次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (55, 1, '登陆', 0, 'kafka消费第120次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (56, 1, '登陆', 0, 'kafka消费第94次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (57, 1, '登陆', 0, 'kafka消费第92次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (58, 1, '登陆', 0, 'kafka消费第77次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (59, 1, '登陆', 0, 'kafka消费第57次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (60, 1, '登陆', 0, 'kafka消费第89次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (61, 1, '登陆', 0, 'kafka消费第101次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (62, 1, '登陆', 0, 'kafka消费第80次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (63, 1, '登陆', 0, 'kafka消费第137次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (64, 1, '登陆', 0, 'kafka消费第134次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (65, 1, '登陆', 0, 'kafka消费第142次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (66, 1, '登陆', 0, 'kafka消费第78次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (67, 1, '登陆', 0, 'kafka消费第111次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (68, 1, '登陆', 0, 'kafka消费第133次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (69, 1, '登陆', 0, 'kafka消费第110次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (70, 1, '登陆', 0, 'kafka消费第88次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (71, 1, '登陆', 0, 'kafka消费第112次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (72, 1, '登陆', 0, 'kafka消费第84次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (73, 1, '登陆', 0, 'kafka消费第140次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (74, 1, '登陆', 0, 'kafka消费第119次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (75, 1, '登陆', 0, 'kafka消费第141次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (76, 1, '登陆', 0, 'kafka消费第73次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (77, 1, '登陆', 0, 'kafka消费第121次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (78, 1, '登陆', 0, 'kafka消费第115次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (79, 1, '登陆', 0, 'kafka消费第116次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (80, 1, '登陆', 0, 'kafka消费第66次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (81, 1, '登陆', 0, 'kafka消费第149次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (82, 1, '登陆', 0, 'kafka消费第122次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (83, 1, '登陆', 0, 'kafka消费第154次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (84, 1, '登陆', 0, 'kafka消费第130次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (85, 1, '登陆', 0, 'kafka消费第128次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (86, 1, '登陆', 0, 'kafka消费第131次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (87, 1, '登陆', 0, 'kafka消费第138次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (88, 1, '登陆', 0, 'kafka消费第167次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (89, 1, '登陆', 0, 'kafka消费第169次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (90, 1, '登陆', 0, 'kafka消费第143次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (91, 1, '登陆', 0, 'kafka消费第153次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (92, 1, '登陆', 0, 'kafka消费第155次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (93, 1, '登陆', 0, 'kafka消费第123次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (94, 1, '登陆', 0, 'kafka消费第125次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (95, 1, '登陆', 0, 'kafka消费第129次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (96, 1, '登陆', 0, 'kafka消费第135次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (97, 1, '登陆', 0, 'kafka消费第163次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (98, 1, '登陆', 0, 'kafka消费第166次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (99, 1, '登陆', 0, 'kafka消费第113次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (100, 1, '登陆', 0, 'kafka消费第132次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (101, 1, '登陆', 0, 'kafka消费第91次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (102, 1, '登陆', 0, 'kafka消费第145次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (103, 1, '登陆', 0, 'kafka消费第117次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (104, 1, '登陆', 0, 'kafka消费第178次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (105, 1, '登陆', 0, 'kafka消费第60次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (106, 1, '登陆', 0, 'kafka消费第175次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (107, 1, '登陆', 0, 'kafka消费第179次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (108, 1, '登陆', 0, 'kafka消费第118次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (109, 1, '登陆', 0, 'kafka消费第147次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (110, 1, '登陆', 0, 'kafka消费第148次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (111, 1, '登陆', 0, 'kafka消费第124次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (112, 1, '登陆', 0, 'kafka消费第174次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (113, 1, '登陆', 0, 'kafka消费第184次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (114, 1, '登陆', 0, 'kafka消费第151次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (115, 1, '登陆', 0, 'kafka消费第126次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (116, 1, '登陆', 0, 'kafka消费第150次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (117, 1, '登陆', 0, 'kafka消费第146次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (118, 1, '登陆', 0, 'kafka消费第183次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (119, 1, '登陆', 0, 'kafka消费第127次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (120, 1, '登陆', 0, 'kafka消费第156次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (121, 1, '登陆', 0, 'kafka消费第157次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (122, 1, '登陆', 0, 'kafka消费第162次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (123, 1, '登陆', 0, 'kafka消费第196次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (124, 1, '登陆', 0, 'kafka消费第193次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (125, 1, '登陆', 0, 'kafka消费第202次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (126, 1, '登陆', 0, 'kafka消费第172次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (127, 1, '登陆', 0, 'kafka消费第165次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (128, 1, '登陆', 0, 'kafka消费第152次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (129, 1, '登陆', 0, 'kafka消费第139次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (130, 1, '登陆', 0, 'kafka消费第164次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (131, 1, '登陆', 0, 'kafka消费第136次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (132, 1, '登陆', 0, 'kafka消费第194次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (133, 1, '登陆', 0, 'kafka消费第171次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (134, 1, '登陆', 0, 'kafka消费第181次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (135, 1, '登陆', 0, 'kafka消费第170次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (136, 1, '登陆', 0, 'kafka消费第200次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (137, 1, '登陆', 0, 'kafka消费第207次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (138, 1, '登陆', 0, 'kafka消费第177次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (139, 1, '登陆', 0, 'kafka消费第201次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (140, 1, '登陆', 0, 'kafka消费第186次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (141, 1, '登陆', 0, 'kafka消费第185次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (142, 1, '登陆', 0, 'kafka消费第182次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (143, 1, '登陆', 0, 'kafka消费第187次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (144, 1, '登陆', 0, 'kafka消费第158次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (145, 1, '登陆', 0, 'kafka消费第190次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (146, 1, '登陆', 0, 'kafka消费第161次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (147, 1, '登陆', 0, 'kafka消费第225次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (148, 1, '登陆', 0, 'kafka消费第224次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (149, 1, '登陆', 0, 'kafka消费第195次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (150, 1, '登陆', 0, 'kafka消费第199次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (151, 1, '登陆', 0, 'kafka消费第198次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (152, 1, '登陆', 0, 'kafka消费第216次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (153, 1, '登陆', 0, 'kafka消费第188次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (154, 1, '登陆', 0, 'kafka消费第144次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (155, 1, '登陆', 0, 'kafka消费第159次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (156, 1, '登陆', 0, 'kafka消费第217次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (157, 1, '登陆', 0, 'kafka消费第160次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (158, 1, '登陆', 0, 'kafka消费第191次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (159, 1, '登陆', 0, 'kafka消费第192次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (160, 1, '登陆', 0, 'kafka消费第56次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (161, 1, '登陆', 0, 'kafka消费第173次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (162, 1, '登陆', 0, 'kafka消费第176次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (163, 1, '登陆', 0, 'kafka消费第234次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (164, 1, '登陆', 0, 'kafka消费第203次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (165, 1, '登陆', 0, 'kafka消费第204次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (166, 1, '登陆', 0, 'kafka消费第236次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (167, 1, '登陆', 0, 'kafka消费第237次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (168, 1, '登陆', 0, 'kafka消费第205次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (169, 1, '登陆', 0, 'kafka消费第208次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (170, 1, '登陆', 0, 'kafka消费第180次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (171, 1, '登陆', 0, 'kafka消费第211次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (172, 1, '登陆', 0, 'kafka消费第206次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (173, 1, '登陆', 0, 'kafka消费第238次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (174, 1, '登陆', 0, 'kafka消费第241次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (175, 1, '登陆', 0, 'kafka消费第240次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (176, 1, '登陆', 0, 'kafka消费第210次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (177, 1, '登陆', 0, 'kafka消费第239次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (178, 1, '登陆', 0, 'kafka消费第209次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (179, 1, '登陆', 0, 'kafka消费第212次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (180, 1, '登陆', 0, 'kafka消费第222次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (181, 1, '登陆', 0, 'kafka消费第250次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (182, 1, '登陆', 0, 'kafka消费第221次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (183, 1, '登陆', 0, 'kafka消费第260次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (184, 1, '登陆', 0, 'kafka消费第267次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (185, 1, '登陆', 0, 'kafka消费第242次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (186, 1, '登陆', 0, 'kafka消费第253次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (187, 1, '登陆', 0, 'kafka消费第254次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (188, 1, '登陆', 0, 'kafka消费第259次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (189, 1, '登陆', 0, 'kafka消费第229次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (190, 1, '登陆', 0, 'kafka消费第226次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (191, 1, '登陆', 0, 'kafka消费第232次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (192, 1, '登陆', 0, 'kafka消费第243次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (193, 1, '登陆', 0, 'kafka消费第114次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (194, 1, '登陆', 0, 'kafka消费第168次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (195, 1, '登陆', 0, 'kafka消费第227次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (196, 1, '登陆', 0, 'kafka消费第197次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (197, 1, '登陆', 0, 'kafka消费第230次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (198, 1, '登陆', 0, 'kafka消费第231次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (199, 1, '登陆', 0, 'kafka消费第233次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (200, 1, '登陆', 0, 'kafka消费第270次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (201, 1, '登陆', 0, 'kafka消费第244次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (202, 1, '登陆', 0, 'kafka消费第189次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (203, 1, '登陆', 0, 'kafka消费第246次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (204, 1, '登陆', 0, 'kafka消费第247次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (205, 1, '登陆', 0, 'kafka消费第275次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (206, 1, '登陆', 0, 'kafka消费第283次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (207, 1, '登陆', 0, 'kafka消费第257次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (208, 1, '登陆', 0, 'kafka消费第248次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (209, 1, '登陆', 0, 'kafka消费第274次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (210, 1, '登陆', 0, 'kafka消费第276次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (211, 1, '登陆', 0, 'kafka消费第218次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (212, 1, '登陆', 0, 'kafka消费第277次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (213, 1, '登陆', 0, 'kafka消费第255次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (214, 1, '登陆', 0, 'kafka消费第249次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (215, 1, '登陆', 0, 'kafka消费第256次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (216, 1, '登陆', 0, 'kafka消费第219次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (217, 1, '登陆', 0, 'kafka消费第284次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (218, 1, '登陆', 0, 'kafka消费第228次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (219, 1, '登陆', 0, 'kafka消费第220次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (220, 1, '登陆', 0, 'kafka消费第263次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (221, 1, '登陆', 0, 'kafka消费第235次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (222, 1, '登陆', 0, 'kafka消费第264次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (223, 1, '登陆', 0, 'kafka消费第213次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (224, 1, '登陆', 0, 'kafka消费第269次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (225, 1, '登陆', 0, 'kafka消费第266次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (226, 1, '登陆', 0, 'kafka消费第215次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (227, 1, '登陆', 0, 'kafka消费第271次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (228, 1, '登陆', 0, 'kafka消费第245次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (229, 1, '登陆', 0, 'kafka消费第251次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (230, 1, '登陆', 0, 'kafka消费第280次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (231, 1, '登陆', 0, 'kafka消费第294次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (232, 1, '登陆', 0, 'kafka消费第265次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (233, 1, '登陆', 0, 'kafka消费第296次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (234, 1, '登陆', 0, 'kafka消费第272次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (235, 1, '登陆', 0, 'kafka消费第273次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (236, 1, '登陆', 0, 'kafka消费第223次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (237, 1, '登陆', 0, 'kafka消费第278次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (238, 1, '登陆', 0, 'kafka消费第279次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (239, 1, '登陆', 0, 'kafka消费第281次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (240, 1, '登陆', 0, 'kafka消费第252次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (241, 1, '登陆', 0, 'kafka消费第285次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (242, 1, '登陆', 0, 'kafka消费第282次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (243, 1, '登陆', 0, 'kafka消费第288次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (244, 1, '登陆', 0, 'kafka消费第289次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (245, 1, '登陆', 0, 'kafka消费第258次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (246, 1, '登陆', 0, 'kafka消费第313次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (247, 1, '登陆', 0, 'kafka消费第314次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (248, 1, '登陆', 0, 'kafka消费第299次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (249, 1, '登陆', 0, 'kafka消费第287次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (250, 1, '登陆', 0, 'kafka消费第261次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (251, 1, '登陆', 0, 'kafka消费第290次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (252, 1, '登陆', 0, 'kafka消费第292次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (253, 1, '登陆', 0, 'kafka消费第291次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (254, 1, '登陆', 0, 'kafka消费第293次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (255, 1, '登陆', 0, 'kafka消费第295次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (256, 1, '登陆', 0, 'kafka消费第214次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (257, 1, '登陆', 0, 'kafka消费第297次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (258, 1, '登陆', 0, 'kafka消费第268次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (259, 1, '登陆', 0, 'kafka消费第298次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (260, 1, '登陆', 0, 'kafka消费第300次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (261, 1, '登陆', 0, 'kafka消费第301次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (262, 1, '登陆', 0, 'kafka消费第330次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (263, 1, '登陆', 0, 'kafka消费第308次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (264, 1, '登陆', 0, 'kafka消费第304次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (265, 1, '登陆', 0, 'kafka消费第311次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (266, 1, '登陆', 0, 'kafka消费第333次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (267, 1, '登陆', 0, 'kafka消费第305次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (268, 1, '登陆', 0, 'kafka消费第307次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (269, 1, '登陆', 0, 'kafka消费第309次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (270, 1, '登陆', 0, 'kafka消费第310次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (271, 1, '登陆', 0, 'kafka消费第303次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (272, 1, '登陆', 0, 'kafka消费第286次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (273, 1, '登陆', 0, 'kafka消费第312次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (274, 1, '登陆', 0, 'kafka消费第262次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (275, 1, '登陆', 0, 'kafka消费第315次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (276, 1, '登陆', 0, 'kafka消费第346次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (277, 1, '登陆', 0, 'kafka消费第319次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (278, 1, '登陆', 0, 'kafka消费第345次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (279, 1, '登陆', 0, 'kafka消费第350次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (280, 1, '登陆', 0, 'kafka消费第321次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (281, 1, '登陆', 0, 'kafka消费第317次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (282, 1, '登陆', 0, 'kafka消费第347次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (283, 1, '登陆', 0, 'kafka消费第325次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (284, 1, '登陆', 0, 'kafka消费第351次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (285, 1, '登陆', 0, 'kafka消费第320次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (286, 1, '登陆', 0, 'kafka消费第318次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (287, 1, '登陆', 0, 'kafka消费第316次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (288, 1, '登陆', 0, 'kafka消费第348次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (289, 1, '登陆', 0, 'kafka消费第349次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (290, 1, '登陆', 0, 'kafka消费第357次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (291, 1, '登陆', 0, 'kafka消费第327次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (292, 1, '登陆', 0, 'kafka消费第332次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (293, 1, '登陆', 0, 'kafka消费第334次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (294, 1, '登陆', 0, 'kafka消费第364次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (295, 1, '登陆', 0, 'kafka消费第306次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (296, 1, '登陆', 0, 'kafka消费第336次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (297, 1, '登陆', 0, 'kafka消费第335次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (298, 1, '登陆', 0, 'kafka消费第368次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (299, 1, '登陆', 0, 'kafka消费第338次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (300, 1, '登陆', 0, 'kafka消费第377次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (301, 1, '登陆', 0, 'kafka消费第339次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (302, 1, '登陆', 0, 'kafka消费第365次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (303, 1, '登陆', 0, 'kafka消费第370次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (304, 1, '登陆', 0, 'kafka消费第367次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (305, 1, '登陆', 0, 'kafka消费第340次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (306, 1, '登陆', 0, 'kafka消费第337次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (307, 1, '登陆', 0, 'kafka消费第372次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (308, 1, '登陆', 0, 'kafka消费第366次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (309, 1, '登陆', 0, 'kafka消费第341次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (310, 1, '登陆', 0, 'kafka消费第371次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (311, 1, '登陆', 0, 'kafka消费第352次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (312, 1, '登陆', 0, 'kafka消费第356次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (313, 1, '登陆', 0, 'kafka消费第355次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (314, 1, '登陆', 0, 'kafka消费第358次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (315, 1, '登陆', 0, 'kafka消费第359次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (316, 1, '登陆', 0, 'kafka消费第360次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (317, 1, '登陆', 0, 'kafka消费第363次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (318, 1, '登陆', 0, 'kafka消费第369次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (319, 1, '登陆', 0, 'kafka消费第342次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (320, 1, '登陆', 0, 'kafka消费第343次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (321, 1, '登陆', 0, 'kafka消费第328次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (322, 1, '登陆', 0, 'kafka消费第329次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (323, 1, '登陆', 0, 'kafka消费第331次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (324, 1, '登陆', 0, 'kafka消费第302次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (325, 1, '登陆', 0, 'kafka消费第361次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (326, 1, '登陆', 0, 'kafka消费第362次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (327, 1, '登陆', 0, 'kafka消费第344次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (328, 1, '登陆', 0, 'kafka消费第373次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (329, 1, '登陆', 0, 'kafka消费第374次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (330, 1, '登陆', 0, 'kafka消费第322次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (331, 1, '登陆', 0, 'kafka消费第375次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (332, 1, '登陆', 0, 'kafka消费第376次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (333, 1, '登陆', 0, 'kafka消费第323次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (334, 1, '登陆', 0, 'kafka消费第324次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (335, 1, '登陆', 0, 'kafka消费第353次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (336, 1, '登陆', 0, 'kafka消费第379次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (337, 1, '登陆', 0, 'kafka消费第354次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (338, 1, '登陆', 0, 'kafka消费第326次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (339, 1, '登陆', 0, 'kafka消费第409次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (340, 1, '登陆', 0, 'kafka消费第382次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (341, 1, '登陆', 0, 'kafka消费第383次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (342, 1, '登陆', 0, 'kafka消费第384次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (343, 1, '登陆', 0, 'kafka消费第385次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (344, 1, '登陆', 0, 'kafka消费第386次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (345, 1, '登陆', 0, 'kafka消费第387次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (346, 1, '登陆', 0, 'kafka消费第388次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (347, 1, '登陆', 0, 'kafka消费第389次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (348, 1, '登陆', 0, 'kafka消费第378次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (349, 1, '登陆', 0, 'kafka消费第391次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (350, 1, '登陆', 0, 'kafka消费第410次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (351, 1, '登陆', 0, 'kafka消费第390次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (352, 1, '登陆', 0, 'kafka消费第392次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (353, 1, '登陆', 0, 'kafka消费第393次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (354, 1, '登陆', 0, 'kafka消费第394次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (355, 1, '登陆', 0, 'kafka消费第395次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (356, 1, '登陆', 0, 'kafka消费第425次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (357, 1, '登陆', 0, 'kafka消费第427次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (358, 1, '登陆', 0, 'kafka消费第428次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (359, 1, '登陆', 0, 'kafka消费第396次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (360, 1, '登陆', 0, 'kafka消费第426次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (361, 1, '登陆', 0, 'kafka消费第405次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (362, 1, '登陆', 0, 'kafka消费第397次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (363, 1, '登陆', 0, 'kafka消费第436次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (364, 1, '登陆', 0, 'kafka消费第407次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (365, 1, '登陆', 0, 'kafka消费第398次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (366, 1, '登陆', 0, 'kafka消费第399次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (367, 1, '登陆', 0, 'kafka消费第434次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (368, 1, '登陆', 0, 'kafka消费第430次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (369, 1, '登陆', 0, 'kafka消费第404次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (370, 1, '登陆', 0, 'kafka消费第435次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (371, 1, '登陆', 0, 'kafka消费第406次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (372, 1, '登陆', 0, 'kafka消费第412次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (373, 1, '登陆', 0, 'kafka消费第413次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (374, 1, '登陆', 0, 'kafka消费第453次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (375, 1, '登陆', 0, 'kafka消费第415次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (376, 1, '登陆', 0, 'kafka消费第420次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (377, 1, '登陆', 0, 'kafka消费第423次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (378, 1, '登陆', 0, 'kafka消费第400次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (379, 1, '登陆', 0, 'kafka消费第429次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (380, 1, '登陆', 0, 'kafka消费第458次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (381, 1, '登陆', 0, 'kafka消费第401次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (382, 1, '登陆', 0, 'kafka消费第414次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (383, 1, '登陆', 0, 'kafka消费第416次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (384, 1, '登陆', 0, 'kafka消费第447次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (385, 1, '登陆', 0, 'kafka消费第417次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (386, 1, '登陆', 0, 'kafka消费第448次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (387, 1, '登陆', 0, 'kafka消费第421次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (388, 1, '登陆', 0, 'kafka消费第422次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (389, 1, '登陆', 0, 'kafka消费第403次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (390, 1, '登陆', 0, 'kafka消费第432次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (391, 1, '登陆', 0, 'kafka消费第402次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (392, 1, '登陆', 0, 'kafka消费第433次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (393, 1, '登陆', 0, 'kafka消费第437次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (394, 1, '登陆', 0, 'kafka消费第438次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (395, 1, '登陆', 0, 'kafka消费第380次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (396, 1, '登陆', 0, 'kafka消费第408次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (397, 1, '登陆', 0, 'kafka消费第468次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (398, 1, '登陆', 0, 'kafka消费第381次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (399, 1, '登陆', 0, 'kafka消费第469次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (400, 1, '登陆', 0, 'kafka消费第443次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (401, 1, '登陆', 0, 'kafka消费第474次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (402, 1, '登陆', 0, 'kafka消费第478次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (403, 1, '登陆', 0, 'kafka消费第465次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (404, 1, '登陆', 0, 'kafka消费第466次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (405, 1, '登陆', 0, 'kafka消费第467次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (406, 1, '登陆', 0, 'kafka消费第411次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (407, 1, '登陆', 0, 'kafka消费第440次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (408, 1, '登陆', 0, 'kafka消费第441次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (409, 1, '登陆', 0, 'kafka消费第442次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (410, 1, '登陆', 0, 'kafka消费第418次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (411, 1, '登陆', 0, 'kafka消费第479次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (412, 1, '登陆', 0, 'kafka消费第480次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (413, 1, '登陆', 0, 'kafka消费第424次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (414, 1, '登陆', 0, 'kafka消费第461次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (415, 1, '登陆', 0, 'kafka消费第454次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (416, 1, '登陆', 0, 'kafka消费第455次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (417, 1, '登陆', 0, 'kafka消费第431次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (418, 1, '登陆', 0, 'kafka消费第459次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (419, 1, '登陆', 0, 'kafka消费第457次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (420, 1, '登陆', 0, 'kafka消费第462次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (421, 1, '登陆', 0, 'kafka消费第464次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (422, 1, '登陆', 0, 'kafka消费第463次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (423, 1, '登陆', 0, 'kafka消费第470次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (424, 1, '登陆', 0, 'kafka消费第485次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (425, 1, '登陆', 0, 'kafka消费第460次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (426, 1, '登陆', 0, 'kafka消费第471次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (427, 1, '登陆', 0, 'kafka消费第439次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (428, 1, '登陆', 0, 'kafka消费第472次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (429, 1, '登陆', 0, 'kafka消费第473次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (430, 1, '登陆', 0, 'kafka消费第444次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (431, 1, '登陆', 0, 'kafka消费第445次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (432, 1, '登陆', 0, 'kafka消费第475次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (433, 1, '登陆', 0, 'kafka消费第446次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (434, 1, '登陆', 0, 'kafka消费第486次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (435, 1, '登陆', 0, 'kafka消费第476次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (436, 1, '登陆', 0, 'kafka消费第504次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (437, 1, '登陆', 0, 'kafka消费第477次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (438, 1, '登陆', 0, 'kafka消费第419次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (439, 1, '登陆', 0, 'kafka消费第450次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (440, 1, '登陆', 0, 'kafka消费第451次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (441, 1, '登陆', 0, 'kafka消费第452次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (442, 1, '登陆', 0, 'kafka消费第482次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (443, 1, '登陆', 0, 'kafka消费第481次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (444, 1, '登陆', 0, 'kafka消费第483次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (445, 1, '登陆', 0, 'kafka消费第456次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (446, 1, '登陆', 0, 'kafka消费第484次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (447, 1, '登陆', 0, 'kafka消费第487次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (448, 1, '登陆', 0, 'kafka消费第488次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (449, 1, '登陆', 0, 'kafka消费第489次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (450, 1, '登陆', 0, 'kafka消费第490次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (451, 1, '登陆', 0, 'kafka消费第491次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (452, 1, '登陆', 0, 'kafka消费第492次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (453, 1, '登陆', 0, 'kafka消费第493次', '2020-01-13 20:05:42');
INSERT INTO `sys_logs` VALUES (454, 1, '登陆', 0, 'kafka消费第498次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (455, 1, '登陆', 0, 'kafka消费第497次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (456, 1, '登陆', 0, 'kafka消费第500次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (457, 1, '登陆', 0, 'kafka消费第495次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (458, 1, '登陆', 0, 'kafka消费第503次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (459, 1, '登陆', 0, 'kafka消费第449次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (460, 1, '登陆', 0, 'kafka消费第494次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (461, 1, '登陆', 0, 'kafka消费第506次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (462, 1, '登陆', 0, 'kafka消费第496次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (463, 1, '登陆', 0, 'kafka消费第512次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (464, 1, '登陆', 0, 'kafka消费第528次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (465, 1, '登陆', 0, 'kafka消费第502次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (466, 1, '登陆', 0, 'kafka消费第501次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (467, 1, '登陆', 0, 'kafka消费第505次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (468, 1, '登陆', 0, 'kafka消费第507次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (469, 1, '登陆', 0, 'kafka消费第508次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (470, 1, '登陆', 0, 'kafka消费第509次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (471, 1, '登陆', 0, 'kafka消费第510次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (472, 1, '登陆', 0, 'kafka消费第511次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (473, 1, '登陆', 0, 'kafka消费第513次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (474, 1, '登陆', 0, 'kafka消费第532次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (475, 1, '登陆', 0, 'kafka消费第516次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (476, 1, '登陆', 0, 'kafka消费第545次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (477, 1, '登陆', 0, 'kafka消费第515次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (478, 1, '登陆', 0, 'kafka消费第518次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (479, 1, '登陆', 0, 'kafka消费第546次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (480, 1, '登陆', 0, 'kafka消费第548次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (481, 1, '登陆', 0, 'kafka消费第517次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (482, 1, '登陆', 0, 'kafka消费第551次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (483, 1, '登陆', 0, 'kafka消费第514次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (484, 1, '登陆', 0, 'kafka消费第531次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (485, 1, '登陆', 0, 'kafka消费第549次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (486, 1, '登陆', 0, 'kafka消费第547次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (487, 1, '登陆', 0, 'kafka消费第520次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (488, 1, '登陆', 0, 'kafka消费第550次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (489, 1, '登陆', 0, 'kafka消费第521次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (490, 1, '登陆', 0, 'kafka消费第522次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (491, 1, '登陆', 0, 'kafka消费第499次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (492, 1, '登陆', 0, 'kafka消费第530次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (493, 1, '登陆', 0, 'kafka消费第533次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (494, 1, '登陆', 0, 'kafka消费第535次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (495, 1, '登陆', 0, 'kafka消费第566次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (496, 1, '登陆', 0, 'kafka消费第536次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (497, 1, '登陆', 0, 'kafka消费第538次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (498, 1, '登陆', 0, 'kafka消费第539次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (499, 1, '登陆', 0, 'kafka消费第568次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (500, 1, '登陆', 0, 'kafka消费第570次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (501, 1, '登陆', 0, 'kafka消费第540次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (502, 1, '登陆', 0, 'kafka消费第541次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (503, 1, '登陆', 0, 'kafka消费第569次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (504, 1, '登陆', 0, 'kafka消费第534次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (505, 1, '登陆', 0, 'kafka消费第571次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (506, 1, '登陆', 0, 'kafka消费第552次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (507, 1, '登陆', 0, 'kafka消费第576次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (508, 1, '登陆', 0, 'kafka消费第523次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (509, 1, '登陆', 0, 'kafka消费第577次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (510, 1, '登陆', 0, 'kafka消费第578次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (511, 1, '登陆', 0, 'kafka消费第524次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (512, 1, '登陆', 0, 'kafka消费第525次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (513, 1, '登陆', 0, 'kafka消费第555次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (514, 1, '登陆', 0, 'kafka消费第557次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (515, 1, '登陆', 0, 'kafka消费第527次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (516, 1, '登陆', 0, 'kafka消费第529次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (517, 1, '登陆', 0, 'kafka消费第559次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (518, 1, '登陆', 0, 'kafka消费第560次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (519, 1, '登陆', 0, 'kafka消费第561次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (520, 1, '登陆', 0, 'kafka消费第562次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (521, 1, '登陆', 0, 'kafka消费第563次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (522, 1, '登陆', 0, 'kafka消费第567次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (523, 1, '登陆', 0, 'kafka消费第542次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (524, 1, '登陆', 0, 'kafka消费第543次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (525, 1, '登陆', 0, 'kafka消费第573次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (526, 1, '登陆', 0, 'kafka消费第556次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (527, 1, '登陆', 0, 'kafka消费第558次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (528, 1, '登陆', 0, 'kafka消费第564次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (529, 1, '登陆', 0, 'kafka消费第565次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (530, 1, '登陆', 0, 'kafka消费第537次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (531, 1, '登陆', 0, 'kafka消费第572次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (532, 1, '登陆', 0, 'kafka消费第544次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (533, 1, '登陆', 0, 'kafka消费第574次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (534, 1, '登陆', 0, 'kafka消费第519次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (535, 1, '登陆', 0, 'kafka消费第604次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (536, 1, '登陆', 0, 'kafka消费第605次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (537, 1, '登陆', 0, 'kafka消费第575次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (538, 1, '登陆', 0, 'kafka消费第606次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (539, 1, '登陆', 0, 'kafka消费第553次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (540, 1, '登陆', 0, 'kafka消费第607次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (541, 1, '登陆', 0, 'kafka消费第579次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (542, 1, '登陆', 0, 'kafka消费第581次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (543, 1, '登陆', 0, 'kafka消费第580次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (544, 1, '登陆', 0, 'kafka消费第609次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (545, 1, '登陆', 0, 'kafka消费第611次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (546, 1, '登陆', 0, 'kafka消费第610次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (547, 1, '登陆', 0, 'kafka消费第526次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (548, 1, '登陆', 0, 'kafka消费第582次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (549, 1, '登陆', 0, 'kafka消费第608次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (550, 1, '登陆', 0, 'kafka消费第583次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (551, 1, '登陆', 0, 'kafka消费第612次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (552, 1, '登陆', 0, 'kafka消费第554次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (553, 1, '登陆', 0, 'kafka消费第593次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (554, 1, '登陆', 0, 'kafka消费第597次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (555, 1, '登陆', 0, 'kafka消费第627次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (556, 1, '登陆', 0, 'kafka消费第626次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (557, 1, '登陆', 0, 'kafka消费第594次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (558, 1, '登陆', 0, 'kafka消费第596次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (559, 1, '登陆', 0, 'kafka消费第632次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (560, 1, '登陆', 0, 'kafka消费第624次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (561, 1, '登陆', 0, 'kafka消费第598次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (562, 1, '登陆', 0, 'kafka消费第631次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (563, 1, '登陆', 0, 'kafka消费第603次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (564, 1, '登陆', 0, 'kafka消费第613次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (565, 1, '登陆', 0, 'kafka消费第637次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (566, 1, '登陆', 0, 'kafka消费第602次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (567, 1, '登陆', 0, 'kafka消费第616次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (568, 1, '登陆', 0, 'kafka消费第633次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (569, 1, '登陆', 0, 'kafka消费第601次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (570, 1, '登陆', 0, 'kafka消费第634次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (571, 1, '登陆', 0, 'kafka消费第640次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (572, 1, '登陆', 0, 'kafka消费第584次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (573, 1, '登陆', 0, 'kafka消费第618次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (574, 1, '登陆', 0, 'kafka消费第623次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (575, 1, '登陆', 0, 'kafka消费第595次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (576, 1, '登陆', 0, 'kafka消费第617次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (577, 1, '登陆', 0, 'kafka消费第619次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (578, 1, '登陆', 0, 'kafka消费第589次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (579, 1, '登陆', 0, 'kafka消费第647次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (580, 1, '登陆', 0, 'kafka消费第620次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (581, 1, '登陆', 0, 'kafka消费第590次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (582, 1, '登陆', 0, 'kafka消费第621次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (583, 1, '登陆', 0, 'kafka消费第648次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (584, 1, '登陆', 0, 'kafka消费第591次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (585, 1, '登陆', 0, 'kafka消费第649次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (586, 1, '登陆', 0, 'kafka消费第628次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (587, 1, '登陆', 0, 'kafka消费第599次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (588, 1, '登陆', 0, 'kafka消费第629次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (589, 1, '登陆', 0, 'kafka消费第600次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (590, 1, '登陆', 0, 'kafka消费第630次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (591, 1, '登陆', 0, 'kafka消费第614次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (592, 1, '登陆', 0, 'kafka消费第635次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (593, 1, '登陆', 0, 'kafka消费第636次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (594, 1, '登陆', 0, 'kafka消费第585次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (595, 1, '登陆', 0, 'kafka消费第670次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (596, 1, '登陆', 0, 'kafka消费第645次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (597, 1, '登陆', 0, 'kafka消费第650次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (598, 1, '登陆', 0, 'kafka消费第622次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (599, 1, '登陆', 0, 'kafka消费第651次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (600, 1, '登陆', 0, 'kafka消费第653次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (601, 1, '登陆', 0, 'kafka消费第615次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (602, 1, '登陆', 0, 'kafka消费第638次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (603, 1, '登陆', 0, 'kafka消费第586次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (604, 1, '登陆', 0, 'kafka消费第639次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (605, 1, '登陆', 0, 'kafka消费第587次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (606, 1, '登陆', 0, 'kafka消费第588次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (607, 1, '登陆', 0, 'kafka消费第641次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (608, 1, '登陆', 0, 'kafka消费第643次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (609, 1, '登陆', 0, 'kafka消费第644次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (610, 1, '登陆', 0, 'kafka消费第646次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (611, 1, '登陆', 0, 'kafka消费第592次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (612, 1, '登陆', 0, 'kafka消费第652次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (613, 1, '登陆', 0, 'kafka消费第625次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (614, 1, '登陆', 0, 'kafka消费第661次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (615, 1, '登陆', 0, 'kafka消费第666次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (616, 1, '登陆', 0, 'kafka消费第654次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (617, 1, '登陆', 0, 'kafka消费第684次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (618, 1, '登陆', 0, 'kafka消费第655次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (619, 1, '登陆', 0, 'kafka消费第656次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (620, 1, '登陆', 0, 'kafka消费第658次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (621, 1, '登陆', 0, 'kafka消费第659次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (622, 1, '登陆', 0, 'kafka消费第689次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (623, 1, '登陆', 0, 'kafka消费第662次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (624, 1, '登陆', 0, 'kafka消费第663次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (625, 1, '登陆', 0, 'kafka消费第664次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (626, 1, '登陆', 0, 'kafka消费第665次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (627, 1, '登陆', 0, 'kafka消费第667次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (628, 1, '登陆', 0, 'kafka消费第668次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (629, 1, '登陆', 0, 'kafka消费第669次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (630, 1, '登陆', 0, 'kafka消费第642次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (631, 1, '登陆', 0, 'kafka消费第671次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (632, 1, '登陆', 0, 'kafka消费第672次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (633, 1, '登陆', 0, 'kafka消费第673次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (634, 1, '登陆', 0, 'kafka消费第679次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (635, 1, '登陆', 0, 'kafka消费第674次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (636, 1, '登陆', 0, 'kafka消费第676次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (637, 1, '登陆', 0, 'kafka消费第675次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (638, 1, '登陆', 0, 'kafka消费第677次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (639, 1, '登陆', 0, 'kafka消费第678次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (640, 1, '登陆', 0, 'kafka消费第680次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (641, 1, '登陆', 0, 'kafka消费第681次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (642, 1, '登陆', 0, 'kafka消费第714次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (643, 1, '登陆', 0, 'kafka消费第713次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (644, 1, '登陆', 0, 'kafka消费第682次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (645, 1, '登陆', 0, 'kafka消费第657次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (646, 1, '登陆', 0, 'kafka消费第683次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (647, 1, '登陆', 0, 'kafka消费第687次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (648, 1, '登陆', 0, 'kafka消费第712次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (649, 1, '登陆', 0, 'kafka消费第685次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (650, 1, '登陆', 0, 'kafka消费第717次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (651, 1, '登陆', 0, 'kafka消费第688次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (652, 1, '登陆', 0, 'kafka消费第715次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (653, 1, '登陆', 0, 'kafka消费第716次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (654, 1, '登陆', 0, 'kafka消费第660次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (655, 1, '登陆', 0, 'kafka消费第686次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (656, 1, '登陆', 0, 'kafka消费第718次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (657, 1, '登陆', 0, 'kafka消费第691次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (658, 1, '登陆', 0, 'kafka消费第719次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (659, 1, '登陆', 0, 'kafka消费第690次', '2020-01-13 20:05:43');
INSERT INTO `sys_logs` VALUES (660, 1, '登陆', 0, 'kafka消费第700次', '2020-01-13 20:05:43');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `css` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `href` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, '用户管理', 'fa-users', 'pages/user/userList.html', 1, '', 1);
INSERT INTO `sys_permission` VALUES (2, 1, '用户查询', 'fa-user', 'pages/user/userList.html', 1, '', 2);
INSERT INTO `sys_permission` VALUES (3, 2, '查询', '', '', 2, 'sys:user:query', 100);
INSERT INTO `sys_permission` VALUES (4, 2, '新增', '', '', 2, 'sys:user:add', 100);
INSERT INTO `sys_permission` VALUES (6, 0, '修改密码', 'fa-pencil-square-o', 'pages/user/changePassword.html', 1, 'sys:user:password', 4);
INSERT INTO `sys_permission` VALUES (7, 0, '系统设置', 'fa-gears', '', 1, '', 5);
INSERT INTO `sys_permission` VALUES (8, 7, '菜单', 'fa-cog', 'pages/menu/menuList.html', 1, '', 6);
INSERT INTO `sys_permission` VALUES (9, 8, '查询', '', '', 2, 'sys:menu:query', 100);
INSERT INTO `sys_permission` VALUES (10, 8, '新增', '', '', 2, 'sys:menu:add', 100);
INSERT INTO `sys_permission` VALUES (11, 8, '删除', '', '', 2, 'sys:menu:del', 100);
INSERT INTO `sys_permission` VALUES (12, 7, '角色', 'fa-user-secret', 'pages/role/roleList.html', 1, '', 7);
INSERT INTO `sys_permission` VALUES (13, 12, '查询', '', '', 2, 'sys:role:query', 100);
INSERT INTO `sys_permission` VALUES (14, 12, '新增', '', '', 2, 'sys:role:add', 100);
INSERT INTO `sys_permission` VALUES (15, 12, '删除', '', '', 2, 'sys:role:del', 100);
INSERT INTO `sys_permission` VALUES (16, 0, '文件管理', 'fa-folder-open', 'pages/file/fileList.html', 1, '', 8);
INSERT INTO `sys_permission` VALUES (17, 16, '查询', '', '', 2, 'sys:file:query', 100);
INSERT INTO `sys_permission` VALUES (18, 16, '删除', '', '', 2, 'sys:file:del', 100);
INSERT INTO `sys_permission` VALUES (19, 0, '数据源监控', 'fa-eye', 'druid/index.html', 1, '', 9);
INSERT INTO `sys_permission` VALUES (20, 0, '接口swagger', 'fa-file-pdf-o', 'swagger-ui.html', 1, '', 10);
INSERT INTO `sys_permission` VALUES (21, 0, '代码生成', 'fa-wrench', 'pages/generate/edit.html', 1, 'generate:edit', 11);
INSERT INTO `sys_permission` VALUES (22, 0, '公告管理', 'fa-book', 'pages/notice/noticeList.html', 1, '', 12);
INSERT INTO `sys_permission` VALUES (23, 22, '查询', '', '', 2, 'notice:query', 100);
INSERT INTO `sys_permission` VALUES (24, 22, '添加', '', '', 2, 'notice:add', 100);
INSERT INTO `sys_permission` VALUES (25, 22, '删除', '', '', 2, 'notice:del', 100);
INSERT INTO `sys_permission` VALUES (26, 0, '日志查询', 'fa-reorder', 'pages/log/logList.html', 1, 'sys:log:query', 13);
INSERT INTO `sys_permission` VALUES (27, 0, '邮件管理', 'fa-envelope', 'pages/mail/mailList.html', 1, '', 14);
INSERT INTO `sys_permission` VALUES (28, 27, '发送邮件', '', '', 2, 'mail:send', 100);
INSERT INTO `sys_permission` VALUES (29, 27, '查询', '', '', 2, 'mail:all:query', 100);
INSERT INTO `sys_permission` VALUES (30, 0, '定时任务管理', 'fa-tasks', 'pages/job/jobList.html', 1, '', 15);
INSERT INTO `sys_permission` VALUES (31, 30, '查询', '', '', 2, 'job:query', 100);
INSERT INTO `sys_permission` VALUES (32, 30, '新增', '', '', 2, 'job:add', 100);
INSERT INTO `sys_permission` VALUES (33, 30, '删除', '', '', 2, 'job:del', 100);
INSERT INTO `sys_permission` VALUES (34, 0, 'excel导出', 'fa-arrow-circle-down', 'pages/excel/sql.html', 1, '', 16);
INSERT INTO `sys_permission` VALUES (35, 34, '导出', '', '', 2, 'excel:down', 100);
INSERT INTO `sys_permission` VALUES (36, 34, '页面显示数据', '', '', 2, 'excel:show:datas', 100);
INSERT INTO `sys_permission` VALUES (37, 0, '字典管理', 'fa-reddit', 'pages/dict/dictList.html', 1, '', 17);
INSERT INTO `sys_permission` VALUES (38, 37, '查询', '', '', 2, 'dict:query', 100);
INSERT INTO `sys_permission` VALUES (39, 37, '新增', '', '', 2, 'dict:add', 100);
INSERT INTO `sys_permission` VALUES (40, 37, '删除', '', '', 2, 'dict:del', 100);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'ADMIN', '管理员', '2017-05-01 13:25:39', '2017-10-05 21:59:18');
INSERT INTO `sys_role` VALUES (2, 'USER', '', '2017-08-01 21:47:31', '2020-01-16 23:59:20');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `roleId` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`, `permissionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (1, 2);
INSERT INTO `sys_role_permission` VALUES (1, 3);
INSERT INTO `sys_role_permission` VALUES (1, 4);
INSERT INTO `sys_role_permission` VALUES (1, 6);
INSERT INTO `sys_role_permission` VALUES (1, 7);
INSERT INTO `sys_role_permission` VALUES (1, 8);
INSERT INTO `sys_role_permission` VALUES (1, 9);
INSERT INTO `sys_role_permission` VALUES (1, 10);
INSERT INTO `sys_role_permission` VALUES (1, 11);
INSERT INTO `sys_role_permission` VALUES (1, 12);
INSERT INTO `sys_role_permission` VALUES (1, 13);
INSERT INTO `sys_role_permission` VALUES (1, 14);
INSERT INTO `sys_role_permission` VALUES (1, 15);
INSERT INTO `sys_role_permission` VALUES (1, 16);
INSERT INTO `sys_role_permission` VALUES (1, 17);
INSERT INTO `sys_role_permission` VALUES (1, 18);
INSERT INTO `sys_role_permission` VALUES (1, 19);
INSERT INTO `sys_role_permission` VALUES (1, 20);
INSERT INTO `sys_role_permission` VALUES (1, 21);
INSERT INTO `sys_role_permission` VALUES (1, 22);
INSERT INTO `sys_role_permission` VALUES (1, 23);
INSERT INTO `sys_role_permission` VALUES (1, 24);
INSERT INTO `sys_role_permission` VALUES (1, 25);
INSERT INTO `sys_role_permission` VALUES (1, 26);
INSERT INTO `sys_role_permission` VALUES (1, 27);
INSERT INTO `sys_role_permission` VALUES (1, 28);
INSERT INTO `sys_role_permission` VALUES (1, 29);
INSERT INTO `sys_role_permission` VALUES (1, 30);
INSERT INTO `sys_role_permission` VALUES (1, 31);
INSERT INTO `sys_role_permission` VALUES (1, 32);
INSERT INTO `sys_role_permission` VALUES (1, 33);
INSERT INTO `sys_role_permission` VALUES (1, 34);
INSERT INTO `sys_role_permission` VALUES (1, 35);
INSERT INTO `sys_role_permission` VALUES (1, 36);
INSERT INTO `sys_role_permission` VALUES (1, 37);
INSERT INTO `sys_role_permission` VALUES (1, 38);
INSERT INTO `sys_role_permission` VALUES (1, 39);
INSERT INTO `sys_role_permission` VALUES (1, 40);
INSERT INTO `sys_role_permission` VALUES (2, 6);
INSERT INTO `sys_role_permission` VALUES (2, 7);
INSERT INTO `sys_role_permission` VALUES (2, 8);
INSERT INTO `sys_role_permission` VALUES (2, 9);
INSERT INTO `sys_role_permission` VALUES (2, 10);
INSERT INTO `sys_role_permission` VALUES (2, 11);
INSERT INTO `sys_role_permission` VALUES (2, 12);
INSERT INTO `sys_role_permission` VALUES (2, 13);
INSERT INTO `sys_role_permission` VALUES (2, 14);
INSERT INTO `sys_role_permission` VALUES (2, 15);
INSERT INTO `sys_role_permission` VALUES (2, 16);
INSERT INTO `sys_role_permission` VALUES (2, 17);
INSERT INTO `sys_role_permission` VALUES (2, 18);
INSERT INTO `sys_role_permission` VALUES (2, 19);
INSERT INTO `sys_role_permission` VALUES (2, 20);
INSERT INTO `sys_role_permission` VALUES (2, 21);
INSERT INTO `sys_role_permission` VALUES (2, 22);
INSERT INTO `sys_role_permission` VALUES (2, 23);
INSERT INTO `sys_role_permission` VALUES (2, 24);
INSERT INTO `sys_role_permission` VALUES (2, 25);
INSERT INTO `sys_role_permission` VALUES (2, 30);
INSERT INTO `sys_role_permission` VALUES (2, 31);
INSERT INTO `sys_role_permission` VALUES (2, 34);
INSERT INTO `sys_role_permission` VALUES (2, 36);

-- ----------------------------
-- Table structure for sys_role_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_user`;
CREATE TABLE `sys_role_user`  (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`, `roleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_user
-- ----------------------------
INSERT INTO `sys_role_user` VALUES (1, 1);
INSERT INTO `sys_role_user` VALUES (2, 2);
INSERT INTO `sys_role_user` VALUES (3, 1);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `headImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `telephone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `sex` tinyint(1) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$iYM/H7TrSaLs7XyIWQdGwe1xf4cdmt3nwMja6RT0wxG5YY1RjN0EK', '管理员', NULL, '', '', '', '1998-07-01', 0, 1, '2017-04-10 15:21:38', '2017-07-06 09:20:19');
INSERT INTO `sys_user` VALUES (2, 'user', '$2a$10$ooGb4wjT7Hg3zgU2RhZp6eVu3jvG29i/U4L6VRwiZZ4.DZ0OOEAHu', '用户', NULL, '', '', '', NULL, 1, 1, '2017-08-01 21:47:18', '2017-08-01 21:47:18');
INSERT INTO `sys_user` VALUES (3, 'kint', '$2a$10$oLvTVjq9c4zH/Val4F1daObtnrBeGddNVT9Pagr4ncIfk8joaK2f.', '看', NULL, '15898959639', '17662626', 'shenjian26@hotmail.com', '2020-01-16', 1, 1, '2020-01-16 00:02:21', '2020-01-16 00:02:21');

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `k` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `val` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `type`(`type`, `k`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES (1, 'sex', '0', '女', '2017-11-17 09:58:24', '2017-11-18 14:21:05');
INSERT INTO `t_dict` VALUES (2, 'sex', '1', '男', '2017-11-17 10:03:46', '2017-11-17 10:03:46');
INSERT INTO `t_dict` VALUES (3, 'userStatus', '0', '无效', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (4, 'userStatus', '1', '正常', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (5, 'userStatus', '2', '锁定', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (6, 'noticeStatus', '0', '草稿', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (7, 'noticeStatus', '1', '发布', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (8, 'isRead', '0', '未读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');
INSERT INTO `t_dict` VALUES (9, 'isRead', '1', '已读', '2017-11-17 16:26:06', '2017-11-17 16:26:09');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cron` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `springBeanName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'springBean名',
  `methodName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '方法名',
  `isSysJob` tinyint(1) NOT NULL COMMENT '是否是系统job',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jobName`(`jobName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_mail
-- ----------------------------
DROP TABLE IF EXISTS `t_mail`;
CREATE TABLE `t_mail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '发送人',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '正文',
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_mail_to
-- ----------------------------
DROP TABLE IF EXISTS `t_mail_to`;
CREATE TABLE `t_mail_to`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` int(11) NOT NULL,
  `toUser` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1成功，0失败',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `createTime` datetime(0) NOT NULL,
  `updateTime` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `t_notice_read`;
CREATE TABLE `t_notice_read`  (
  `noticeId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createTime` datetime(0) NOT NULL,
  PRIMARY KEY (`noticeId`, `userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
