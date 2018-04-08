/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1-root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : chc

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-04-08 19:55:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chc_doctor_info`
-- ----------------------------
DROP TABLE IF EXISTS `chc_doctor_info`;
CREATE TABLE `chc_doctor_info` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统主键',
  `user_id` int(11) NOT NULL COMMENT '登录账号',
  `doctor_name` varchar(20) NOT NULL COMMENT '医生姓名',
  `sex` varchar(2) NOT NULL COMMENT '性别',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `id_card_no` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像图片',
  `qafca_cert_no` varchar(40) NOT NULL COMMENT '医师资格证书编号',
  `qafca_cert_img` varchar(100) DEFAULT NULL COMMENT '医师资格证书图片',
  `qafca_cert_sign_date` varchar(14) DEFAULT NULL COMMENT '发证日期',
  `pract_cert_no` varchar(20) NOT NULL COMMENT '执业资格证书',
  `pract_cert_img` varchar(100) DEFAULT NULL COMMENT '执业资格证书图片',
  `pract_cert_register_date` varchar(20) DEFAULT NULL COMMENT '执业资格证书注册日期',
  `hospital_id` int(11) DEFAULT NULL COMMENT '医院',
  `hospital_name` varchar(100) DEFAULT NULL,
  `subject_id` varchar(20) DEFAULT NULL COMMENT '科室',
  `subject_name` varchar(40) DEFAULT NULL,
  `level_id` varchar(40) DEFAULT NULL COMMENT '职务级别',
  `level_name` varchar(40) DEFAULT NULL,
  `doctor_no` varchar(40) DEFAULT NULL COMMENT '医师编号',
  `college_name` varchar(100) DEFAULT NULL COMMENT '大学名称',
  `work_age` varchar(3) DEFAULT NULL COMMENT '工作年限',
  `fav_subject` varchar(100) DEFAULT NULL COMMENT '擅长领域',
  `office_phone` varchar(20) DEFAULT NULL COMMENT '办公电话-固话',
  `personal_phone` varchar(20) DEFAULT NULL COMMENT '个人电话',
  `status` varchar(4) DEFAULT NULL COMMENT '状态',
  `input_type` varchar(1) DEFAULT '1' COMMENT '数据录入方式1：内部录入，0：个人注册',
  `description` varchar(1000) DEFAULT NULL COMMENT '医师简介',
  `score` float(11,2) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`doctor_id`,`id_card_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chc_doctor_info
-- ----------------------------
INSERT INTO `chc_doctor_info` VALUES ('1', '1', '张医师', '男', '1988-09-20', '360622198809201536', null, 'A3423432432423', null, '2017-09-20', '1232132132', null, '2017-09-20', '1', null, '2', null, '1', null, null, null, '2', null, null, null, '0', '1', null, '0.00', null, null);
INSERT INTO `chc_doctor_info` VALUES ('2', '2', '李医师', '女 ', '1985-07-11', '360622198809201532', null, '22312321321', null, '2017-09-20', '1232132132', null, '2017-09-20', '1', null, '2', null, '3', null, null, null, '4', '眼科', '2321321321', '1111111', '0', '1', '32132132132132132', '0.00', null, null);
