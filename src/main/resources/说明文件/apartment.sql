/*
Navicat MySQL Data Transfer

Source Server         : linux_mysql
Source Server Version : 50505
Source Host           : 192.168.2.21:3306
Source Database       : scpm

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-12-17 18:43:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for apartment
-- ----------------------------
DROP TABLE IF EXISTS `apartment`;
CREATE TABLE `apartment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `floor_number` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `room_num` varchar(255) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `clas_id` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `total_num` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `room_header` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of apartment
-- ----------------------------
INSERT INTO `apartment` VALUES ('1', '01', '1', '1', '1', '01', null, null, '主要负责的三年级的', '8', '7', '2017-06-05 10:07:34', '乔渝');

-- ----------------------------
-- Table structure for clas
-- ----------------------------
DROP TABLE IF EXISTS `clas`;
CREATE TABLE `clas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `deep` int(11) DEFAULT 0,
  `clas_type` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clas
-- ----------------------------
INSERT INTO `clas` VALUES ('1', '一年级', '1', '1', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('2', '二年级', '1', '2', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('3', '三年级', '1', '3', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('4', '四年级', '1', '4', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('5', '五年级', '1', '5', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('6', '六年级', '1', '6', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('8', '1班', '1', '2', '7', '2017-06-05 09:42:21', '7', '2017-06-05 09:42:21', '1', '2', '2');
INSERT INTO `clas` VALUES ('9', '2班', '1', null, '7', '2017-06-05 09:51:06', '7', '2017-06-05 09:51:06', '1', '2', '2');
INSERT INTO `clas` VALUES ('10', '3班', '1', null, '7', '2017-06-05 09:51:24', '7', '2017-06-05 09:51:24', '1', '2', '2');
INSERT INTO `clas` VALUES ('11', '4班', '1', null, '7', '2017-06-05 09:58:30', '7', '2017-06-05 09:58:30', '1', '2', '2');
INSERT INTO `clas` VALUES ('12', '1班', '1', null, '7', '2017-06-05 10:01:07', '7', '2017-06-05 10:01:07', '2', '2', '2');
INSERT INTO `clas` VALUES ('13', '2班', '1', null, '7', '2017-06-05 10:01:15', '7', '2017-06-05 10:01:15', '2', '2', '2');
INSERT INTO `clas` VALUES ('14', '3班', '1', null, '7', '2017-06-05 10:02:14', '7', '2017-06-05 10:02:14', '2', '2', '2');
INSERT INTO `clas` VALUES ('15', '4班', '1', null, '7', '2017-06-05 10:02:22', '7', '2017-06-05 10:02:22', '2', '2', '2');
INSERT INTO `clas` VALUES ('16', '5班', '1', null, '7', '2017-06-05 10:02:30', '7', '2017-06-05 10:02:30', '2', '2', '2');
INSERT INTO `clas` VALUES ('17', '1班', '1', null, '7', '2017-06-05 12:25:45', '7', '2017-06-05 12:25:45', '3', '2', '2');
INSERT INTO `clas` VALUES ('18', '1班', '1', null, '7', '2017-06-05 12:25:50', '7', '2017-06-05 12:25:50', '4', '2', '2');
INSERT INTO `clas` VALUES ('19', '1班', '1', null, '7', '2017-06-05 12:25:54', '7', '2017-06-05 12:25:54', '5', '2', '2');
INSERT INTO `clas` VALUES ('20', '1班', '1', null, '7', '2017-06-05 12:25:57', '7', '2017-06-05 12:25:57', '6', '2', '2');
INSERT INTO `clas` VALUES ('21', '一年级', '2', '1', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('22', '二年级', '2', '2', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('23', '三年级', '2', '3', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('24', '四年级', '2', '4', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('25', '五年级', '2', '5', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('26', '六年级', '2', '6', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('27', '1班', '2', null, '21', '2017-08-01 19:38:41', '21', '2017-08-01 19:38:41', '21', '2', '2');
INSERT INTO `clas` VALUES ('28', '2班', '2', null, '21', '2017-08-01 19:38:50', '21', '2017-08-01 19:38:50', '21', '2', '2');
INSERT INTO `clas` VALUES ('29', '1班', '2', null, '21', '2017-08-01 19:38:59', '21', '2017-08-01 19:38:59', '22', '2', '2');
INSERT INTO `clas` VALUES ('30', '3班', '2', null, '21', '2017-08-01 19:39:13', '21', '2017-08-01 19:39:13', '22', '2', '2');
INSERT INTO `clas` VALUES ('31', '1班', '2', null, '21', '2017-08-01 19:39:22', '21', '2017-08-01 19:39:22', '23', '2', '2');
INSERT INTO `clas` VALUES ('32', '1班', '2', null, '21', '2017-08-01 19:39:28', '21', '2017-08-01 19:39:28', '24', '2', '2');
INSERT INTO `clas` VALUES ('33', '2班', '2', null, '21', '2017-08-01 19:39:36', '21', '2017-08-01 19:39:36', '25', '2', '2');
INSERT INTO `clas` VALUES ('34', '1班', '2', null, '21', '2017-08-01 19:39:44', '21', '2017-08-01 19:39:44', '26', '2', '2');
INSERT INTO `clas` VALUES ('35', '一年级', '3', '1', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('36', '二年级', '3', '2', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('37', '三年级', '3', '3', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('38', '四年级', '3', '4', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('39', '五年级', '3', '5', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('40', '六年级', '3', '6', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('41', '一年级', '4', '1', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('42', '二年级', '4', '2', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('43', '三年级', '4', '3', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('44', '四年级', '4', '4', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('45', '五年级', '4', '5', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('46', '六年级', '4', '6', null, null, null, null, '0', '1', '1');
INSERT INTO `clas` VALUES ('47', '1', '4', null, '27', '2017-10-31 14:47:31', '27', '2017-10-31 14:47:31', '41', '2', '2');
INSERT INTO `clas` VALUES ('48', '2', '4', null, '27', '2017-10-31 14:47:37', '27', '2017-10-31 14:47:37', '41', '2', '2');
INSERT INTO `clas` VALUES ('49', '1', '4', null, '27', '2017-10-31 14:47:42', '27', '2017-10-31 14:47:42', '42', '2', '2');
INSERT INTO `clas` VALUES ('50', '2', '4', null, '27', '2017-10-31 14:47:45', '27', '2017-10-31 14:47:45', '42', '2', '2');
INSERT INTO `clas` VALUES ('51', '1', '4', null, '27', '2017-10-31 14:47:49', '27', '2017-10-31 14:47:49', '43', '2', '2');
INSERT INTO `clas` VALUES ('52', '2', '4', null, '27', '2017-10-31 14:47:53', '27', '2017-10-31 14:47:53', '43', '2', '2');
INSERT INTO `clas` VALUES ('53', '1', '4', null, '27', '2017-10-31 14:47:57', '27', '2017-10-31 14:47:57', '44', '2', '2');
INSERT INTO `clas` VALUES ('54', '2', '4', null, '27', '2017-10-31 14:48:01', '27', '2017-10-31 14:48:01', '44', '2', '2');
INSERT INTO `clas` VALUES ('55', '3', '4', null, '27', '2017-10-31 14:48:05', '27', '2017-10-31 14:48:05', '44', '2', '2');
INSERT INTO `clas` VALUES ('56', '1', '4', null, '27', '2017-10-31 14:48:09', '27', '2017-10-31 14:48:09', '45', '2', '2');
INSERT INTO `clas` VALUES ('57', '1', '4', null, '27', '2017-10-31 14:48:12', '27', '2017-10-31 14:48:12', '46', '2', '2');

-- ----------------------------
-- Table structure for clas_info
-- ----------------------------
DROP TABLE IF EXISTS `clas_info`;
CREATE TABLE `clas_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(22) DEFAULT NULL COMMENT '班主任',
  `stu_num` int(11) DEFAULT NULL COMMENT '班级人数',
  `clas` int(11) DEFAULT NULL COMMENT '班号',
  `clas_type` varchar(20) DEFAULT NULL COMMENT '班级类别',
  `create_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '建班年月',
  `class_chedule_id` varchar(20) DEFAULT NULL COMMENT '课程表',
  `honor` varchar(20) DEFAULT NULL COMMENT '班级荣誉',
  `clas_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clas_info
-- ----------------------------
INSERT INTO `clas_info` VALUES ('3', null, '50', null, '12', '2018-02-02 00:00:00', null, '12', '8');
INSERT INTO `clas_info` VALUES ('4', null, '1', null, '优秀', '2018-02-02 00:00:00', null, '年级第一', '12');

-- ----------------------------
-- Table structure for clas_table
-- ----------------------------
DROP TABLE IF EXISTS `clas_table`;
CREATE TABLE `clas_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clas_id` int(11) DEFAULT NULL,
  `start_ho` int(11) DEFAULT NULL,
  `start_mi` int(11) DEFAULT NULL,
  `end_ho` int(11) DEFAULT NULL,
  `end_mi` int(11) DEFAULT NULL,
  `day_mo` varchar(255) DEFAULT NULL,
  `day_tu` varchar(255) DEFAULT NULL,
  `day_we` varchar(255) DEFAULT NULL,
  `day_th` varchar(255) DEFAULT NULL,
  `day_fr` varchar(255) DEFAULT NULL,
  `day_sa` varchar(255) DEFAULT NULL,
  `day_sun` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clas_table
-- ----------------------------
INSERT INTO `clas_table` VALUES ('12', '8', '7', '30', '8', '0', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('13', '8', '8', '20', '9', '0', 'yw', 'sx', 'yw', 'sx', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('14', '8', '9', '10', '9', '50', 'sx', 'yw', 'sx', 'yw', 'sx', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('15', '8', '10', '10', '10', '50', 'ty', 'ms', 'ye', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('16', '8', '11', '0', '11', '40', 'ye', 'ye', 'ty', 'ty', 'ms', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('17', '8', '14', '20', '15', '0', 'yw', 'sx', 'yw', 'sx', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('18', '8', '15', '10', '15', '40', 'ty', 'ty', 'ty', 'ye', 'ty', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('19', '8', '15', '50', '16', '30', 'ye', 'ye', 'ye', 'ye', 'ms', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('20', '8', '0', '0', '0', '0', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('21', '8', '0', '0', '0', '0', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('22', '8', '0', '0', '0', '0', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('23', '9', '1', '0', '1', '30', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('24', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('25', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('26', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('27', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('28', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('29', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('30', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('31', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('32', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');
INSERT INTO `clas_table` VALUES ('33', '9', null, null, null, null, 'yw', 'yw', 'yw', 'yw', 'yw', 'yw', 'yw');

-- ----------------------------
-- Table structure for clas_teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `clas_teacher_info`;
CREATE TABLE `clas_teacher_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `role_msg` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clas_teacher_info
-- ----------------------------
INSERT INTO `clas_teacher_info` VALUES ('1', '8', '1', '班主任', '一些没用信息');
INSERT INTO `clas_teacher_info` VALUES ('3', '8', '23', '语文教师', null);

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(2000) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `charge_person` varchar(2000) DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('5', '一年级第一次考试', '1', '实验小学', '乔石鹏', '2015-05-05 00:00:00', '2017-06-08 09:26:24', '20', null, null, 'T', '暂无说明');
INSERT INTO `exam` VALUES ('6', '一年级第二次考试', '1', '本校区', '乔石鹏', '2017-07-25 00:00:00', '2017-07-25 18:57:46', '20', null, null, 'T', '暂无说明');
INSERT INTO `exam` VALUES ('7', '一年级第三次考试', '1', '本校区', '乔石鹏', '2017-07-25 00:00:00', '2017-07-25 18:58:16', '20', null, null, 'T', '暂无说明');
INSERT INTO `exam` VALUES ('8', '一年级第四次考试', '1', '乔石鹏', '乔石鹏', '2017-07-25 00:00:00', '2017-07-25 18:58:46', '20', null, null, 'T', '暂无说明');

-- ----------------------------
-- Table structure for exam_clas
-- ----------------------------
DROP TABLE IF EXISTS `exam_clas`;
CREATE TABLE `exam_clas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clas_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `subject_remark` varchar(2500) DEFAULT NULL,
  `remark` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_clas
-- ----------------------------
INSERT INTO `exam_clas` VALUES ('5', '8', '5', null, null);
INSERT INTO `exam_clas` VALUES ('6', '9', '5', null, null);
INSERT INTO `exam_clas` VALUES ('7', '10', '5', null, null);
INSERT INTO `exam_clas` VALUES ('8', '11', '5', null, null);

-- ----------------------------
-- Table structure for exam_score
-- ----------------------------
DROP TABLE IF EXISTS `exam_score`;
CREATE TABLE `exam_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL,
  `clas_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `yw` double DEFAULT NULL,
  `sx` double DEFAULT NULL,
  `yy` double DEFAULT NULL,
  `zr` double DEFAULT NULL,
  `sxpd` double DEFAULT NULL,
  `sw` double DEFAULT NULL,
  `hx` double DEFAULT NULL,
  `jsj` double DEFAULT NULL,
  `ty` double DEFAULT NULL,
  `ye` double DEFAULT NULL,
  `ms` double DEFAULT NULL,
  `jk` double DEFAULT NULL,
  `fz` double DEFAULT NULL,
  `ls` double DEFAULT NULL,
  `dl` double DEFAULT NULL,
  `wl` double DEFAULT NULL,
  `zz` double DEFAULT NULL,
  `lj` double DEFAULT NULL,
  `remark` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_score
-- ----------------------------
INSERT INTO `exam_score` VALUES ('278', '5', '8', '278', '100', '50', null, null, null, null, null, null, null, '60', '70', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('279', '5', '8', '279', '41', '51', null, null, null, null, null, null, null, '59', '71', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('280', '5', '8', '280', '42', '52', null, null, null, null, null, null, null, '58', '72', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('281', '5', '8', '281', '43', '53', null, null, null, null, null, null, null, '57', '73', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('282', '5', '8', '282', '44', '54', null, null, null, null, null, null, null, '56', '74', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('283', '5', '8', '283', '45', '55', null, null, null, null, null, null, null, '55', '75', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('284', '5', '8', '284', '46', '56', null, null, null, null, null, null, null, '54', '76', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('285', '5', '8', '285', '47', '57', null, null, null, null, null, null, null, '53', '77', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('286', '5', '8', '286', '48', '58', null, null, null, null, null, null, null, '52', '78', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('287', '5', '8', '287', '49', '59', null, null, null, null, null, null, null, '51', '79', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('288', '5', '8', '288', '50', '60', null, null, null, null, null, null, null, '50', '80', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('289', '5', '8', '289', '51', '61', null, null, null, null, null, null, null, '49', '81', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('290', '5', '8', '290', '52', '62', null, null, null, null, null, null, null, '48', '82', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('291', '5', '8', '291', '53', '63', null, null, null, null, null, null, null, '47', '83', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('292', '5', '8', '292', '54', '64', null, null, null, null, null, null, null, '46', '84', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('293', '5', '8', '293', '55', '65', null, null, null, null, null, null, null, '45', '85', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('294', '5', '8', '294', '56', '66', null, null, null, null, null, null, null, '44', '86', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('295', '5', '8', '295', '57', '67', null, null, null, null, null, null, null, '43', '87', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('296', '5', '8', '296', '58', '68', null, null, null, null, null, null, null, '42', '88', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('297', '5', '8', '297', '59', '69', null, null, null, null, null, null, null, '41', '89', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('298', '6', '8', '278', '60', '89', null, null, null, null, null, null, '70', '60', '70', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('299', '6', '8', '279', '89', '88', null, null, null, null, null, null, '71', '61', '71', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('300', '6', '8', '280', '88', '87', null, null, null, null, null, null, '72', '62', '72', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('301', '6', '8', '281', '87', '86', null, null, null, null, null, null, '73', '63', '73', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('302', '6', '8', '282', '86', '85', null, null, null, null, null, null, '74', '64', '74', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('303', '6', '8', '283', '85', '84', null, null, null, null, null, null, '75', '65', '75', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('304', '6', '8', '284', '84', '83', null, null, null, null, null, null, '76', '66', '76', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('305', '6', '8', '285', '83', '82', null, null, null, null, null, null, '77', '67', '77', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('306', '6', '8', '286', '82', '81', null, null, null, null, null, null, '78', '68', '78', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('307', '6', '8', '287', '81', '80', null, null, null, null, null, null, '79', '69', '79', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('308', '6', '8', '288', '80', '79', null, null, null, null, null, null, '80', '70', '70', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('309', '6', '8', '289', '79', '78', null, null, null, null, null, null, '81', '71', '71', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('310', '6', '8', '290', '78', '77', null, null, null, null, null, null, '82', '72', '72', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('311', '6', '8', '291', '77', '76', null, null, null, null, null, null, '83', '73', '73', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('312', '6', '8', '292', '76', '75', null, null, null, null, null, null, '84', '74', '74', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('313', '6', '8', '293', '75', '74', null, null, null, null, null, null, '85', '75', '75', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('314', '6', '8', '294', '74', '73', null, null, null, null, null, null, '86', '76', '76', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('315', '6', '8', '295', '73', '72', null, null, null, null, null, null, '87', '77', '77', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('316', '6', '8', '296', '72', '71', null, null, null, null, null, null, '88', '78', '78', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('317', '6', '8', '297', '71', '70', null, null, null, null, null, null, '70', '79', '79', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('318', '7', '8', '278', '80', '70', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('319', '7', '8', '279', '89', '71', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('320', '7', '8', '280', '88', '72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('321', '7', '8', '281', '87', '73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('322', '7', '8', '282', '86', '74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('323', '7', '8', '283', '85', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('324', '7', '8', '284', '84', '76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('325', '7', '8', '285', '83', '77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('326', '7', '8', '286', '82', '78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('327', '7', '8', '287', '81', '79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('328', '7', '8', '288', '80', '70', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('329', '7', '8', '289', '79', '71', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('330', '7', '8', '290', '78', '72', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('331', '7', '8', '291', '77', '73', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('332', '7', '8', '292', '76', '74', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('333', '7', '8', '293', '75', '75', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('334', '7', '8', '294', '74', '76', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('335', '7', '8', '295', '73', '77', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('336', '7', '8', '296', '72', '78', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('337', '7', '8', '297', '71', '79', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('338', '8', '8', '278', '60', '60', null, null, null, null, null, null, '70', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('339', '8', '8', '279', '51', '59', null, null, null, null, null, null, '71', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('340', '8', '8', '280', '52', '58', null, null, null, null, null, null, '72', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('341', '8', '8', '281', '53', '57', null, null, null, null, null, null, '73', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('342', '8', '8', '282', '54', '56', null, null, null, null, null, null, '74', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('343', '8', '8', '283', '55', '55', null, null, null, null, null, null, '75', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('344', '8', '8', '284', '56', '54', null, null, null, null, null, null, '76', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('345', '8', '8', '285', '57', '53', null, null, null, null, null, null, '77', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('346', '8', '8', '286', '58', '52', null, null, null, null, null, null, '78', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('347', '8', '8', '287', '59', '51', null, null, null, null, null, null, '79', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('348', '8', '8', '288', '60', '50', null, null, null, null, null, null, '80', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('349', '8', '8', '289', '61', '49', null, null, null, null, null, null, '81', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('350', '8', '8', '290', '62', '48', null, null, null, null, null, null, '82', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('351', '8', '8', '291', '63', '47', null, null, null, null, null, null, '83', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('352', '8', '8', '292', '64', '46', null, null, null, null, null, null, '84', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('353', '8', '8', '293', '65', '45', null, null, null, null, null, null, '85', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('354', '8', '8', '294', '66', '44', null, null, null, null, null, null, '86', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('355', '8', '8', '295', '67', '43', null, null, null, null, null, null, '87', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('356', '8', '8', '296', '68', '42', null, null, null, null, null, null, '88', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('357', '8', '8', '297', '69', '41', null, null, null, null, null, null, '89', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('358', '5', '9', '298', '36', '36', null, null, null, null, null, null, null, '36', '36', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('359', '5', '9', '299', '37', '90', null, null, null, null, null, null, null, '37', '37', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('360', '5', '9', '300', '38', '100', null, null, null, null, null, null, null, '38', '38', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('361', '5', '9', '301', '100', '39', null, null, null, null, null, null, null, '39', '39', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('362', '5', '9', '302', '15', '40', null, null, null, null, null, null, null, '40', '40', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('363', '5', '9', '303', '80', '41', null, null, null, null, null, null, null, '41', '41', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('364', '5', '9', '304', '40', '42', null, null, null, null, null, null, null, '42', '42', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('365', '5', '9', '305', '80', '43', null, null, null, null, null, null, null, '43', '43', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('366', '5', '9', '306', '80', '44', null, null, null, null, null, null, null, '44', '44', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('367', '5', '9', '307', '77', '45', null, null, null, null, null, null, null, '45', '45', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('368', '5', '9', '308', '87', '46', null, null, null, null, null, null, null, '46', '46', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('369', '5', '9', '309', '77', '47', null, null, null, null, null, null, null, '47', '47', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('370', '5', '9', '310', '48', '48', null, null, null, null, null, null, null, '48', '48', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('371', '5', '9', '311', '49', '49', null, null, null, null, null, null, null, '49', '49', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('375', '5', '10', '313', '30', '99', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('376', '5', '10', '314', '80', '60', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('377', '5', '10', '315', '90', '80', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('378', '5', '10', '316', '70', '80', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('379', '5', '10', '317', '60', '90', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('380', '5', '10', '318', '99', '80', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('381', '5', '10', '319', '88', '40', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('382', '5', '10', '320', '89', '50', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('383', '5', '10', '321', '90', '90', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('384', '5', '10', '322', '91', '90', null, null, null, null, null, null, null, '80', '90', null, null, null, null, null, null, null, null);
INSERT INTO `exam_score` VALUES ('385', '5', '10', '323', '61', '81', null, null, null, null, null, null, null, '81', '91', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for exam_subject
-- ----------------------------
DROP TABLE IF EXISTS `exam_subject`;
CREATE TABLE `exam_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_subject
-- ----------------------------
INSERT INTO `exam_subject` VALUES ('11', '5', '10');
INSERT INTO `exam_subject` VALUES ('12', '5', '11');
INSERT INTO `exam_subject` VALUES ('13', '5', '13');
INSERT INTO `exam_subject` VALUES ('14', '5', '14');

-- ----------------------------
-- Table structure for parent_student
-- ----------------------------
DROP TABLE IF EXISTS `parent_student`;
CREATE TABLE `parent_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent_student
-- ----------------------------
INSERT INTO `parent_student` VALUES ('1', '278', '8', '女儿');
INSERT INTO `parent_student` VALUES ('2', '278', '1', '女儿');
INSERT INTO `parent_student` VALUES ('3', '279', '1', '儿子');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT 'T',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '实验小学', '河北省邯郸市肥乡县', '肥乡县第一小学', 'www.syxx.com', '0310-1234567', 'mail@163.com', '2017-06-05 08:45:21', '7', '2017-06-05 08:45:21', '7', 'T');
INSERT INTO `school` VALUES ('4', '肥乡县新苑小学', '肥乡县新苑小学', '肥乡县新苑小学', '肥乡县新苑小学', '肥乡县新苑小学', 'qiaoshemei5@163.com', '2017-10-31 14:44:51', '27', '2017-10-31 14:44:51', '27', 'T');

-- ----------------------------
-- Table structure for school_circle
-- ----------------------------
DROP TABLE IF EXISTS `school_circle`;
CREATE TABLE `school_circle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_circle
-- ----------------------------
INSERT INTO `school_circle` VALUES ('1', '1', '说说', '今天天气不错', '2017-08-24 10:13:09', '1', 'T');
INSERT INTO `school_circle` VALUES ('2', '7', '说说', '大家好,听说国内冻成狗?我们这边还挺热~~~', '2017-08-24 11:02:03', '7', 'T');
INSERT INTO `school_circle` VALUES ('3', '20', '说说', '很好很高兴', '2017-12-04 11:58:32', '20', 'T');
INSERT INTO `school_circle` VALUES ('4', '20', '说说', '21113311231', '2017-12-04 12:02:08', '20', 'T');
INSERT INTO `school_circle` VALUES ('5', '20', '说说', '今天心情很好.20171204\n20171204 13:27:48', '2017-12-04 13:27:58', '20', 'T');

-- ----------------------------
-- Table structure for school_circle_comment
-- ----------------------------
DROP TABLE IF EXISTS `school_circle_comment`;
CREATE TABLE `school_circle_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_circle_comment
-- ----------------------------
INSERT INTO `school_circle_comment` VALUES ('1', '1', '1', '7', '11321321', '2017-08-24 10:53:47', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('2', '2', null, null, '很好', null, '8', 'T');
INSERT INTO `school_circle_comment` VALUES ('3', '2', null, null, '求带上', null, '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('4', '2', null, null, '带上我吧', null, '20', 'T');
INSERT INTO `school_circle_comment` VALUES ('5', '2', '1', '1', '好的', null, '21', 'T');
INSERT INTO `school_circle_comment` VALUES ('6', '2', '7', '7', '三亚呀......', null, '22', 'T');
INSERT INTO `school_circle_comment` VALUES ('7', '2', null, null, '去哪里玩儿,这么爽', null, '7', 'T');
INSERT INTO `school_circle_comment` VALUES ('13', '2', null, null, '222', '2017-08-25 14:48:12', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('14', '2', null, null, '222', '2017-08-25 14:48:16', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('15', '2', null, null, '321321', '2017-08-25 14:50:50', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('16', '2', null, null, '2222', '2017-08-25 14:51:05', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('17', '2', null, null, '我也想去', '2017-08-25 14:51:11', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('18', '2', null, null, '321321', '2017-08-25 14:52:35', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('19', '2', null, null, '2222', '2017-08-25 14:53:27', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('20', '2', null, null, '2222', '2017-08-25 14:54:58', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('21', '2', null, null, '321', '2017-08-25 14:55:04', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('22', '2', null, null, '321', '2017-08-25 14:57:18', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('23', '2', null, null, '222222', '2017-08-25 14:57:23', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('24', '2', null, '1', '', '2017-08-25 14:58:12', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('25', '2', null, '21', '321', '2017-08-25 14:59:38', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('26', '2', null, '21', '321', '2017-08-25 15:03:58', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('27', '2', null, null, null, '2017-08-25 15:21:31', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('28', '2', null, null, null, '2017-08-25 15:21:39', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('29', '2', null, null, null, '2017-08-25 15:21:40', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('30', '2', null, null, null, '2017-08-25 15:21:41', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('31', '2', null, null, null, '2017-08-25 15:21:42', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('32', '2', null, null, null, '2017-08-25 15:22:39', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('33', '2', null, null, '321321', '2017-08-25 15:23:58', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('34', '1', null, null, '321321', '2017-08-25 15:25:53', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('35', '1', null, '7', '2222', '2017-08-25 15:25:57', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('36', '2', null, '1', '我操了', '2017-08-28 09:53:05', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('37', '2', null, '1', '我操了', '2017-08-28 09:53:05', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('38', '2', null, '20', 'hahaha', '2017-08-28 09:55:00', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('39', '2', null, '22', '123456', '2017-08-28 10:31:45', '1', 'T');
INSERT INTO `school_circle_comment` VALUES ('40', '2', null, null, '', '2017-11-16 15:24:55', '20', 'T');
INSERT INTO `school_circle_comment` VALUES ('41', '5', null, null, '好的咱就评论一下!!!!', '2017-12-04 13:35:18', '20', 'T');
INSERT INTO `school_circle_comment` VALUES ('42', '4', null, null, '', '2017-12-04 13:35:55', '20', 'T');

-- ----------------------------
-- Table structure for school_circle_file
-- ----------------------------
DROP TABLE IF EXISTS `school_circle_file`;
CREATE TABLE `school_circle_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_id` int(11) DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_circle_file
-- ----------------------------
INSERT INTO `school_circle_file` VALUES ('1', '2', '1', '2017-08-24 13:08:14', '1', 'T');
INSERT INTO `school_circle_file` VALUES ('2', '2', '2', '2017-08-24 13:08:27', '1', 'T');
INSERT INTO `school_circle_file` VALUES ('3', '2', '3', '2017-08-24 13:08:27', '1', 'T');

-- ----------------------------
-- Table structure for school_circle_heart
-- ----------------------------
DROP TABLE IF EXISTS `school_circle_heart`;
CREATE TABLE `school_circle_heart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_circle_heart
-- ----------------------------
INSERT INTO `school_circle_heart` VALUES ('1', '1', '1', '2017-08-24 10:54:13', '1', 'T');
INSERT INTO `school_circle_heart` VALUES ('2', '2', '2', '2017-08-24 10:54:13', '7', 'T');
INSERT INTO `school_circle_heart` VALUES ('3', '2', null, '2017-08-24 10:54:13', '8', 'T');
INSERT INTO `school_circle_heart` VALUES ('5', '2', null, '2017-08-24 10:54:13', '20', 'T');
INSERT INTO `school_circle_heart` VALUES ('6', '2', null, '2017-08-24 10:54:13', '21', 'T');
INSERT INTO `school_circle_heart` VALUES ('7', '2', null, '2017-08-24 10:54:13', '22', 'T');
INSERT INTO `school_circle_heart` VALUES ('11', '2', null, '2017-08-25 15:24:16', '1', 'T');
INSERT INTO `school_circle_heart` VALUES ('12', '1', null, '2017-08-28 10:37:49', '7', 'T');
INSERT INTO `school_circle_heart` VALUES ('13', '5', null, '2017-12-04 13:35:07', '20', 'T');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alias_name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `birth_address` varchar(255) DEFAULT NULL,
  `student_num` varchar(255) DEFAULT NULL,
  `study_num` varchar(255) DEFAULT NULL,
  `exam_num` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `school_score` varchar(255) DEFAULT NULL,
  `school_time` datetime DEFAULT NULL,
  `political_state` varchar(255) DEFAULT NULL,
  `school_from` varchar(255) DEFAULT NULL,
  `health_state` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `clas_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT 'T',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('278', '李斌', '李斌', '1', '520102196905117818', '云岩区一河坎街108号2栋2单元附5号', '1991-05-08', '云岩区一河坎街108号2栋2单元附5号', '13608516767', '13608516767', '13608516767', '1', '501', '2015-01-02 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('279', '刘海波', '刘海波', '1', '52010219630603341X', '南厂路118号长城小区B座4栋1单元1104号', '1991-05-09', '南厂路118号长城小区B座4栋1单元1104号', '13985048391', '13985048391', '13985048391', '1', '502', '2015-01-03 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('280', '韦桂黔', '韦桂黔', '1', '520102196312063439', '南厂路165号长城小区C座7栋1单元1703号', '1991-05-10', '南厂路165号长城小区C座7栋1单元1703号', '13809406267', '13809406267', '13809406267', '1', '503', '2015-01-04 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('281', '张榕', '张榕', '1', '52270119671002701X', '南厂路165号长城小区C座1单元0805号', '1991-05-11', '南厂路165号长城小区C座1单元0805号', '18183653371', '18183653371', '18183653371', '1', '504', '2015-01-05 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('282', '雷信明', '雷信明', '1', '510522197103249712', '省府北街9号', '1991-05-12', '省府北街9号', '15108508675', '15108508675', '15108508675', '1', '505', '2015-01-06 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('283', '徐廷焕', '徐廷焕', '1', '520102197011143851', '瑞金北路63号2单元附4号', '1991-05-13', '瑞金北路63号2单元附4号', '13809456288', '13809456288', '13809456288', '1', '506', '2015-01-07 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('284', '罗启江', '罗启江', '0', '52010219660623781X', '三民东路37-3-3号', '1991-05-14', '三民东路37-3-3号', '13985178682', '13985178682', '13985178682', '1', '507', '2015-01-08 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('285', '方辉明', '方辉明', '1', '520103196909010459', '云岩区东山路68号8栋2单元附9号', '1991-05-15', '云岩区东山路68号8栋2单元附9号', '18984586177', '18984586177', '18984586177', '1', '508', '2015-01-09 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('286', '赵玉明', '赵玉明', '1', '520111197201263332', '清溪路46号E栋2单元401号', '1991-05-16', '清溪路46号E栋2单元401号', '13639148202', '13639148202', '13639148202', '1', '509', '2015-01-10 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('287', '陈晓义', '陈晓义', '0', '610113197003290473', '北京路141号1栋2单元601号', '1991-05-17', '北京路141号1栋2单元601号', '13984402233', '13984402233', '13984402233', '1', '510', '2015-01-11 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('288', '邓兵', '邓兵', '1', '510726197303082618', '南明区遵义巷1号3栋2单元10号', '1991-05-18', '南明区遵义巷1号3栋2单元10号', '13885092798', '13885092798', '13885092798', '1', '511', '2015-01-12 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('289', '党庆云', '党庆云', '1', '511102197008149119', '白云区云中路50号18栋1802号', '1991-05-19', '白云区云中路50号18栋1802号', '15180710778', '15180710778', '15180710778', '1', '512', '2015-01-13 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('290', '韩焰', '韩焰', '0', '522101197411043652', '观水路21号1栋3单元10号', '1991-05-20', '观水路21号1栋3单元10号', '13885130140', '13885130140', '13885130140', '1', '513', '2015-01-14 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('291', '苏照辉', '苏照辉', '1', '522622197407011999', '南厂路165号C座8栋附12号', '1991-05-21', '南厂路165号C座8栋附12号', '13885121779', '13885121779', '13885121779', '1', '514', '2015-01-15 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('292', '杨恩开', '杨恩开', '1', '522225197502059816', '南厂路165号C座3单元1503号', '1991-05-22', '南厂路165号C座3单元1503号', '17716685020', '17716685020', '17716685020', '1', '515', '2015-01-16 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('293', '段卫星', '段卫星', '1', '610121197403251553', '南明区南厂路165号C座2栋1-102号', '1991-05-23', '南明区南厂路165号C座2栋1-102号', '13985143636', '13985143636', '13985143636', '1', '516', '2015-01-17 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('294', '胡守一', '胡守一', '1', '520102196903273454', '北京路219号4栋2406号', '1991-05-24', '北京路219号4栋2406号', '15008535999', '15008535999', '15008535999', '1', '517', '2015-01-18 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('295', '姚迅', '姚迅', '1', '520112197101140075', '南明区八达巷2号6栋3-611号', '1991-05-25', '南明区八达巷2号6栋3-611号', '15180851788', '15180851788', '15180851788', '1', '518', '2015-01-19 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('296', '余浩田', '余浩田', '1', '510212197710014115', '乌当区保利公园2栋3单元8-2号', '1991-05-26', '乌当区保利公园2栋3单元8-2号', '13888760765', '13888760765', '13888760765', '1', '519', '2015-01-20 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('297', '罗宽', '罗宽', '1', '52010219680421343X', '南明区南厂路165号长城小区C座6栋1503号', '1991-05-27', '南明区南厂路165号长城小区C座6栋1503号', '13608544556', '13608544556', '13608544556', '1', '520', '2015-01-21 00:00:00', '团员', '新苑小学', '健康', '正常', '8', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('298', '廖志华', '廖志华', '0', '520102197206252468', '外环城东路202号消9栋1单元18号', '1991-05-08', '外环城东路202号消9栋1单元18号', '18798717638.00', null, null, '1', '501', '1991-05-08 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('299', '王语', '王语', '1', '522401197711260137', '中华北路315号', '1991-05-09', '中华北路315号', '13984355736.00', null, null, '1', '502', '1991-05-09 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('300', '刘志勇', '刘志勇', '1', '520103197210011217', '中华北路220号3栋2单元403号', '1991-05-10', '中华北路220号3栋2单元403号', '13985501055.00', null, null, '1', '503', '1991-05-10 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('301', '马武科', '马武科', '1', '430524197404090330', '金阳南路6号龙禧苑6栋1-4-1号', '1991-05-11', '金阳南路6号龙禧苑6栋1-4-1号', '13984394789.00', null, null, '1', '504', '1991-05-11 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('302', '张斌', '张斌', '1', '522530197304170019', '黔灵西路52号会11号', '1991-05-12', '黔灵西路52号会11号', '13385111133.00', null, null, '1', '505', '1991-05-12 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('303', '彭业光', '彭业光', '1', '522227197007074851', '金阳碧海花园碧水云天2栋10单元202号', '1991-05-13', '金阳碧海花园碧水云天2栋10单元202号', '13985027438.00', null, null, '1', '506', '1991-05-13 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('304', '刘杰', '刘杰', '1', '522226197212082010', '金阳南路6号龙禧苑4栋2-28-1号', '1991-05-14', '金阳南路6号龙禧苑4栋2-28-1号', '15985676088.00', null, null, '1', '507', '1991-05-14 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('305', '张建文', '张建文', '1', '43262419730608513X', '金阳南路6号龙泽苑24栋1-20-1号', '1991-05-15', '金阳南路6号龙泽苑24栋1-20-1号', '13595047686.00', null, null, '1', '508', '1991-05-15 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('306', '李轶', '李轶', '0', '520112197511162525', '金阳景怡西苑A19栋1单元102号', '1991-05-16', '金阳景怡西苑A19栋1单元102号', '13985110723.00', null, null, '1', '509', '1991-05-16 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('307', '高雄林', '高雄林', '1', '513901197206089857', '白云区金元路69号307号1栋单元3号', '1991-05-17', '白云区金元路69号307号1栋单元3号', '13982968119.00', null, null, '1', '510', '1991-05-17 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('308', '徐屹', '徐屹', '1', '522401197608180112', '金阳新区金华南园A4栋1单元702号', '1991-05-18', '金阳新区金华南园A4栋1单元702号', '13608558161.00', null, null, '1', '511', '1991-05-18 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('309', '王志斌', '王志斌', '1', '61033019740610031X', '三民东路166号1单元6-A21号', '1991-05-19', '三民东路166号1单元6-A21号', '13985121107.00', null, null, '1', '512', '1991-05-19 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('310', '李军', '李军', '1', '510226197401176311', '南明区青山路99号国际城B组团4栋1403号', '1991-05-20', '南明区青山路99号国际城B组团4栋1403号', '18786005321.00', null, null, '1', '513', '1991-05-20 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('311', '李君喜', '李君喜', '1', '430521197510152858', '金阳南路6号龙泉苑12栋1单元1101号', '1991-05-21', '金阳南路6号龙泉苑12栋1单元1101号', '18885039199.00', null, null, '1', '514', '1991-05-21 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('312', '赵媛', '赵媛', '0', '522223197712150025', '金阳南路6号龙吉苑8栋2单元201号', '1991-05-22', '金阳南路6号龙吉苑8栋2单元201号', '18985170253.00', null, null, '1', '515', '1991-05-22 00:00:00', '团员', '新苑小学', '健康', '正常', '9', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('313', '汪长永', '汪长永', '1', '422123197405112919', '云岩区余家巷2号517号', '1991-05-08', '云岩区余家巷2号517号', '13765176548', '13765176548', '13765176548', null, '500', '2015-01-02 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('314', '邹洪波', '邹洪波', '1', '432524197604104014', '云石巷20号1栋4单元附1号', '1991-05-09', '云石巷20号1栋4单元附1号', '15885098098', '15885098098', '15885098098', null, '500', '2015-01-03 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('315', '杨雄', '杨雄', '1', '522229197409192298', '南明区花溪大道北段726号2单元510号', '1991-05-10', '南明区花溪大道北段726号2单元510号', '13608510839', '13608510839', '13608510839', null, '500', '2015-01-04 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('316', '虢继卫', '虢继卫', '1', '430105197612231010', '南明红岩村路1号A5栋2单元201号', '1991-05-11', '南明红岩村路1号A5栋2单元201号', '13765058891', '13765058891', '13765058891', null, '500', '2015-01-05 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('317', '李琳', '李琳', '0', '520111197210150065', '贵州大学24栋1单元附161号', '1991-05-12', '贵州大学24栋1单元附161号', '13985151353', '13985151353', '13985151353', null, '500', '2015-01-06 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('318', '沈月华', '沈月华', '1', '320682197506079611', '省府西路26号5单元附16号', '1991-05-13', '省府西路26号5单元附16号', '13985140378', '13985140378', '13985140378', null, '500', '2015-01-07 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('319', '曹国辉', '曹国辉', '1', '522121197406031433', '沙冲南路2号4栋1单元附5号', '1991-05-14', '沙冲南路2号4栋1单元附5号', '13888877199', '13888877199', '13888877199', null, '500', '2015-01-08 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('320', '杜益鹏', '杜益鹏', '1', '532502197911100617', '大庆路288号美树阳光小区3栋1单元303号', '1991-05-15', '大庆路288号美树阳光小区3栋1单元303号', '15180846699', '15180846699', '15180846699', null, '500', '2015-01-09 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('321', '李凌', '李凌', '1', '360103197812023119', '黄河路9号长城嘉苑6栋704号', '1991-05-16', '黄河路9号长城嘉苑6栋704号', '18085106682', '18085106682', '18085106682', null, '500', '2015-01-10 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('322', '邓勇', '邓勇', '1', '530302197609038012', '长岭北路1号会展城A4组团8栋2903号', '1991-05-17', '长岭北路1号会展城A4组团8栋2903号', '18375136616', '18375136616', '18375136616', null, '500', '2015-01-11 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');
INSERT INTO `student` VALUES ('323', '罗鸿', '罗鸿', '0', '520114197605190028', '南明区市南路57号D栋3-4号', '1991-05-18', '南明区市南路57号D栋3-4号', '15885005504', '15885005504', '15885005504', null, '500', '2015-01-12 00:00:00', '团员', '新苑小学', '健康', '正常', '10', null, null, null, null, 'T');

-- ----------------------------
-- Table structure for student_apart
-- ----------------------------
DROP TABLE IF EXISTS `student_apart`;
CREATE TABLE `student_apart` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `apartment_id` int(11) DEFAULT NULL,
  `bed_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_apart
-- ----------------------------

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clas_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('10', '1', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('11', '1', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('12', '1', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('13', '1', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('14', '1', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('15', '2', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('16', '2', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('17', '2', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('18', '2', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('19', '3', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('20', '3', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('21', '3', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('22', '3', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('23', '3', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('24', '3', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('25', '3', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('26', '3', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('27', '4', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('28', '4', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('29', '4', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('30', '4', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('31', '4', 'sxpd', '思想品德', null);
INSERT INTO `subject` VALUES ('32', '4', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('33', '4', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('34', '4', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('35', '4', 'lj', '劳动技术', null);
INSERT INTO `subject` VALUES ('36', '4', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('37', '5', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('38', '5', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('39', '5', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('40', '5', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('41', '5', 'sxpd', '思想品德', null);
INSERT INTO `subject` VALUES ('42', '5', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('43', '5', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('44', '5', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('45', '5', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('46', '5', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('47', '6', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('48', '6', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('49', '6', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('50', '6', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('51', '6', 'sxpd', '思想品德', null);
INSERT INTO `subject` VALUES ('52', '6', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('53', '6', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('54', '6', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('55', '6', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('56', '6', 'lj', '劳动技术', null);
INSERT INTO `subject` VALUES ('57', '6', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('58', '21', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('59', '21', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('60', '21', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('61', '21', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('62', '21', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('63', '41', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('64', '41', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('65', '41', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('66', '42', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('67', '42', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('68', '42', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('69', '43', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('70', '43', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('71', '43', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('72', '43', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('73', '43', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('74', '43', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('75', '43', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('76', '43', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('77', '44', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('78', '44', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('79', '44', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('80', '44', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('81', '44', 'sxpd', '思想品德', null);
INSERT INTO `subject` VALUES ('82', '44', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('83', '44', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('84', '44', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('85', '44', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('86', '44', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('87', '45', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('88', '45', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('89', '45', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('90', '45', 'zr', '自然', null);
INSERT INTO `subject` VALUES ('91', '45', 'sxpd', '思想品德', null);
INSERT INTO `subject` VALUES ('92', '45', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('93', '45', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('94', '45', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('95', '45', 'ms', '美术', null);
INSERT INTO `subject` VALUES ('96', '45', 'zx', '自习课', null);
INSERT INTO `subject` VALUES ('97', '46', 'yw', '语文', null);
INSERT INTO `subject` VALUES ('98', '46', 'sx', '数学', null);
INSERT INTO `subject` VALUES ('99', '46', 'yy', '英语', null);
INSERT INTO `subject` VALUES ('100', '46', 'jsj', '计算机', null);
INSERT INTO `subject` VALUES ('101', '46', 'ty', '体育', null);
INSERT INTO `subject` VALUES ('102', '46', 'ye', '音乐', null);
INSERT INTO `subject` VALUES ('103', '46', 'zx', '自习课', null);

-- ----------------------------
-- Table structure for sys_dic
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic`;
CREATE TABLE `sys_dic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dic
-- ----------------------------
INSERT INTO `sys_dic` VALUES ('1', '科目', 'subject');
INSERT INTO `sys_dic` VALUES ('2', '权限过滤', 'authority');
INSERT INTO `sys_dic` VALUES ('3', '图片类型', 'picture_type');

-- ----------------------------
-- Table structure for sys_dic_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dic_detail`;
CREATE TABLE `sys_dic_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dic_code` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dic_detail
-- ----------------------------
INSERT INTO `sys_dic_detail` VALUES ('1', '1', '语文', 'yw', '1');
INSERT INTO `sys_dic_detail` VALUES ('2', '1', '数学', 'sx', '2');
INSERT INTO `sys_dic_detail` VALUES ('3', '1', '英语', 'yy', '3');
INSERT INTO `sys_dic_detail` VALUES ('4', '1', '自然', 'zr', '4');
INSERT INTO `sys_dic_detail` VALUES ('5', '1', '思想品德', 'sxpd', '5');
INSERT INTO `sys_dic_detail` VALUES ('6', '1', '生物', 'sw', '6');
INSERT INTO `sys_dic_detail` VALUES ('7', '1', '化学', 'hx', '7');
INSERT INTO `sys_dic_detail` VALUES ('8', '1', '计算机', 'jsj', '8');
INSERT INTO `sys_dic_detail` VALUES ('9', '1', '体育', 'ty', '9');
INSERT INTO `sys_dic_detail` VALUES ('10', '1', '音乐', 'ye', '10');
INSERT INTO `sys_dic_detail` VALUES ('11', '1', '美术', 'ms', '11');
INSERT INTO `sys_dic_detail` VALUES ('12', '1', '健康', 'jk', '12');
INSERT INTO `sys_dic_detail` VALUES ('13', '1', '法制', 'fz', '13');
INSERT INTO `sys_dic_detail` VALUES ('14', '1', '历史', 'ls', '14');
INSERT INTO `sys_dic_detail` VALUES ('15', '1', '地理', 'dl', '15');
INSERT INTO `sys_dic_detail` VALUES ('16', '1', '物理', 'wl', '16');
INSERT INTO `sys_dic_detail` VALUES ('17', '1', '政治', 'zz', '17');
INSERT INTO `sys_dic_detail` VALUES ('18', '1', '劳动技术', 'lj', '18');
INSERT INTO `sys_dic_detail` VALUES ('19', '1', '自习课', 'zx', '19');
INSERT INTO `sys_dic_detail` VALUES ('20', '2', '获取菜单权限', 'menuController/getUserMenu.do', null);
INSERT INTO `sys_dic_detail` VALUES ('21', '2', '获取班级信息', 'clasController/getUserTreeClas.do', null);
INSERT INTO `sys_dic_detail` VALUES ('22', '2', '获取按钮权限', 'menuController/grantPoint.do', null);
INSERT INTO `sys_dic_detail` VALUES ('23', '2', '获取学校信息', 'schoolController/findSchoolByCreateId.do', null);
INSERT INTO `sys_dic_detail` VALUES ('24', '2', '获取字典信息', 'dicController/getSubjectDic.do', null);
INSERT INTO `sys_dic_detail` VALUES ('25', '2', '给所有人发信息', 'dwrController/sendAllMsg.do', null);
INSERT INTO `sys_dic_detail` VALUES ('26', '2', '上传文件', 'sysFileController/uploadFile.do', null);
INSERT INTO `sys_dic_detail` VALUES ('27', '2', '下载文件', 'sysFileController/downloadFile.do', null);
INSERT INTO `sys_dic_detail` VALUES ('28', '2', '修改密码', 'userController/updateUserPassword.do', null);
INSERT INTO `sys_dic_detail` VALUES ('29', '2', '获取用户信息', 'userController/getUserInfo.do', null);
INSERT INTO `sys_dic_detail` VALUES ('30', '2', '完善用户信息', '/userController/add.do', null);
INSERT INTO `sys_dic_detail` VALUES ('31', '2', '下载成绩模板', 'examController/downloadExamTemplate.do', null);
INSERT INTO `sys_dic_detail` VALUES ('1000', '3', '用户头像', 'user_photo_40*30', '1');
INSERT INTO `sys_dic_detail` VALUES ('2000', '3', '说说图片', null, '2');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) DEFAULT NULL,
  `bill_type` int(11) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('1', '1', '2000', null, 'scpm\\file\\2017\\08\\23\\1.jpg', 'T', '2017-08-23 15:49:11', '7', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('2', '2', '2000', null, 'scpm\\file\\2017\\08\\23\\2.jpg', 'T', '2017-08-23 15:49:11', '7', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('3', '3', '2000', null, 'scpm\\file\\2017\\08\\23\\3.jpg', 'T', '2017-08-23 15:49:11', '7', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('11', '7', '1000', null, 'scpm\\file\\2017\\08\\23\\1.jpg', 'T', '2017-08-23 10:51:56', '7', 'image/png');
INSERT INTO `sys_file` VALUES ('12', '1', '1000', null, 'scpm\\file\\2017\\08\\23\\2.jpg', 'T', '2017-08-23 10:52:13', '7', 'image/png');
INSERT INTO `sys_file` VALUES ('13', '278', '1000', null, 'scpm\\file\\2017\\08\\23\\1.jpg', 'T', '2017-08-23 15:49:11', '7', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('14', '278', '1000', null, 'scpm\\file\\2017\\12\\01\\609d0d97-9ee8-49ab-93d7-af32cecb49d5.png', 'T', '2017-12-01 11:29:10', '20', 'image/png');
INSERT INTO `sys_file` VALUES ('15', '4', '2000', null, 'scpm\\file\\2017\\12\\04\\6332502e00ad4a60b48da7d885c340c2.jpg', 'T', '2017-12-04 12:02:09', '20', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('16', '5', '2000', null, 'scpm\\file\\2017\\12\\04\\591f548863424f5e90e63bf538676d30.jpg', 'T', '2017-12-04 13:27:58', '20', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('17', '5', '2000', null, 'scpm\\file\\2017\\12\\04\\077d1bc2bcd144aba2f2e0b039bb23c9.jpg', 'T', '2017-12-04 13:27:58', '20', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('18', '5', '2000', null, 'scpm\\file\\2017\\12\\04\\132789e9f98a42d390d5760f22c27738.jpg', 'T', '2017-12-04 13:27:58', '20', 'image/jpeg');
INSERT INTO `sys_file` VALUES ('19', '5', '2000', null, 'scpm\\file\\2017\\12\\04\\2f41a5e9d994410ebc9d7eb00f63c562.jpg', 'T', '2017-12-04 13:27:58', '20', 'image/jpeg');

-- ----------------------------
-- Table structure for sys_flow
-- ----------------------------
DROP TABLE IF EXISTS `sys_flow`;
CREATE TABLE `sys_flow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `flow_type` varchar(255) DEFAULT NULL,
  `flow_msg` varchar(2000) DEFAULT '',
  `create_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `process_instance_id` varchar(255) DEFAULT NULL,
  `flow_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_flow
-- ----------------------------
INSERT INTO `sys_flow` VALUES ('44', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-10 11:25:14\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-11 11:25:16\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"jfdlksajfld sal flds al lfds al fds\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-11-10 11:25:24', '5', null);
INSERT INTO `sys_flow` VALUES ('45', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-10 13:28:45\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-11 13:28:48\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"123456\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-10 13:34:27', '20', '2');
INSERT INTO `sys_flow` VALUES ('46', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-10 15:07:25\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-11 15:07:30\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-10 15:07:33', '2501', '2');
INSERT INTO `sys_flow` VALUES ('47', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-30 15:28:48\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-07 15:28:48\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"111111111\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-10 15:29:01', '2512', '2');
INSERT INTO `sys_flow` VALUES ('48', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-10 15:51:25\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-18 15:51:27\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"123\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-10 15:51:33', '2533', '2');
INSERT INTO `sys_flow` VALUES ('49', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-10 15:53:11\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-11 15:53:13\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"111\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-10 15:53:19', '2548', '2');
INSERT INTO `sys_flow` VALUES ('50', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-11-11 10:32:15\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-11-12 10:32:18\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔渝\"}]', '23', '2017-11-11 10:32:22', '5001', '1');
INSERT INTO `sys_flow` VALUES ('51', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-28 15:45:12\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2018-01-06 15:45:12\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"生病了\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 15:45:23', '7501', '0');
INSERT INTO `sys_flow` VALUES ('52', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-01 15:46:07\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-02 15:46:09\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 15:46:14', '7507', '0');
INSERT INTO `sys_flow` VALUES ('53', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2018-01-03 15:46:56\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2018-02-10 15:46:56\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 15:47:02', '7513', '1');
INSERT INTO `sys_flow` VALUES ('54', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2018-01-04 15:58:21\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2018-01-30 15:58:21\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"432432\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 15:58:27', '7526', '1');
INSERT INTO `sys_flow` VALUES ('55', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-28 16:00:12\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-30 16:00:12\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 16:00:17', '7532', '1');
INSERT INTO `sys_flow` VALUES ('56', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-01 16:00:40\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-15 16:00:42\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-01 16:00:45', '7538', '1');
INSERT INTO `sys_flow` VALUES ('57', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:30:38', '10001', '0');
INSERT INTO `sys_flow` VALUES ('58', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:36:27', '12501', '0');
INSERT INTO `sys_flow` VALUES ('59', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:38:22', '12507', '0');
INSERT INTO `sys_flow` VALUES ('60', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:38:48', '12513', '0');
INSERT INTO `sys_flow` VALUES ('61', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:39:14', '12519', '0');
INSERT INTO `sys_flow` VALUES ('62', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:39:24', '12525', '0');
INSERT INTO `sys_flow` VALUES ('63', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:40:43', '15001', '0');
INSERT INTO `sys_flow` VALUES ('64', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:42:56', '15007', '0');
INSERT INTO `sys_flow` VALUES ('65', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-08 21:30:26\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-09 21:30:28\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-08 21:44:06', '15013', '0');
INSERT INTO `sys_flow` VALUES ('66', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-09 09:05:36\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-10 09:05:38\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-09 09:05:48', '17501', '0');
INSERT INTO `sys_flow` VALUES ('67', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-09 09:08:58\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-18 09:09:01\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"3333333\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-09 09:09:10', '20001', '0');
INSERT INTO `sys_flow` VALUES ('68', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-09 09:08:58\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-18 09:09:01\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"3333333\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-09 09:31:09', '20007', '0');
INSERT INTO `sys_flow` VALUES ('69', '教师请假流程', 'teacher_leave', '[{\"id\":\"startDate\",\"name\":\"请假开始时间\",\"value\":\"2017-12-09 09:35:37\"},{\"id\":\"endDate\",\"name\":\"请假结束时间\",\"value\":\"2017-12-10 09:35:38\"},{\"id\":\"leaveReason\",\"name\":\"请假原因\",\"value\":\"321321321\"},{\"id\":\"userName\",\"name\":\"操作人\",\"value\":\"乔石鹏\"}]', '20', '2017-12-09 09:35:43', '20013', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `opertor_long` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order_by` int(11) DEFAULT NULL,
  `tree_level` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT 'T',
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT 0,
  `page_auth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104010105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '', null, '1', '1', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('2', '教务系统', '0', '', null, '3', '1', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('3', '教师工作', '0', '', null, '4', '1', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('4', '家长信息', '0', null, null, '5', '1', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '4', null);
INSERT INTO `sys_menu` VALUES ('5', '手机端', '0', '', '', '2', '1', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '', null, '2', '2', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '', null, '3', '2', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('103', '流程管理', '1', '', '', '4', '2', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('104', '用户管理', '1', '', null, '1', '2', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('201', '学校管理', '2', '', null, '1', '2', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('301', '工作审批', '3', '', '', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('302', '考试信息', '3', '', '', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('303', '班级维护', '3', '', '', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('401', '孩子信息', '4', null, null, '4', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '4', null);
INSERT INTO `sys_menu` VALUES ('501', '朋友圈', '5', '', '', '5', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('10101', '角色管理', '101', 'icon-jiaoseguanli', 'role/index.jsp,roleController/getSystemRole.do,menuController/roleMenuChmod.do', '6', '3', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('10201', '菜单管理', '102', 'icon-caidan', 'menu/index.jsp,menuController/getMenus.do', '7', '3', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('10301', '流程管理', '103', 'icon-liuchengguanli', 'bpm/bpmList.jsp,bpmController/getAllProcessDefinition.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('10401', '查询用户', '104', 'icon-renyuanguanli', 'user/user.jsp,userController/findUserByPage.do,userController/findByPage.do', '4', '3', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('20101', '学校管理', '201', 'icon-xuexiaoguanli01', 'school/school.jsp,schoolController/findByPage.do', '1', '3', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20102', '家长管理', '201', 'icon-jiachangguanli', 'parent/index.jsp,parentController/getParents.do', '9', '3', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20103', '宿舍管理', '201', 'icon-susheguanli', 'apartment/index.jsp,/apartmentController/findByPage.do', '5', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20104', '角色管理', '201', 'icon-jiaoseguanli', 'role/schoolrole.jsp,roleController/findSchoolRoleByPage.do', '6', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20105', '学科管理', '201', 'icon-xueke', 'subject/index.jsp,clasController/getUserTreeClas.do', '4', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20106', '人员管理', '201', 'icon-renyuanguanli', 'user/userlist.jsp,userController/findUserByPage.do,userController/findByPage.do', '7', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20107', '年级管理', '201', 'icon-nianji', 'clas/index.jsp,clasinfoController/findById.do,clasController/add.do,clasinfoController/findClassTeachers.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20108', '学生管理', '201', 'icon-xueshengguanli', 'student/index.jsp,studentController/findByPage.do,studentController/findById.do', '8', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('20109', '课程管理', '201', 'icon-qiandao', 'clastable/index.jsp,clasTableController/getAllClasSubjectByClasId.do,clasTableController/getClasTableByClasId.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('30101', '审批历史', '301', 'icon-lishijilu', 'bpmflow/historyTaskList.jsp,workFlowController/getMyTaskList.do,workFlowController/getProcessHistory.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('30103', '待办列表', '301', 'icon-daiban', 'bpmflow/myBpmList.jsp,workFlowController/getMyCurrentTaskList.do,workFlowController/getBuinessMsg.do,workFlowController/approvalFlowProcess.do,workFlowController/getIsTaskLast.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('30201', '成绩管理', '302', 'icon-chengjiguanli', 'score/index.jsp,clasController/findClasByAuthor.do,examController/getExamCombobox.do,schoolController/findScholByAuthor.do,clasController/findClasByAuthor.do,examController/findExamSoreByPage.do,examController/getGridList.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('30202', '成绩分析', '302', 'icon-16', 'student/index.jsp,studentController/findByPage.do,studentController/findById.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('30203', '考试管理', '302', 'icon-kaoshiguanli', 'exam/index.jsp,examController/getExamBeans.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('30301', '学生维护', '303', 'icon-xueshengziliaoguanli\r\n流程管理\r\nicon-xueshengziliaoguanli', 'student/index.jsp,studentController/findByPage.do,studentController/findById.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('40101', '孩子信息', '401', 'icon-xueshengguanli', 'parent/childrenlist.jsp,parentController/getParentStudents.do,examController/findExamClasInfoByPage.do,examController/findExamSubjectByPage.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '4', null);
INSERT INTO `sys_menu` VALUES ('40102', '成绩统计', '401', 'icon-16', 'report/student_level_report.jsp,reportController/report1.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '4', null);
INSERT INTO `sys_menu` VALUES ('50101', '说说管理', '501', 'icon-pengyouquan', 'schoolcircle/index.jsp,schoolCircleControlller/getPageSchoolCircle.do,schoolCircleControlller/delSchoolCircleComment.do,schoolCircleControlller/delSchoolCircleHeart.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '1', null);
INSERT INTO `sys_menu` VALUES ('1010101', '授权菜单', '10101', 'roleMenuAuthor()', 'roleController/addRoleMenus.do,userController/userRoleAuthor.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1030101', '部署流程', '10301', 'deployBpmFlow()', 'bpmController/deployBpmFlow.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1030102', '查看流程图', '10301', 'viewBpmFlow()', 'bpmController/viewBpmFlowImg.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1030103', '删除流程', '10301', 'delBpmFlow()', 'bpmController/getAllProcessDefinition.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1030104', '激活', '10301', 'suspendProcess()', 'bpmController/suspendProcess.do', '4', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1030105', '挂起', '10301', 'activateProcess()', 'bpmController/activateProcess.do', '5', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1040101', '添加', '10401', 'addUser()', 'userController/add.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1040102', '禁用', '10401', 'delUser()', 'userController/del.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1040103', '修改', '10401', 'updateUser()', 'userController/update.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('1040104', '授权角色', '10401', 'authorRole()', 'userController/updateRole.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('2010101', '添加学校', '20101', 'addSchool()', 'schoolController/add.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010201', '关联孩子', '20102', 'add()', 'parentController/add.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '0', null);
INSERT INTO `sys_menu` VALUES ('2010202', '取消关联', '20102', 'del()', 'parentController/del.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010301', '添加', '20103', 'addApartment()', 'apartmentController/add.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010401', '添加角色', '20104', 'addSchoolRole()', 'roleController/addSchoolRole.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010402', '授权数据', '20104', 'addRoleDatas()', 'roleController/addRoleDatas.do', '2', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010403', '授权菜单', '20104', 'userMenuAuthor()', 'menuController/roleMenuChmod.do,roleController/addRoleMenus.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010501', '保存', '20105', 'addSubject()', 'subjectController/add.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010601', '导入人员', '20106', 'importUser()', 'userController/importUser.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010602', '授权角色', '20106', 'userRoleAuthor()', 'userController/userRoleAuthor.do', '2', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010603', '添加人员', '20106', 'addUser()', 'userController/add.do,schoolController/findScholByAuthor.do', '3', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010604', '禁用|启用', '20106', 'updateUser()', 'userController/updateUser.do', '3', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010701', '添加', '20107', 'addClasInfo()', 'clasinfoController/add.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010702', '修改', '20107', 'updateclasInfo()', 'clasinfoController/update.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010711', '添加教师', '20107', 'addClassTeacher()', 'clasinfoController/addClassTeacher.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', '0');
INSERT INTO `sys_menu` VALUES ('2010801', '添加', '20108', 'addStudent()', 'studentController/add.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010802', '查看详情', '20108', 'getStudentInfo()', 'studentController/findByPage.do', '5', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010803', '导入学生', '20108', 'importStudent()', 'studentController/importStudent.do', '6', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010804', '修改', '20108', 'updateStudent()', 'scpm/studentController/add.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010805', '删除', '20108', 'delStudent()', 'studentController/del.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010806', '分配宿舍', '20108', 'studentPart()', '', '7', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010807', '更新头像', '20108', 'updatePhoto()', 'sysFileController/uploadFile.do', '4', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010808', '成绩排名', '20108', 'studentReport1()', 'reportController/report1.do', '8', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('2010901', '保存', '20109', 'submitClasTable()', 'clasTableController/generatorClasTable.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '2', null);
INSERT INTO `sys_menu` VALUES ('3010301', '请假流程', '30103', 'flow0()', 'bpmController/viewBpmFlowImg.do,workFlowController/flow0.do,bpmController/viewCurrentBpmFlowImg.do,userController/findUserByPage.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3020101', '导入成绩', '30201', 'importClasScore()', 'examController/importClasExam.do', null, '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3020201', '成绩排名', '30202', 'studentReport1()', 'reportController/report1.do', '1', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3020301', '添加考试', '30203', 'addExam()', 'examController/addExam.do,subjectController/getSubjectByClas.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3020302', '考试情况', '30203', 'examInfo()', 'examController/examInfo.do,examController/examInfo1.do,examController/findExamClasInfoByPage.do,examController/findExamSubjectByPage.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030101', '添加', '30301', 'addStudent()', 'studentController/add.do', '1', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030102', '查看详情', '30301', 'getStudentInfo()', 'studentController/findByPage.do', '5', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030103', '导入学生', '30301', 'importStudent()', 'studentController/importStudent.do', '6', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030104', '修改', '30301', 'updateStudent()', 'scpm/studentController/add.do', '2', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030105', '删除', '30301', 'delStudent()', 'studentController/del.do', '3', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030106', '分配宿舍', '30301', 'studentPart()', '', '7', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030107', '更新头像', '30301', 'updatePhoto()', 'sysFileController/uploadFile.do', '4', '4', 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('3030108', '成绩排名', '30301', 'studentReport1()', 'reportController/report1.do', '8', null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '3', null);
INSERT INTO `sys_menu` VALUES ('4010101', '关联孩子', '40101', 'add()', 'parentController/add.do', null, null, 'T', '1', '2017-08-24 09:41:47', '1', '2017-08-24 09:41:47', '4', null);
INSERT INTO `sys_menu` VALUES ('5010101', '删除', '50101', 'del()', 'schoolCircleControlller/delSchoolCircle.do', null, null, 'T', null, null, null, null, '0', null);
INSERT INTO `sys_menu` VALUES ('5010102', '查看赞', '50101', 'getHeart()', 'schoolCircleControlller/getPageBeanSchoolCircleHeart.do', null, null, 'T', null, null, null, null, '0', null);
INSERT INTO `sys_menu` VALUES ('5010103', '查看评论', '50101', 'getComment()', 'schoolCircleControlller/getPageBeanSchoolCircleCommon.do', null, null, 'T', null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL COMMENT '序列号',
  `create_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT 'T',
  `school_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '0', '1', '2017-05-24 14:42:43', '1', '2017-05-24 14:42:47', 'T', '0');
INSERT INTO `sys_role` VALUES ('2', '学校管理员', '0', '1', '2017-05-24 14:42:43', '1', '2017-05-24 14:42:47', 'T', '0');
INSERT INTO `sys_role` VALUES ('3', '学校人员', '0', '1', '2017-05-24 14:42:43', '1', '2017-05-24 14:42:47', 'T', '0');
INSERT INTO `sys_role` VALUES ('4', '家长', '0', '1', '2017-05-24 14:42:43', '1', '2017-05-24 14:42:47', 'T', '0');
INSERT INTO `sys_role` VALUES ('5', '校长', null, null, null, null, null, 'T', '1');
INSERT INTO `sys_role` VALUES ('6', '年级主任', null, null, null, null, null, 'T', '1');
INSERT INTO `sys_role` VALUES ('7', '班主任', null, null, null, null, null, 'T', '1');
INSERT INTO `sys_role` VALUES ('8', '教师', null, null, null, null, null, 'T', '1');
INSERT INTO `sys_role` VALUES ('9', '副校长', null, null, null, null, null, 'T', '1');

-- ----------------------------
-- Table structure for sys_role_clas
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_clas`;
CREATE TABLE `sys_role_clas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clas_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `crreate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_clas
-- ----------------------------
INSERT INTO `sys_role_clas` VALUES ('9', '1', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('10', '8', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('11', '9', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('12', '10', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('13', '11', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('14', '2', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('15', '12', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('16', '13', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('17', '14', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('18', '15', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('19', '16', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('20', '3', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('21', '17', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('22', '4', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('23', '18', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('24', '5', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('25', '19', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('26', '6', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('27', '20', '5', null, null);
INSERT INTO `sys_role_clas` VALUES ('28', '1', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('29', '8', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('30', '9', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('31', '10', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('32', '11', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('33', '2', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('34', '12', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('35', '13', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('36', '14', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('37', '15', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('38', '16', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('39', '3', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('40', '17', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('41', '4', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('42', '18', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('43', '5', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('44', '19', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('45', '6', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('46', '20', '6', null, null);
INSERT INTO `sys_role_clas` VALUES ('52', '1', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('53', '8', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('54', '9', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('55', '10', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('56', '11', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('57', '2', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('58', '12', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('59', '13', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('60', '14', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('61', '15', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('62', '16', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('63', '3', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('64', '17', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('65', '4', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('66', '18', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('67', '5', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('68', '19', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('69', '6', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('70', '20', '7', null, null);
INSERT INTO `sys_role_clas` VALUES ('88', '1', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('89', '8', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('90', '9', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('91', '10', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('92', '11', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('93', '2', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('94', '12', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('95', '13', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('96', '14', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('97', '15', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('98', '16', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('99', '3', '8', null, null);
INSERT INTO `sys_role_clas` VALUES ('100', '17', '8', null, null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1087 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('726', '1', '1', null, null);
INSERT INTO `sys_role_menu` VALUES ('727', '1', '101', null, null);
INSERT INTO `sys_role_menu` VALUES ('728', '1', '10101', null, null);
INSERT INTO `sys_role_menu` VALUES ('729', '1', '1010101', null, null);
INSERT INTO `sys_role_menu` VALUES ('730', '1', '102', null, null);
INSERT INTO `sys_role_menu` VALUES ('731', '1', '10201', null, null);
INSERT INTO `sys_role_menu` VALUES ('732', '1', '103', null, null);
INSERT INTO `sys_role_menu` VALUES ('733', '1', '10301', null, null);
INSERT INTO `sys_role_menu` VALUES ('734', '1', '1030101', null, null);
INSERT INTO `sys_role_menu` VALUES ('735', '1', '1030102', null, null);
INSERT INTO `sys_role_menu` VALUES ('736', '1', '1030103', null, null);
INSERT INTO `sys_role_menu` VALUES ('737', '1', '1030104', null, null);
INSERT INTO `sys_role_menu` VALUES ('738', '1', '1030105', null, null);
INSERT INTO `sys_role_menu` VALUES ('739', '1', '104', null, null);
INSERT INTO `sys_role_menu` VALUES ('740', '1', '10401', null, null);
INSERT INTO `sys_role_menu` VALUES ('741', '1', '1040101', null, null);
INSERT INTO `sys_role_menu` VALUES ('742', '1', '1040102', null, null);
INSERT INTO `sys_role_menu` VALUES ('743', '1', '1040103', null, null);
INSERT INTO `sys_role_menu` VALUES ('744', '1', '1040104', null, null);
INSERT INTO `sys_role_menu` VALUES ('745', '1', '5', null, null);
INSERT INTO `sys_role_menu` VALUES ('746', '1', '501', null, null);
INSERT INTO `sys_role_menu` VALUES ('747', '1', '50101', null, null);
INSERT INTO `sys_role_menu` VALUES ('748', '1', '5010101', null, null);
INSERT INTO `sys_role_menu` VALUES ('749', '1', '5010102', null, null);
INSERT INTO `sys_role_menu` VALUES ('750', '1', '5010103', null, null);
INSERT INTO `sys_role_menu` VALUES ('780', '5', '3', null, null);
INSERT INTO `sys_role_menu` VALUES ('781', '5', '301', null, null);
INSERT INTO `sys_role_menu` VALUES ('782', '5', '30101', null, null);
INSERT INTO `sys_role_menu` VALUES ('783', '5', '30102', null, null);
INSERT INTO `sys_role_menu` VALUES ('784', '5', '30103', null, null);
INSERT INTO `sys_role_menu` VALUES ('785', '5', '3010301', null, null);
INSERT INTO `sys_role_menu` VALUES ('786', '5', '302', null, null);
INSERT INTO `sys_role_menu` VALUES ('787', '5', '30201', null, null);
INSERT INTO `sys_role_menu` VALUES ('788', '5', '3020101', null, null);
INSERT INTO `sys_role_menu` VALUES ('789', '5', '30202', null, null);
INSERT INTO `sys_role_menu` VALUES ('790', '5', '3020201', null, null);
INSERT INTO `sys_role_menu` VALUES ('791', '5', '30203', null, null);
INSERT INTO `sys_role_menu` VALUES ('792', '5', '3020301', null, null);
INSERT INTO `sys_role_menu` VALUES ('793', '5', '3020302', null, null);
INSERT INTO `sys_role_menu` VALUES ('871', '8', '3', null, null);
INSERT INTO `sys_role_menu` VALUES ('872', '8', '301', null, null);
INSERT INTO `sys_role_menu` VALUES ('873', '8', '30101', null, null);
INSERT INTO `sys_role_menu` VALUES ('874', '8', '30103', null, null);
INSERT INTO `sys_role_menu` VALUES ('875', '8', '3010301', null, null);
INSERT INTO `sys_role_menu` VALUES ('876', '8', '30102', null, null);
INSERT INTO `sys_role_menu` VALUES ('877', '8', '302', null, null);
INSERT INTO `sys_role_menu` VALUES ('878', '8', '30201', null, null);
INSERT INTO `sys_role_menu` VALUES ('879', '8', '3020101', null, null);
INSERT INTO `sys_role_menu` VALUES ('880', '8', '30202', null, null);
INSERT INTO `sys_role_menu` VALUES ('881', '8', '3020201', null, null);
INSERT INTO `sys_role_menu` VALUES ('882', '8', '30203', null, null);
INSERT INTO `sys_role_menu` VALUES ('883', '8', '3020301', null, null);
INSERT INTO `sys_role_menu` VALUES ('884', '8', '3020302', null, null);
INSERT INTO `sys_role_menu` VALUES ('885', '8', '303', null, null);
INSERT INTO `sys_role_menu` VALUES ('886', '8', '30301', null, null);
INSERT INTO `sys_role_menu` VALUES ('887', '8', '3030101', null, null);
INSERT INTO `sys_role_menu` VALUES ('888', '8', '3030102', null, null);
INSERT INTO `sys_role_menu` VALUES ('889', '8', '3030103', null, null);
INSERT INTO `sys_role_menu` VALUES ('890', '8', '3030104', null, null);
INSERT INTO `sys_role_menu` VALUES ('891', '8', '3030105', null, null);
INSERT INTO `sys_role_menu` VALUES ('892', '8', '3030106', null, null);
INSERT INTO `sys_role_menu` VALUES ('893', '8', '3030107', null, null);
INSERT INTO `sys_role_menu` VALUES ('894', '8', '3030108', null, null);
INSERT INTO `sys_role_menu` VALUES ('922', '4', '4', null, null);
INSERT INTO `sys_role_menu` VALUES ('923', '4', '401', null, null);
INSERT INTO `sys_role_menu` VALUES ('924', '4', '40101', null, null);
INSERT INTO `sys_role_menu` VALUES ('925', '4', '4010101', null, null);
INSERT INTO `sys_role_menu` VALUES ('926', '4', '40102', null, null);
INSERT INTO `sys_role_menu` VALUES ('1053', '2', '2', null, null);
INSERT INTO `sys_role_menu` VALUES ('1054', '2', '201', null, null);
INSERT INTO `sys_role_menu` VALUES ('1055', '2', '20101', null, null);
INSERT INTO `sys_role_menu` VALUES ('1056', '2', '2010101', null, null);
INSERT INTO `sys_role_menu` VALUES ('1057', '2', '20102', null, null);
INSERT INTO `sys_role_menu` VALUES ('1058', '2', '2010202', null, null);
INSERT INTO `sys_role_menu` VALUES ('1059', '2', '20103', null, null);
INSERT INTO `sys_role_menu` VALUES ('1060', '2', '2010301', null, null);
INSERT INTO `sys_role_menu` VALUES ('1061', '2', '20104', null, null);
INSERT INTO `sys_role_menu` VALUES ('1062', '2', '2010401', null, null);
INSERT INTO `sys_role_menu` VALUES ('1063', '2', '2010402', null, null);
INSERT INTO `sys_role_menu` VALUES ('1064', '2', '2010403', null, null);
INSERT INTO `sys_role_menu` VALUES ('1065', '2', '20105', null, null);
INSERT INTO `sys_role_menu` VALUES ('1066', '2', '2010501', null, null);
INSERT INTO `sys_role_menu` VALUES ('1067', '2', '20106', null, null);
INSERT INTO `sys_role_menu` VALUES ('1068', '2', '2010601', null, null);
INSERT INTO `sys_role_menu` VALUES ('1069', '2', '2010602', null, null);
INSERT INTO `sys_role_menu` VALUES ('1070', '2', '2010603', null, null);
INSERT INTO `sys_role_menu` VALUES ('1071', '2', '2010604', null, null);
INSERT INTO `sys_role_menu` VALUES ('1072', '2', '20107', null, null);
INSERT INTO `sys_role_menu` VALUES ('1073', '2', '2010701', null, null);
INSERT INTO `sys_role_menu` VALUES ('1074', '2', '2010702', null, null);
INSERT INTO `sys_role_menu` VALUES ('1075', '2', '2010711', null, null);
INSERT INTO `sys_role_menu` VALUES ('1076', '2', '20108', null, null);
INSERT INTO `sys_role_menu` VALUES ('1077', '2', '2010801', null, null);
INSERT INTO `sys_role_menu` VALUES ('1078', '2', '2010802', null, null);
INSERT INTO `sys_role_menu` VALUES ('1079', '2', '2010803', null, null);
INSERT INTO `sys_role_menu` VALUES ('1080', '2', '2010804', null, null);
INSERT INTO `sys_role_menu` VALUES ('1081', '2', '2010805', null, null);
INSERT INTO `sys_role_menu` VALUES ('1082', '2', '2010806', null, null);
INSERT INTO `sys_role_menu` VALUES ('1083', '2', '2010807', null, null);
INSERT INTO `sys_role_menu` VALUES ('1084', '2', '2010808', null, null);
INSERT INTO `sys_role_menu` VALUES ('1085', '2', '20109', null, null);
INSERT INTO `sys_role_menu` VALUES ('1086', '2', '2010901', null, null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '昵称',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实名称',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) NOT NULL COMMENT '手机',
  `id_card` varchar(255) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `email` varchar(255) DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `enable_flag` varchar(255) DEFAULT 'T',
  `school_id` int(11) DEFAULT NULL COMMENT '本字段主要给学校人员使用,对于学校管理员和家长没有任何关联',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`) USING BTREE,
  UNIQUE KEY `user_name` (`name`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '超级管理员', 'admin', '13333333333', '130428199211140926', '河北省邯郸市', 'qiaoshemei@163.com', null, '2017-03-28 22:20:30', '1', '2017-03-28 22:20:30', '1', 'T', null);
INSERT INTO `sys_user` VALUES ('7', 'orchjoe', 'orchjoe', 'orchjoe', '13333102312', '130428199211140926', '河北省邯郸市肥乡区恒泰花园', 'ly@163.com', null, null, null, null, null, 'T', null);
INSERT INTO `sys_user` VALUES ('8', 'jiazhang', '家长', 'jiazhang', '13333102313', '130428199211140926', '河北省邯郸市肥乡县', 'mmm@126.com', null, null, null, '2017-06-04 19:19:14', '1', 'T', null);
INSERT INTO `sys_user` VALUES ('20', 'user1', '乔石鹏', 'admin', '13333101000', '130428198910010000', '河北省邯郸市肥乡县', '111@163.com', null, null, null, null, null, 'T', '1');
INSERT INTO `sys_user` VALUES ('21', 'school0', 'school0', 'school', '13333102310', null, null, null, null, null, null, null, null, 'T', null);
INSERT INTO `sys_user` VALUES ('22', 'school1', 'school', 'school', '13333102309', null, 'hahahahaha', 'wlwlw@111.com', null, null, null, '2017-08-01 19:43:46', '1', 'T', null);
INSERT INTO `sys_user` VALUES ('23', '18210729410', '乔渝', 'qiaoyu', '18210729410', '130428198910010001', '河北省邯郸市', 'qiaoshemei1@163.com', null, null, null, '2017-10-31 10:55:56', null, 'T', '1');
INSERT INTO `sys_user` VALUES ('26', '18210729411', '杨赛北', 'admin', '18210729411', '130428198910010002', '河北省邯郸市', 'qiaoshemei2@163.com', null, null, null, '2017-10-31 11:06:39', null, 'T', '1');
INSERT INTO `sys_user` VALUES ('27', 'xinyuan', '新苑小学管理员', '456789', '18210729414', '130428198910010134', '河北省邯郸市', 'qiaoshemei4@163.com', null, null, null, '2017-10-31 14:42:25', '1', 'T', null);
INSERT INTO `sys_user` VALUES ('28', 'oo', 'qq', null, '13333102318', null, '123', 'sss@www.com', null, null, null, '2017-11-29 10:36:46', null, 'T', null);
INSERT INTO `sys_user` VALUES ('33', 'oo2', 'qq', null, '13333102322', null, '123', 'ss83s@www.com', null, null, null, '2017-11-29 10:54:46', null, 'T', null);
INSERT INTO `sys_user` VALUES ('34', '12ewq', '213', null, '13333232323', null, '321321', '222ss@werr.com', null, null, null, '2017-11-29 10:58:07', null, 'T', null);
INSERT INTO `sys_user` VALUES ('35', '321322dd', '222', null, '12311111113', null, '321', '321321@dfds.com', null, null, null, '2017-11-29 10:59:05', null, 'T', null);
INSERT INTO `sys_user` VALUES ('36', '321322dd2', '222', null, '12313111113', null, '321', '32132122@dfds.com', null, null, null, '2017-11-29 10:59:22', null, 'T', null);

-- ----------------------------
-- Table structure for sys_user_mobile
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_mobile`;
CREATE TABLE `sys_user_mobile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `tocken_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_mobile
-- ----------------------------
INSERT INTO `sys_user_mobile` VALUES ('12', '1', '352419010921977', 'adminf229c836-027d-493d-a394-1bc284cfc3de');
INSERT INTO `sys_user_mobile` VALUES ('13', '1', '862548034489448,862548034489455', 'admin3b5eac2a-ea5c-4004-9d03-3bb6aa486aa3');
INSERT INTO `sys_user_mobile` VALUES ('14', '20', '355372010941973', 'user12e4aa845-ad2b-47db-9e57-098662d5fac8');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('6', '1', '1', null, null);
INSERT INTO `sys_user_role` VALUES ('7', '7', '2', null, null);
INSERT INTO `sys_user_role` VALUES ('8', '20', '8', null, null);
INSERT INTO `sys_user_role` VALUES ('13', '8', '4', null, null);
INSERT INTO `sys_user_role` VALUES ('14', '21', '2', null, null);
INSERT INTO `sys_user_role` VALUES ('15', '22', '2', null, null);
INSERT INTO `sys_user_role` VALUES ('21', '27', '2', null, null);
INSERT INTO `sys_user_role` VALUES ('22', '23', '8', null, null);
INSERT INTO `sys_user_role` VALUES ('24', '26', '5', null, null);
INSERT INTO `sys_user_role` VALUES ('25', '33', '0', null, null);
INSERT INTO `sys_user_role` VALUES ('26', '34', '0', null, null);
INSERT INTO `sys_user_role` VALUES ('27', '35', '7', null, null);
INSERT INTO `sys_user_role` VALUES ('28', '36', '5', null, null);
