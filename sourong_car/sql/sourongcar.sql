/*
Navicat MySQL Data Transfer

Source Server         : ftpsourongcar
Source Server Version : 50710
Source Host           : 192.168.20.111:3306
Source Database       : sourongcar

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2017-08-10 20:07:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_article`
-- ----------------------------
DROP TABLE IF EXISTS `s_article`;
CREATE TABLE `s_article` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(36) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_article
-- ----------------------------
INSERT INTO `s_article` VALUES ('1', '关于搜融', '0', '<h4 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: orangered; font-size: 5vw; text-align: center;\">文化及理念介绍</h4><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">“搜融到家”，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">深圳首家社区综合金融体验店，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">告别传统企业以销售为核心的企业经营模式，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">扎根社区，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">专注于各类金融产品及渠道的整合与研究、</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">根据客户状况与需求、</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">量身定制各类金融方案，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">帮助客户融到资、好对资，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">最大可能节约融资成本，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">提升客户融资的过程体验</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: orangered; font-size: 5vw; text-align: center;\">竞争力</h4><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">专业融资顾问一对一全程服务，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">这里没有推销员，只有贴身的金融专家</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">不被负任何产品的销售压力，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">专注于最佳的融资方案，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">不仅要贷到款，更要贷对款</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">专注与品牌建设，坚守公正透明经营理念，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">值得用户托付，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">金融全产品线渠道合作，金融产品应有尽有，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">自有资金雄厚，一站式综合服务</p><p><br/></p>', '2017-08-09 16:13:43', '2017-08-10 10:02:51');
INSERT INTO `s_article` VALUES ('2', '产品介绍', '1', '<h4 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: orangered; font-size: 6vw; text-align: center;\">贷款顾问服务</h4><h5 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit; font-size: 4.5vw; text-align: center;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700;\">零首付购车服务</span></h5><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">搜融到家，联合深圳各平行进口车行，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">为用户提供进口车导购及金融配套服务，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">最高可贷汽车价值200%的贷款，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">买车、换车不花钱，还能多贷款，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">所有平行进口车，均为港口直达，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">每一款车，均保证全城最低价；</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">同时，专业导购师，帮助用户进行需求分析，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">选择合适车型。享受选车、买车、</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">更新指标，贷款服务一站式综合服务。</p><h5 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit; font-size: 4.5vw; text-align: center;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700;\">个人银行抵押贷款</span></h5><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">针对有房的个人用户，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">最高可贷房产价值的100%，月利息低至3.98%，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">贷款期限最长可达30年，随借随还，先息后本，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">各类还款方式任选。评估、赎楼、</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">快速贷全套业务配套</p><h5 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit; font-size: 4.5vw; text-align: center;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700;\">企业经营性贷款</span></h5><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">针对有房的优质企业主，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">最高可贷房产总值的100%-200%，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">3-5年内先息后本，利率低至5.8%起，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">各类还款方式任选。评估、赎楼、</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">全力助力企业发展。</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: orangered; font-size: 6vw; text-align: center;\">常规资金业务</h4><h5 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit; font-size: 4.5vw; text-align: center;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700;\">赎楼、过桥业务</span></h5><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">受理因转加按、房产交易而产生的</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">各类赎楼业务，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">资金稳定，高效快捷，收费透明，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">个人赎楼费率低至万六每天，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">企业过桥费率低至万八每天；</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">免收关外手续费，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">同时支持快速贷、协助提供收款方及贷款用途等</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">一条龙相关业务。</p><h5 style=\"box-sizing: border-box; padding: 0px; margin: 10px 0px; font-family: inherit; font-weight: 500; line-height: 1.1; color: inherit; font-size: 4.5vw; text-align: center;\"><span style=\"box-sizing: border-box; padding: 0px; margin: 0px; font-weight: 700;\">汽车押证、押车业务：</span></h5><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">受理各类汽车抵押业务，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">当天放款，手续简便，利息全城最低，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">支持仅押证或仅押车，支持夫妻单签，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">不看征信，不上征信，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">支持从5万至150万的全部车型，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">最高可放汽车现价的70%-80%，</p><p style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 10px; font-size: 4vw; text-align: center;\">支持1-36个月各期限贷款</p><p><br/></p>', '2017-08-09 16:21:16', '2017-08-10 10:02:18');
INSERT INTO `s_article` VALUES ('3', '合作车行', '2', '<p style=\"margin-bottom: 10px\"><span style=\"font-size:21px;font-family:宋体;color:orangered\">俊汇车行</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">地址：广东省深圳市宝安区工业西路21号</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">电话：13631728939</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 16px;font-family: Arial, sans-serif\">&nbsp;</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size:21px;font-family:宋体;color:orangered\">汇康车行</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">地址：深圳市罗湖区</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">电话：13631728939</span></p><p style=\"margin: 10px 0\"><span style=\"font-size:21px;font-family:&#39;inherit&#39;,&#39;serif&#39;;color:orangered\">&nbsp;</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size:21px;font-family:宋体;color:orangered\">建达诚名车行</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">地址：宝安区西乡街道宝源路2007号宗</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">电话：13631728939</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 16px;font-family: Arial, sans-serif\">&nbsp;</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size:21px;font-family:宋体;color:orangered\">新概念车行</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">地址：深圳市罗湖区</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">电话：13432085066</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 16px;font-family: Arial, sans-serif\">&nbsp;</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size:21px;font-family:宋体;color:orangered\">亿昌车行</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">地址：龙岗区龙岗街道碧新路2211号</span></p><p style=\"margin-bottom: 10px\"><span style=\"font-size: 20px;font-family: 宋体\">电话：13432085066</span></p><p><br/></p>', '2017-08-09 16:23:07', '2017-08-10 17:56:34');

-- ----------------------------
-- Table structure for `s_brand`
-- ----------------------------
DROP TABLE IF EXISTS `s_brand`;
CREATE TABLE `s_brand` (
  `brandid` int(11) NOT NULL AUTO_INCREMENT,
  `brandname` varchar(25) DEFAULT NULL,
  `brandpic` varchar(255) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_brand
-- ----------------------------
INSERT INTO `s_brand` VALUES ('10', '奔驰', '8f24f194-bc0b-41a4-975d-0a72c2dab1dc.png', null, '2017-08-09 15:38:52', '2017-08-09 15:38:52');
INSERT INTO `s_brand` VALUES ('11', '宝马', '04aa5d22-6658-4320-9bf9-1f2f3c0c8734.png', null, '2017-08-09 15:39:12', '2017-08-09 15:39:12');
INSERT INTO `s_brand` VALUES ('12', '福特', '84466758-a723-4980-a674-7af8fc8c293b.png', null, '2017-08-09 15:39:34', '2017-08-09 15:39:34');
INSERT INTO `s_brand` VALUES ('13', '宾利', '5a06c5b1-1635-4b63-b75b-cfa209285399.png', null, '2017-08-09 15:39:50', '2017-08-09 15:41:08');
INSERT INTO `s_brand` VALUES ('14', '捷豹', 'b61c2912-bda5-462d-9410-32a8ef2a98cd.png', null, '2017-08-09 15:40:47', '2017-08-09 15:40:47');
INSERT INTO `s_brand` VALUES ('15', '法拉利', '04866caf-bf77-45b4-836f-71f30a4414a5.png', null, '2017-08-09 15:41:23', '2017-08-09 15:41:23');
INSERT INTO `s_brand` VALUES ('16', '玛莎拉蒂', 'e4cc83d3-c9f1-46e5-a8c4-1edc67af567e.png', null, '2017-08-09 15:41:37', '2017-08-09 15:41:37');
INSERT INTO `s_brand` VALUES ('17', '凯迪拉克', '37d394be-f4db-4ed3-a91c-384ea3588175.png', null, '2017-08-09 15:41:54', '2017-08-09 15:41:54');
INSERT INTO `s_brand` VALUES ('18', '兰博基尼', '2d4efcd4-aacb-4983-8e88-6351e5691b9e.png', null, '2017-08-09 15:42:18', '2017-08-09 15:42:18');
INSERT INTO `s_brand` VALUES ('19', '保时捷', '895646dc-b2c9-4264-82eb-6c0d3d1a6cb9.png', null, '2017-08-09 15:42:40', '2017-08-09 15:42:40');
INSERT INTO `s_brand` VALUES ('20', '福特', '7d9bfa9c-7783-423e-b09d-78ef1f87010f.png', null, '2017-08-10 10:06:41', '2017-08-10 10:06:41');

-- ----------------------------
-- Table structure for `s_carpicture`
-- ----------------------------
DROP TABLE IF EXISTS `s_carpicture`;
CREATE TABLE `s_carpicture` (
  `carpictureid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `islooping` int(11) unsigned zerofill DEFAULT '00000000000',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`carpictureid`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_carpicture
-- ----------------------------
INSERT INTO `s_carpicture` VALUES ('83', '1', '4e88dfd9-f806-489b-98cc-4d21cc5aa6fd.jpg', '00000000000', '2017-08-10 18:13:06', '2017-08-10 19:38:25');
INSERT INTO `s_carpicture` VALUES ('84', '2', '9460d9ca-9639-4813-9672-cc13b357fdbc.jpg', '00000000000', '2017-08-10 18:16:57', '2017-08-10 19:38:17');
INSERT INTO `s_carpicture` VALUES ('85', '4', '1646aaf4-4993-405a-917c-2a0f88f95e05.jpg', '00000000000', '2017-08-10 18:25:34', '2017-08-10 19:38:04');
INSERT INTO `s_carpicture` VALUES ('86', '4', '2784b281-2667-42fd-b404-42daf311d0ee.jpg', '00000000000', '2017-08-10 19:34:17', '2017-08-10 19:35:43');
INSERT INTO `s_carpicture` VALUES ('87', '5', '977a825e-479d-4627-9c99-99066d2abc5b.jpg', '00000000000', '2017-08-10 19:38:33', '2017-08-10 19:38:33');

-- ----------------------------
-- Table structure for `s_cartype`
-- ----------------------------
DROP TABLE IF EXISTS `s_cartype`;
CREATE TABLE `s_cartype` (
  `cartypeid` int(11) NOT NULL AUTO_INCREMENT,
  `brandid` int(11) DEFAULT NULL,
  `cartypename` varchar(25) DEFAULT NULL,
  `orderby` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_cartype
-- ----------------------------
INSERT INTO `s_cartype` VALUES ('3', '10', '奔驰002', null, '2017-08-10 13:04:13', '2017-08-10 13:04:13');
INSERT INTO `s_cartype` VALUES ('4', '10', '奔驰003', null, '2017-08-10 13:12:07', '2017-08-10 13:12:07');
INSERT INTO `s_cartype` VALUES ('7', '11', '宝马001', null, '2017-08-10 13:28:55', '2017-08-10 13:28:55');
INSERT INTO `s_cartype` VALUES ('8', '11', '宝马002', null, '2017-08-10 13:31:40', '2017-08-10 13:31:40');
INSERT INTO `s_cartype` VALUES ('9', '11', '宝马003', null, '2017-08-10 13:36:26', '2017-08-10 13:36:26');
INSERT INTO `s_cartype` VALUES ('11', '10', '请问', null, '2017-08-10 13:37:42', '2017-08-10 13:37:42');
INSERT INTO `s_cartype` VALUES ('12', '12', '福特001', null, '2017-08-10 13:41:03', '2017-08-10 13:41:03');
INSERT INTO `s_cartype` VALUES ('22', '18', '兰博基尼01', null, '2017-08-10 15:29:33', '2017-08-10 15:29:33');
INSERT INTO `s_cartype` VALUES ('23', '18', '兰博基尼02', null, '2017-08-10 15:29:47', '2017-08-10 15:29:47');
INSERT INTO `s_cartype` VALUES ('24', '18', '兰博基尼03', null, '2017-08-10 15:29:58', '2017-08-10 15:29:58');
INSERT INTO `s_cartype` VALUES ('25', '10', 'uuuu', null, '2017-08-10 17:47:41', '2017-08-10 17:47:41');
INSERT INTO `s_cartype` VALUES ('26', '10', 'pppp', null, '2017-08-10 17:51:21', '2017-08-10 17:51:21');
INSERT INTO `s_cartype` VALUES ('27', '10', 'ffjivjv', null, '2017-08-10 17:51:29', '2017-08-10 17:51:29');
INSERT INTO `s_cartype` VALUES ('28', '10', 'vejvnejvne', null, '2017-08-10 17:51:34', '2017-08-10 17:51:34');

-- ----------------------------
-- Table structure for `s_collection`
-- ----------------------------
DROP TABLE IF EXISTS `s_collection`;
CREATE TABLE `s_collection` (
  `collectionid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `marketprice` varchar(10) DEFAULT NULL,
  `sourongprice` varchar(10) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `coverpic` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`collectionid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_collection
-- ----------------------------
INSERT INTO `s_collection` VALUES ('2', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 12:07:20', '2017-08-10 12:07:20');
INSERT INTO `s_collection` VALUES ('3', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 12:09:50', '2017-08-10 12:09:50');
INSERT INTO `s_collection` VALUES ('4', '2', null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 12:10:11', '2017-08-10 12:10:11');
INSERT INTO `s_collection` VALUES ('5', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:14:41', '2017-08-10 14:14:41');
INSERT INTO `s_collection` VALUES ('6', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:21:17', '2017-08-10 14:21:17');
INSERT INTO `s_collection` VALUES ('7', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:23:01', '2017-08-10 14:23:01');
INSERT INTO `s_collection` VALUES ('8', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:24:08', '2017-08-10 14:24:08');
INSERT INTO `s_collection` VALUES ('9', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:25:54', '2017-08-10 14:25:54');
INSERT INTO `s_collection` VALUES ('10', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 14:26:10', '2017-08-10 14:26:10');
INSERT INTO `s_collection` VALUES ('11', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:12:21', '2017-08-10 15:12:21');
INSERT INTO `s_collection` VALUES ('12', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:12:48', '2017-08-10 15:12:48');
INSERT INTO `s_collection` VALUES ('13', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:13:53', '2017-08-10 15:13:53');
INSERT INTO `s_collection` VALUES ('14', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:14:40', '2017-08-10 15:14:40');
INSERT INTO `s_collection` VALUES ('15', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:15:32', '2017-08-10 15:15:32');
INSERT INTO `s_collection` VALUES ('16', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:16:06', '2017-08-10 15:16:06');
INSERT INTO `s_collection` VALUES ('17', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:17:31', '2017-08-10 15:17:31');
INSERT INTO `s_collection` VALUES ('18', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:18:09', '2017-08-10 15:18:09');
INSERT INTO `s_collection` VALUES ('19', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:19:28', '2017-08-10 15:19:28');
INSERT INTO `s_collection` VALUES ('20', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:20:04', '2017-08-10 15:20:04');
INSERT INTO `s_collection` VALUES ('21', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 15:39:47', '2017-08-10 15:39:47');
INSERT INTO `s_collection` VALUES ('22', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 16:57:01', '2017-08-10 16:57:01');
INSERT INTO `s_collection` VALUES ('23', null, null, '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 16:57:02', '2017-08-10 16:57:02');
INSERT INTO `s_collection` VALUES ('24', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 17:43:17', '2017-08-10 17:43:17');
INSERT INTO `s_collection` VALUES ('25', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:08:57', '2017-08-10 18:08:57');
INSERT INTO `s_collection` VALUES ('26', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:10:09', '2017-08-10 18:10:09');
INSERT INTO `s_collection` VALUES ('27', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:14:27', '2017-08-10 18:14:27');
INSERT INTO `s_collection` VALUES ('28', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:15:04', '2017-08-10 18:15:04');
INSERT INTO `s_collection` VALUES ('29', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:16:49', '2017-08-10 18:16:49');
INSERT INTO `s_collection` VALUES ('30', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:22:37', '2017-08-10 18:22:37');
INSERT INTO `s_collection` VALUES ('31', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:23:12', '2017-08-10 18:23:12');
INSERT INTO `s_collection` VALUES ('35', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:28:24', '2017-08-10 18:28:24');
INSERT INTO `s_collection` VALUES ('37', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 18:29:17', '2017-08-10 18:29:17');
INSERT INTO `s_collection` VALUES ('38', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 19:01:37', '2017-08-10 19:01:37');
INSERT INTO `s_collection` VALUES ('39', null, '1', '￥150万', '￥140万', '奔驰CLA', 'images/car1.png', '2017-08-10 19:02:46', '2017-08-10 19:02:46');
INSERT INTO `s_collection` VALUES ('40', null, null, '1232', '23', '宝马', null, '2017-08-10 19:34:40', '2017-08-10 19:34:40');
INSERT INTO `s_collection` VALUES ('41', null, null, '1232', '23', '宝马', null, '2017-08-10 19:58:47', '2017-08-10 19:58:47');

-- ----------------------------
-- Table structure for `s_company`
-- ----------------------------
DROP TABLE IF EXISTS `s_company`;
CREATE TABLE `s_company` (
  `companyid` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(50) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `servicetime` varchar(40) DEFAULT NULL,
  `companyphone` varchar(40) DEFAULT NULL,
  `companyQR` varchar(255) DEFAULT NULL,
  `companyadress` varchar(100) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`companyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_company
-- ----------------------------
INSERT INTO `s_company` VALUES ('1', '搜融好车', '123', null, '0755-85229067', '82457a35-e1ab-46bf-8b94-499428cd9b5d.png', '© 2017 搜融好车 sourong luxury cars.com', '2017-08-07 15:09:42', '2017-08-10 10:31:59');

-- ----------------------------
-- Table structure for `s_configuration`
-- ----------------------------
DROP TABLE IF EXISTS `s_configuration`;
CREATE TABLE `s_configuration` (
  `configurationid` int(11) NOT NULL AUTO_INCREMENT,
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
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`configurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_configuration
-- ----------------------------
INSERT INTO `s_configuration` VALUES ('1', '4', null, null, null, null, null, null, null, null, null, '2017-08-09 14:38:27', '2017-08-09 14:38:27');
INSERT INTO `s_configuration` VALUES ('2', '5', null, null, null, null, null, null, null, null, null, '2017-08-09 14:51:06', '2017-08-09 14:51:06');
INSERT INTO `s_configuration` VALUES ('3', '6', null, null, null, null, null, null, null, null, null, '2017-08-09 14:51:07', '2017-08-09 14:51:07');
INSERT INTO `s_configuration` VALUES ('4', '7', null, null, null, null, null, null, null, null, null, '2017-08-09 14:52:16', '2017-08-09 14:52:16');

-- ----------------------------
-- Table structure for `s_consultant`
-- ----------------------------
DROP TABLE IF EXISTS `s_consultant`;
CREATE TABLE `s_consultant` (
  `consultantid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `userphone` varchar(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `isreply` int(11) DEFAULT NULL,
  `replyresult` varchar(255) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`consultantid`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_consultant
-- ----------------------------
INSERT INTO `s_consultant` VALUES ('3', '3', '客户3', '电话号码：3', '3', '1', '客户反馈结果：31234', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('4', '4', '客户4', '电话号码：4', '4', '1', '客户反馈结果：4', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('5', '5', '客户5', '电话号码：5', '5', '1', '客户反馈结果：5', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('6', '6', '客户6', '电话号码：6', '6', '1', '客户反馈结果：6', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('7', '7', '客户7', '电话号码：7', '7', '1', '客户反馈结果：7777777777', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('8', '8', '客户8', '电话号码：8', '8', '1', '客户反馈结果：8777777', '2017-08-08 12:02:07', '2017-08-08 12:02:07');
INSERT INTO `s_consultant` VALUES ('9', '9', '客户9', '电话号码：9', '9', '1', '客户反馈结果：9', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('10', '10', '客户10', '电话号码：10', '10', '1', '客户反馈结果：10', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('11', '11', '客户11', '电话号码：11', '11', '1', '客户反馈结果：11', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('12', '12', '客户12', '电话号码：12', '12', '1', '客户反馈结果：12', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('13', '13', '客户13', '电话号码：13', '13', '1', '客户反馈结果：13', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('14', '14', '客户14', '电话号码：14', '14', '1', '客户反馈结果：14', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('15', '15', '客户15', '电话号码：15', '15', '1', '客户反馈结果：15', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('16', '16', '客户16', '电话号码：16', '16', '1', '客户反馈结果：16', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('17', '17', '客户17', '电话号码：17', '17', '1', '客户反馈结果：17', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('18', '18', '客户18', '电话号码：18', '18', '1', '客户反馈结果：18', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('19', '19', '客户19', '电话号码：19', '19', '1', '客户反馈结果：19', '2017-08-08 12:02:08', '2017-08-08 12:02:08');
INSERT INTO `s_consultant` VALUES ('107', '2', 'xzq', '15626164246', '1', '0', null, '2017-08-10 15:32:53', '2017-08-10 15:32:14');
INSERT INTO `s_consultant` VALUES ('108', '5', '陈佳鑫', '18826139693', '1', '0', null, '2017-08-10 17:17:03', '2017-08-10 17:18:40');
INSERT INTO `s_consultant` VALUES ('109', '3', '冯绍杰', '13432085066', '4', '0', null, '2017-08-10 19:48:56', '2017-08-10 19:48:46');
INSERT INTO `s_consultant` VALUES ('110', '2', 'xzq', '15626164246', '3', '0', null, '2017-08-10 20:04:47', '2017-08-10 20:04:10');
INSERT INTO `s_consultant` VALUES ('111', '2', 'xzq', '15626164246', '4', '0', null, '2017-08-10 20:04:57', '2017-08-10 20:04:19');

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
  `coverpic` varchar(255) DEFAULT NULL,
  `picintroduction` varchar(128) DEFAULT NULL,
  `isdisplay` int(11) DEFAULT NULL,
  `title` varchar(36) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

-- ----------------------------
-- Records of s_product
-- ----------------------------
INSERT INTO `s_product` VALUES ('1', '2', '宝马', '宝马003', '23', '21', 'product/74fec453efd541cbb79bc1bc7d59a2f6.png', '23123', '0', '宝马', '0', '2017-08-09 14:44:30', '2017-08-09 16:23:20');
INSERT INTO `s_product` VALUES ('2', '3', '宝马', '宝马005', '2', '122', null, '22', '0', '宝马', '1', '2017-08-09 14:44:30', '2017-08-09 16:23:23');
INSERT INTO `s_product` VALUES ('3', '4', '宝马', '宝马003', '1232', '23', null, 'wqe', '1', '宝马', '1', '2017-08-09 14:44:32', '2017-08-09 16:23:24');
INSERT INTO `s_product` VALUES ('4', '2', '宝马', '宝马001', '2323', '123', null, 'asd', '0', '宝马', '1', '2017-08-09 14:51:06', '2017-08-09 20:32:26');
INSERT INTO `s_product` VALUES ('5', '3', '宝马', '宝马001', '2323', '123', 'product/f34d3471c11c47c9b3667468efb4a595.png', 'asd', '0', '宝马', '1', '2017-08-09 14:51:06', '2017-08-09 20:32:28');
INSERT INTO `s_product` VALUES ('6', '4', '宝马', '宝马003', '2312', '122', 'product/58c564810b0b4be8ad569ab10de3566e.gif', '231232', '1', '宝马', '2', '2017-08-09 14:52:16', '2017-08-10 13:44:14');

-- ----------------------------
-- Table structure for `s_souronguser`
-- ----------------------------
DROP TABLE IF EXISTS `s_souronguser`;
CREATE TABLE `s_souronguser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `userphone` varchar(20) DEFAULT NULL,
  `salt` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `openid` varchar(11) DEFAULT NULL,
  `islogout` int(11) DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `changetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_souronguser
-- ----------------------------
INSERT INTO `s_souronguser` VALUES ('1', 'admin', '15622157852', '95889a4e65fb49f38489836a4c1fdb3f', '1336f03d6bccd0f5a22d2ff2eb285d94', null, null, '2017-08-07 19:49:03', '2017-08-07 19:49:03');
INSERT INTO `s_souronguser` VALUES ('2', 'xzq', '15626164246', 'ba9a98cc42855494e44ae0c2e32e3a60', 'c7aa1195310ffaea694a92dd9ebe9466', null, null, '2017-08-09 10:59:30', '2017-08-10 09:47:23');
INSERT INTO `s_souronguser` VALUES ('3', '冯绍杰', '13432085066', '86aa7869ca07421898acfd69c7732e89', 'dd5aaf85c503c8007a86e41d49367f33', null, null, '2017-08-09 14:29:07', '2017-08-09 14:49:57');
INSERT INTO `s_souronguser` VALUES ('4', 'lingdu', '123', '12f81300ad9d4049816b5e792335eb96', '0a1f6c83088d396276f1be8b7894dd7b', null, null, '2017-08-09 14:36:58', '2017-08-09 14:36:58');
INSERT INTO `s_souronguser` VALUES ('5', '陈佳鑫', '18826139693', '27a1578b30f042feb260bb1b30f36388', 'f709a55d774f78efda62d6ef5d574ff7', null, null, '2017-08-09 15:30:34', '2017-08-09 15:30:34');
INSERT INTO `s_souronguser` VALUES ('6', 'admin', '1234', 'ee67611fdfb949ab8eadd8a431aad938', '975e8718a9102cc78014d0a3cd9a26df', null, null, '2017-08-09 15:39:50', '2017-08-09 15:39:50');
INSERT INTO `s_souronguser` VALUES ('7', 'admin', '12345', '790465762107494db6ae84c9028465bb', '0f903a0dbffe89403d39e08380de7df8', null, null, '2017-08-09 15:42:43', '2017-08-09 15:42:43');
INSERT INTO `s_souronguser` VALUES ('8', 'admim', '222', '78eff02f271c4d9181f3ccacc42b8ba4', '944b6cd02b57f0774b499c09d8bbb531', null, null, '2017-08-09 15:45:25', '2017-08-09 15:45:25');
INSERT INTO `s_souronguser` VALUES ('9', '冯绍杰', '333', 'fe6b3738c18d41aea3541c5c8d42f644', '24e6c11dd27b046c9f2f0452e90317c6', null, null, '2017-08-09 15:54:32', '2017-08-09 15:54:32');
INSERT INTO `s_souronguser` VALUES ('10', 'test', '4444', 'e00a33eae6274545b7e76861afd17a50', 'dc4ddeb9df71e9e68c6687ff4e140f36', null, null, '2017-08-09 15:57:39', '2017-08-09 15:57:39');
INSERT INTO `s_souronguser` VALUES ('11', 'test', '5555', '0f24e7f8e4cc4849aafc8aa13c877f2b', '21aee350b969e5cc4eff0d3b9f390d4a', null, null, '2017-08-09 16:04:37', '2017-08-09 16:04:37');
INSERT INTO `s_souronguser` VALUES ('12', 'test', '123456', '83467598f9a54fe99f1300d43ca99b61', '9ac52238e81c299a00f29037c65cfee7', null, null, '2017-08-09 16:10:09', '2017-08-09 16:10:09');
INSERT INTO `s_souronguser` VALUES ('13', 'test', '1111111', 'a9d1a27089bf4b93912f82429abb4360', 'e1f2a3f224e988feabee04ad94214bda', null, null, '2017-08-09 16:15:17', '2017-08-09 16:15:17');
INSERT INTO `s_souronguser` VALUES ('14', 'test', '6666', 'a1207a3a03ab4b6883682c4b3e101ef9', 'fd2d35f62e75f5bfa867107504b7f588', null, null, '2017-08-09 16:55:18', '2017-08-09 16:55:18');
INSERT INTO `s_souronguser` VALUES ('15', '冯绍杰', '7777', '8d4a10765b6f4855a5701598dd78bfc1', '1eeefb308a60df3ec4c521af0c965842', null, null, '2017-08-09 18:00:07', '2017-08-09 18:00:07');
INSERT INTO `s_souronguser` VALUES ('16', '？？？', '？？？', '9b85273abcf74f169d67ae4c8d999fa7', '46c38a25568a6c840f69cd6d95932788', null, null, '2017-08-09 19:11:38', '2017-08-09 19:11:38');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `salt` varchar(36) NOT NULL,
  `password` varchar(36) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lasttime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '超级管理员', 'admin', '3cccc4a5-3b16-454d-aa7f-9e28b2b3ed13', '060ef1a179b9a21ca574122946b12b39', '2017-08-07 12:20:05', '2017-08-08 10:46:55');
