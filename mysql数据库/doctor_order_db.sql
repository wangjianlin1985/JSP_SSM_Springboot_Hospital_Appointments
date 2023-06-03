/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : doctor_order_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2018-07-06 19:02:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL default '',
  `password` varchar(32) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('a', 'a');

-- ----------------------------
-- Table structure for `t_department`
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `departmentId` int(11) NOT NULL auto_increment COMMENT '科室id',
  `departmentName` varchar(20) NOT NULL COMMENT '科室名称',
  `departmentDesc` varchar(5000) default NULL COMMENT '科室介绍',
  `birthDate` varchar(20) default NULL COMMENT '成立日期',
  `chargeMan` varchar(20) default NULL COMMENT '负责人',
  PRIMARY KEY  (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', '肝胆外科', '<p>主要检查和治疗肝胆内脏疾病信息</p>', '2018-03-13', '李达');
INSERT INTO `t_department` VALUES ('2', '消化内科', '<p>胃肠道和消化有关的！</p>', '2018-03-22', '王小龙');

-- ----------------------------
-- Table structure for `t_doctor`
-- ----------------------------
DROP TABLE IF EXISTS `t_doctor`;
CREATE TABLE `t_doctor` (
  `doctorNumber` varchar(20) NOT NULL COMMENT 'doctorNumber',
  `password` varchar(20) default NULL COMMENT '登录密码',
  `departmentObj` int(11) NOT NULL COMMENT '所在科室',
  `doctorName` varchar(20) NOT NULL COMMENT '医生姓名',
  `sex` varchar(4) NOT NULL COMMENT '性别',
  `doctorPhoto` varchar(60) NOT NULL COMMENT '医生照片',
  `birthDate` varchar(20) default NULL COMMENT '出生日期',
  `position` varchar(20) NOT NULL COMMENT '医生职位',
  `experience` varchar(20) NOT NULL COMMENT '工作经验',
  `contactWay` varchar(20) default NULL COMMENT '联系方式',
  `goodAt` varchar(200) default NULL COMMENT '擅长',
  `doctorDesc` varchar(8000) NOT NULL COMMENT '医生介绍',
  PRIMARY KEY  (`doctorNumber`),
  KEY `departmentObj` (`departmentObj`),
  CONSTRAINT `t_doctor_ibfk_1` FOREIGN KEY (`departmentObj`) REFERENCES `t_department` (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_doctor
-- ----------------------------
INSERT INTO `t_doctor` VALUES ('YS001', '123', '1', '刘光飞', '男', 'upload/f9232dda-d52a-4f2f-ba90-f60935537e60.jpg', '2018-03-13', '主治医师', '5年', '13084083083', '肝胆结石', '<ul class=\"art_list list-paddingleft-2\" style=\"list-style-type: none;\"><li><h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 28px;\">擅长疾病</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-size: 14px; line-height: 24px;\">擅长肝胆胰疾病的临床诊治，特别在肝脏移植，胰十二指肠切除，肝癌的外科治疗，肝内外胆管结石的手术治疗及重症急性胰腺炎的临床治疗方面有较深的造诣，主刀完成一百多例肝脏移植手术，手术成功率高，并实现了“零输血”的肝移植手术，达到国内先进水平。</p></li><li><h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 28px;\">从医历程</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-size: 14px; line-height: 24px;\">1984年毕业于第一军医大学军医系，一直在南方医院肝胆外科工作至今。1988年～1991年在第一军医大学获硕士学位，师从著名外科专家周正端教授。1995年晋升为副教授、副主任医师，1999年担任肝胆外科副主任、支部书记，2002年晋升为教授、主任医师，并担任博士生导师，2003年任肝胆外科主任。</p></li><li><h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 28px;\">科研情况</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-size: 14px; line-height: 24px;\">承担国家自然科学基金、广东省科技攻关课题基金等课题8项。主编出版专著1部，发表论文50多篇。</p></li><li><h3 style=\"margin: 0px; padding: 0px; border: 0px; font-size: 14px; color: rgb(51, 51, 51); line-height: 28px;\">学术任职</h3><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; text-indent: 2em; color: rgb(102, 102, 102); font-size: 14px; line-height: 24px;\">担任广东省肝胆外科学分会副主任委员，广东省肝病学会肝癌专业委员会主任委员，中国医师协会理事，广州抗癌协会理事，肝胆胰肿瘤专业委员会副主任委员，《中华外科杂志》通讯编委，《岭南现代临床外科》杂志常务编委等职务。</p></li></ul><p><br/></p>');
INSERT INTO `t_doctor` VALUES ('YS002', '123', '1', '李明发', '男', 'upload/abea8046-2f3a-41a2-a4b0-299bd4fe2c48.jpg', '2018-03-13', '主治医师', '5年', '13985083498', '肝胆结石', '<p>test</p>');

-- ----------------------------
-- Table structure for `t_leaveword`
-- ----------------------------
DROP TABLE IF EXISTS `t_leaveword`;
CREATE TABLE `t_leaveword` (
  `leaveWordId` int(11) NOT NULL auto_increment COMMENT '留言id',
  `leaveTitle` varchar(80) NOT NULL COMMENT '留言标题',
  `leaveContent` varchar(2000) NOT NULL COMMENT '留言内容',
  `userObj` varchar(30) NOT NULL COMMENT '留言人',
  `leaveTime` varchar(20) default NULL COMMENT '留言时间',
  `replyContent` varchar(1000) default NULL COMMENT '管理回复',
  `replyTime` varchar(20) default NULL COMMENT '回复时间',
  PRIMARY KEY  (`leaveWordId`),
  KEY `userObj` (`userObj`),
  CONSTRAINT `t_leaveword_ibfk_1` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leaveword
-- ----------------------------
INSERT INTO `t_leaveword` VALUES ('1', '这里有治疗甲状腺的医生吗', '我妈妈的甲状腺好像有甲亢表现，需要检查下', 'user1', '2018-03-13 19:41:04', '可以的，甲状腺科', '2018-03-13 19:41:16');

-- ----------------------------
-- Table structure for `t_news`
-- ----------------------------
DROP TABLE IF EXISTS `t_news`;
CREATE TABLE `t_news` (
  `newsId` int(11) NOT NULL auto_increment COMMENT '新闻id',
  `newsTitle` varchar(100) NOT NULL COMMENT '新闻标题',
  `newsPhoto` varchar(60) NOT NULL COMMENT '新闻图片',
  `newsContent` varchar(8000) NOT NULL COMMENT '新闻内容',
  `newsDate` varchar(20) default NULL COMMENT '新闻日期',
  `newsFrom` varchar(30) default NULL COMMENT '新闻来源',
  PRIMARY KEY  (`newsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_news
-- ----------------------------
INSERT INTO `t_news` VALUES ('1', '医院预约网站成立了', 'upload/b9aff3b4-3a28-4204-8547-0898042baa42.jpg', '<p>以后同志们要预约看病直接来这个平台</p>', '2018-03-13', '22');

-- ----------------------------
-- Table structure for `t_orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_orderinfo`;
CREATE TABLE `t_orderinfo` (
  `orderId` int(11) NOT NULL auto_increment COMMENT '预约id',
  `userObj` varchar(30) NOT NULL COMMENT '预约用户',
  `doctorObj` varchar(20) NOT NULL COMMENT '预约医生',
  `orderDate` varchar(20) default NULL COMMENT '预约日期',
  `timeInterval` varchar(20) NOT NULL COMMENT '时段',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `orderTime` varchar(20) default NULL COMMENT '下单时间',
  `checkState` varchar(20) NOT NULL COMMENT '处理状态',
  `replyContent` varchar(800) NOT NULL COMMENT '医生回复',
  PRIMARY KEY  (`orderId`),
  KEY `userObj` (`userObj`),
  KEY `doctorObj` (`doctorObj`),
  CONSTRAINT `t_orderinfo_ibfk_1` FOREIGN KEY (`userObj`) REFERENCES `t_userinfo` (`user_name`),
  CONSTRAINT `t_orderinfo_ibfk_2` FOREIGN KEY (`doctorObj`) REFERENCES `t_doctor` (`doctorNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orderinfo
-- ----------------------------
INSERT INTO `t_orderinfo` VALUES ('1', 'user1', 'YS001', '2018-03-13', '上午9点', '13598308394', '2018-03-06 19:14:31', '审核通过', '你到时准时来哈');
INSERT INTO `t_orderinfo` VALUES ('2', 'user2', 'YS001', '2018-03-30', '上午9点', '13589834342', '2018-03-22 18:34:33', '待处理', '--');
INSERT INTO `t_orderinfo` VALUES ('3', 'user1', 'YS001', '2018-07-11', '上午10点', '13980834234', '2018-07-06 18:52:18', '审核通过', '早点来吧');

-- ----------------------------
-- Table structure for `t_patient`
-- ----------------------------
DROP TABLE IF EXISTS `t_patient`;
CREATE TABLE `t_patient` (
  `patientId` int(11) NOT NULL auto_increment COMMENT '病人id',
  `doctorObj` varchar(20) NOT NULL COMMENT '医生',
  `patientName` varchar(20) NOT NULL COMMENT '病人姓名',
  `sex` varchar(4) NOT NULL COMMENT '性别',
  `cardNumber` varchar(30) NOT NULL COMMENT '身份证号',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `illnessCase` varchar(8000) NOT NULL COMMENT '病人病例',
  `addTime` varchar(20) default NULL COMMENT '登记时间',
  PRIMARY KEY  (`patientId`),
  KEY `doctorObj` (`doctorObj`),
  CONSTRAINT `t_patient_ibfk_1` FOREIGN KEY (`doctorObj`) REFERENCES `t_doctor` (`doctorNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_patient
-- ----------------------------
INSERT INTO `t_patient` VALUES ('1', 'YS001', '李璐', '女', '513014199812112342', '13643435931', '<p>腹部疼痛a</p>', '2018-03-13 19:12:56');

-- ----------------------------
-- Table structure for `t_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `t_userinfo`;
CREATE TABLE `t_userinfo` (
  `user_name` varchar(30) NOT NULL COMMENT 'user_name',
  `password` varchar(30) NOT NULL COMMENT '登录密码',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` varchar(4) NOT NULL COMMENT '性别',
  `birthDate` varchar(20) default NULL COMMENT '出生日期',
  `userPhoto` varchar(60) NOT NULL COMMENT '用户照片',
  `telephone` varchar(20) NOT NULL COMMENT '联系电话',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `address` varchar(80) default NULL COMMENT '家庭地址',
  `regTime` varchar(20) default NULL COMMENT '注册时间',
  PRIMARY KEY  (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userinfo
-- ----------------------------
INSERT INTO `t_userinfo` VALUES ('user1', '123', '双鱼林', '男', '2018-03-13', 'upload/06e466cb-cc6c-4bf0-a4f2-e36cd3857e24.jpg', '13598080834', 'dashen@163.com', '四川成都红星路13号', '2018-03-13 19:13:37');
INSERT INTO `t_userinfo` VALUES ('user2', '123', '寇丽丽', '女', '2018-03-07', 'upload/NoImage.jpg', '13834083843', 'lili@163.COM', '四川南充滨江路', '2018-03-22 18:29:36');
