/*
Navicat MySQL Data Transfer

Source Server         : haha
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : test2

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-08-04 11:54:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_brand`
-- ----------------------------
DROP TABLE IF EXISTS `s_brand`;
CREATE TABLE `s_brand` (
  `brandid` int(11) NOT NULL AUTO_INCREMENT,
  `brandname` varchar(25) DEFAULT NULL,
  `brandpic` varchar(255) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_brand
-- ----------------------------

-- ----------------------------
-- Table structure for `s_carpicture`
-- ----------------------------
DROP TABLE IF EXISTS `s_carpicture`;
CREATE TABLE `s_carpicture` (
  `carpictureid` int(11) NOT NULL AUTO_INCREMENT,
  `S_p_productid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `picture1` varchar(255) DEFAULT NULL,
  `islooping` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`carpictureid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_carpicture
-- ----------------------------

-- ----------------------------
-- Table structure for `s_cartype`
-- ----------------------------
DROP TABLE IF EXISTS `s_cartype`;
CREATE TABLE `s_cartype` (
  `cartypeid` int(11) NOT NULL AUTO_INCREMENT,
  `S_b_brandid` int(11) DEFAULT NULL,
  `brandid` int(11) DEFAULT NULL,
  `cartypename` varchar(25) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cartypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_cartype
-- ----------------------------

-- ----------------------------
-- Table structure for `s_collection`
-- ----------------------------
DROP TABLE IF EXISTS `s_collection`;
CREATE TABLE `s_collection` (
  `collectionid` int(11) NOT NULL AUTO_INCREMENT,
  `S_p_productid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `marketprice` varchar(10) DEFAULT NULL,
  `sourongprice` varchar(10) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `productiontime` datetime DEFAULT NULL,
  `coverpict` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`collectionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_collection
-- ----------------------------

-- ----------------------------
-- Table structure for `s_company`
-- ----------------------------
DROP TABLE IF EXISTS `s_company`;
CREATE TABLE `s_company` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `companyphone` varchar(40) DEFAULT NULL,
  `companyQR` varchar(255) DEFAULT NULL,
  `companyadress` varchar(100) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_company
-- ----------------------------

-- ----------------------------
-- Table structure for `s_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `s_configuration`;
CREATE TABLE `s_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
  `S_p_productid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `mainoilconsumption` varchar(36) DEFAULT NULL,
  `comprehensiveoilconsumption` varchar(36) DEFAULT NULL,
  `size` varchar(36) DEFAULT NULL,
  `structure` varchar(36) DEFAULT NULL,
  `warranty` varchar(36) DEFAULT NULL,
  `transmissioncase` varchar(36) DEFAULT NULL,
  `engine` varchar(36) DEFAULT NULL,
  `driverway` varchar(36) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_configuration
-- ----------------------------

-- ----------------------------
-- Table structure for `s_consultant`
-- ----------------------------
DROP TABLE IF EXISTS `s_consultant`;
CREATE TABLE `s_consultant` (
  `consultantid` int(11) NOT NULL AUTO_INCREMENT,
  `S_p_productid` int(11) DEFAULT NULL,
  `S_u_userid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `userphone` varchar(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `isreply` int(11) DEFAULT NULL,
  `replyresult` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`consultantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_consultant
-- ----------------------------

-- ----------------------------
-- Table structure for `s_product`
-- ----------------------------
DROP TABLE IF EXISTS `s_product`;
CREATE TABLE `s_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `configurationid` int(11) DEFAULT NULL,
  `brandname` varchar(25) DEFAULT NULL,
  `cartype` varchar(25) DEFAULT NULL,
  `marketprice` varchar(10) DEFAULT NULL,
  `sourongprice` varchar(10) DEFAULT NULL,
  `productiontime` datetime DEFAULT NULL,
  `coverpic` varchar(255) DEFAULT NULL,
  `picintroduction` varchar(128) DEFAULT NULL,
  `isdisplay` int(11) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

-- ----------------------------
-- Records of s_product
-- ----------------------------

-- ----------------------------
-- Table structure for `s_user`
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `userphone` varchar(20) DEFAULT NULL,
  `openid` varchar(11) DEFAULT NULL,
  `islogout` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_user
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '11', 'admin', '3cccc4a5-3b16-454d-aa7f-9e28b2b3ed13', '0a35d763f2c21ceb0c4407ede0ad4a42', '2017-07-21 17:54:14');
INSERT INTO `user` VALUES ('80e7470d-4633-4712-b926-00a453ab3855', '12', '11', 'e9428f8c-4326-44a7-b392-07e9365b404e', '752b8bfa5f3a6f1f0805764ad1ab5546', '2017-05-12 17:35:10');
INSERT INTO `user` VALUES ('a8de6820-2d21-4081-b5af-8771fa152c18', '12', '11', '000d188c-0aac-444d-8df9-a3662e6c9be6', 'b4fb623ba5dd264a5b06e2638c259455', '2017-05-12 14:59:23');
INSERT INTO `user` VALUES ('c594ca3f-d571-4558-8508-4a994201e699', '张三', '11', '4931950c-b995-4cc6-ba02-ede79a9ead1b', '3962087ef4ccf53d7a15b884dd733fda', '2017-05-22 17:58:55');
INSERT INTO `user` VALUES ('c6f1df2a-ac95-4b6e-947f-908b4ce789d1', 'datwai', 'datwai', '3800af1f-81fb-4f2a-b663-53dff52b100a', 'b64c2d433e28c69eb5ff70b98a9ab7cc', '2017-05-23 09:51:42');
INSERT INTO `user` VALUES ('e4040c44-d970-4b5f-bada-267517c7f400', '1112222', '1112222', '753c67e6-8b86-485a-bd9e-879397466bd1', 'db4a1e4da5336038421259d4cf94746b', '2017-05-16 10:25:40');
