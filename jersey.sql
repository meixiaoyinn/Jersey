/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : jersey

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-05-27 14:56:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `admin_password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `admin_birth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `admin_sex` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `admin_purview` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `audit`
-- ----------------------------
DROP TABLE IF EXISTS `audit`;
CREATE TABLE `audit` (
  `audit_id` int(10) NOT NULL AUTO_INCREMENT,
  `audit_reason` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `audit_date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `audit_pur` int(10) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of audit
-- ----------------------------
INSERT INTO `audit` VALUES ('13', '给我解封！！！', '13', '2021-05-22 17:17:38', '2');

-- ----------------------------
-- Table structure for `club`
-- ----------------------------
DROP TABLE IF EXISTS `club`;
CREATE TABLE `club` (
  `club_id` int(8) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `league_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `club_memo` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `club_picture` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of club
-- ----------------------------
INSERT INTO `club` VALUES ('1', '皇家马德里', '西班牙', '皇家马德里位于西班牙马德里，成立于1902年，球队主场可容纳85454人，俱乐部有着辉煌的历史。', 'IMG_20210419_073436.jpg');
INSERT INTO `club` VALUES ('2', '广州队', '中国', '广州队位于中国广州，成立于1993年，是中国最早的职业俱乐部之一，主场为广州天河体育场，且可容纳60151人。球队历史上曾两夺亚冠。', 'IMG_20210418_221105.jpg');
INSERT INTO `club` VALUES ('3', '尤文图斯', '意大利', '尤文图斯位于意大利都灵，成立于1897年，球队主场为安联球场，可容纳45666人。', 'IMG_20210419_073939.jpg');
INSERT INTO `club` VALUES ('4', '巴塞罗那', '西班牙', '巴塞罗那位于西班牙巴塞罗那地区，球队主场为诺坎普球场，可容纳99787人。', 'IMG_20210418_220841.jpg');
INSERT INTO `club` VALUES ('5', '马德里竞技', '西班牙', '俱乐部位于西班牙首都马德里，球队主场为万达大都会球场，可容纳67703人。', 'IMG_20210418_220949.jpg');
INSERT INTO `club` VALUES ('6', '西班牙人', '西班牙', '暂无', 'IMG_20210418_221146.jpg');
INSERT INTO `club` VALUES ('7', '巴伦西亚', '西班牙', '暂无', null);
INSERT INTO `club` VALUES ('8', '曼联', '英国', '俱乐部位于英国曼彻斯特，历史悠久。', 'IMG_20210418_221351.jpg');
INSERT INTO `club` VALUES ('9', '曼城', '英国', '俱乐部位于英国曼彻斯特，历史悠久。', 'IMG_20210419_073346.jpg');
INSERT INTO `club` VALUES ('10', '利物浦', '英国', '俱乐部位于英国利物浦地区。', 'IMG_20210421_075354.jpg');
INSERT INTO `club` VALUES ('11', '切尔西', '英国', '暂无', 'IMG_20210419_073218.jpg');
INSERT INTO `club` VALUES ('12', '阿森纳', '英国', '暂无', 'IMG_20210419_073316.jpg');
INSERT INTO `club` VALUES ('13', '国际米兰', '意大利', '俱乐部位于意大利米兰市。', 'IMG_20210419_073804.jpg');
INSERT INTO `club` VALUES ('14', '拜仁慕尼黑', '德国', '暂无', 'IMG_20210418_221433.jpg');
INSERT INTO `club` VALUES ('15', '水晶宫', '英国', '暂无', null);
INSERT INTO `club` VALUES ('16', '塞维利亚', '西班牙', '暂无', 'IMG_20210427_123124.jpg');
INSERT INTO `club` VALUES ('17', '埃因霍温', '荷兰', '暂无', 'IMG_20210419_074320.jpg');
INSERT INTO `club` VALUES ('18', '狼', '英国', '暂无', null);
INSERT INTO `club` VALUES ('19', '山东泰山', '中国', '俱乐部位于中国山东省济南市，成立于1993年。', null);
INSERT INTO `club` VALUES ('20', '川崎前锋', '日本', '暂无', null);
INSERT INTO `club` VALUES ('21', '上海申花', '中国', '俱乐部位于上海，成立于1994年，球队主场为上海虹口足球场。', 'IMG_20210418_221253.jpg');
INSERT INTO `club` VALUES ('22', '格拉纳达', '西班牙', '暂无', 'IMG_20210427_123003.jpg');
INSERT INTO `club` VALUES ('23', '热刺', '英国', '暂无', 'IMG_20210421_075453.jpg');
INSERT INTO `club` VALUES ('24', '拉齐奥', '意大利', '暂无', 'IMG_20210427_122831.jpg');
INSERT INTO `club` VALUES ('25', '罗马', '意大利', '暂无', null);
INSERT INTO `club` VALUES ('26', 'RB莱比锡', '德国', '暂无', 'IMG_20210421_075002.jpg');
INSERT INTO `club` VALUES ('27', '多特蒙德', '德国', '暂无', 'IMG_20210421_074924.jpg');
INSERT INTO `club` VALUES ('28', '巴黎圣日尔曼', '法国', '暂无', null);
INSERT INTO `club` VALUES ('29', '阿贾克斯', '荷兰', '暂无', null);
INSERT INTO `club` VALUES ('30', '马赛', '法国', '暂无', null);
INSERT INTO `club` VALUES ('31', '马略卡', '西班牙', '暂无', 'IMG_20210419_073531.jpg');
INSERT INTO `club` VALUES ('32', '北京国安', '中国', '俱乐部位于中国首都北京，成立于1994年，球队主场为北京工人体育场。', null);
INSERT INTO `club` VALUES ('33', '大阪樱花', '日本', '暂无', null);
INSERT INTO `club` VALUES ('34', '大连人', '中国', '俱乐部位于中国辽宁省大连市。', null);
INSERT INTO `club` VALUES ('35', '葡萄牙体育', '葡萄牙', '暂无', null);
INSERT INTO `club` VALUES ('36', '横滨水手', '日本', '暂无', null);
INSERT INTO `club` VALUES ('37', '广岛三箭', '日本', '暂无', null);
INSERT INTO `club` VALUES ('38', '本菲卡', '葡萄牙', '暂无', null);
INSERT INTO `club` VALUES ('39', '波尔图', '葡萄牙', '暂无', null);
INSERT INTO `club` VALUES ('40', '全北现代', '韩国', '暂无', null);
INSERT INTO `club` VALUES ('41', '水原三星', '韩国', '暂无', null);
INSERT INTO `club` VALUES ('42', '洛杉矶FC', '美国', '暂无', null);
INSERT INTO `club` VALUES ('43', '蒙特利尔', '美国', '暂无', null);
INSERT INTO `club` VALUES ('44', '弗拉门戈', '巴西', '暂无', null);
INSERT INTO `club` VALUES ('45', '巴西国际', '巴西', '暂无', null);
INSERT INTO `club` VALUES ('46', '米内罗竞技', '巴西', '暂无', 'IMG_20210419_074210.jpg');
INSERT INTO `club` VALUES ('47', '圣保罗', '巴西', '暂无', null);
INSERT INTO `club` VALUES ('48', '河床', '阿根廷', '暂无', 'IMG_20210419_074117.jpg');
INSERT INTO `club` VALUES ('49', '科隆竞技', '阿根廷', '暂无', null);
INSERT INTO `club` VALUES ('50', '拉普拉塔大学生', '阿根廷', '暂无', null);
INSERT INTO `club` VALUES ('51', '武里南联', '泰国', '暂无', null);
INSERT INTO `club` VALUES ('52', 'BG巴吞连', '泰国', '暂无', null);
INSERT INTO `club` VALUES ('53', '沧州雄狮', '中国', '暂无', 'IMG_20210421_075259.jpg');
INSERT INTO `club` VALUES ('54', '青岛队', '中国', '暂无', null);
INSERT INTO `club` VALUES ('55', '皇家社会', '西班牙', '暂无', 'IMG_20210421_074851.jpg');
INSERT INTO `club` VALUES ('56', 'AC米兰', '意大利', '暂无', 'IMG_20210419_073859.jpg');
INSERT INTO `club` VALUES ('57', '长春亚泰', '中国', '暂无', null);
INSERT INTO `club` VALUES ('58', '勒沃库森', '德国', '暂无', null);
INSERT INTO `club` VALUES ('59', '浙江绿城', '中国', '暂无', 'IMG_20210421_075222.jpg');
INSERT INTO `club` VALUES ('60', '里昂', '法国', '暂无', 'IMG_20210421_075046.jpg');
INSERT INTO `club` VALUES ('61', '皇家贝蒂斯', '西班牙', '暂无', null);
INSERT INTO `club` VALUES ('62', '比利亚雷亚尔', '西班牙', '暂无', 'IMG_20210427_123056.jpg');
INSERT INTO `club` VALUES ('63', '奥萨苏纳', '西班牙', '暂无', 'IMG_20210427_123151.jpg');
INSERT INTO `club` VALUES ('64', '塞尔塔', '西班牙', '暂无', 'IMG_20210427_122904.jpg');
INSERT INTO `club` VALUES ('65', '毕尔巴鄂竞技', '西班牙', '暂无', 'IMG_20210427_123056.jpg');
INSERT INTO `club` VALUES ('66', '莱万特', '西班牙', '暂无', null);
INSERT INTO `club` VALUES ('67', '赫塔费', '西班牙', '暂无', null);
INSERT INTO `club` VALUES ('68', '加的斯', '西班牙', '暂无', null);
INSERT INTO `club` VALUES ('69', '阿拉维斯', '西班牙', '暂无', 'IMG_20210427_123249.jpg');
INSERT INTO `club` VALUES ('70', '佛罗伦萨', '意大利', ' 意大利球队。', null);
INSERT INTO `club` VALUES ('71', '石家庄永昌', '中国', '石家庄永昌', '1513578139489.jpg');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(5) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `comment_like` int(50) DEFAULT '0',
  `share_id` int(10) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `gentie`
-- ----------------------------
DROP TABLE IF EXISTS `gentie`;
CREATE TABLE `gentie` (
  `gentie_id` int(10) NOT NULL AUTO_INCREMENT,
  `gentie_txt` varchar(200) CHARACTER SET utf8 NOT NULL,
  `gentie_time` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tiezi_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  PRIMARY KEY (`gentie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gentie
-- ----------------------------
INSERT INTO `gentie` VALUES ('2', '应该吧，感觉总裁在尤文待的不是很开心。', '2021-05-21 19:17:49', '5', '33');
INSERT INTO `gentie` VALUES ('3', '莱万特  塞维利亚啥的', '2021-05-21 19:24:23', '6', '20');
INSERT INTO `gentie` VALUES ('4', '怎么没有人呢', '2021-05-21 23:21:03', '4', '26');
INSERT INTO `gentie` VALUES ('5', '人呢人呢', '2021-05-21 23:21:14', '4', '26');
INSERT INTO `gentie` VALUES ('6', '怎么我单机了', '2021-05-21 23:21:27', '4', '26');
INSERT INTO `gentie` VALUES ('7', 'C罗永远的神', '2021-05-21 23:22:04', '5', '26');
INSERT INTO `gentie` VALUES ('8', '测试', '2021-05-24 13:20:12', '5', '4');
INSERT INTO `gentie` VALUES ('9', '111', '2021-05-26 16:16:56', '5', '4');
INSERT INTO `gentie` VALUES ('10', '111', '2021-05-26 18:55:05', '5', '4');

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` int(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group_memo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `group_guanzhu` int(10) DEFAULT NULL,
  `group_tiezi` int(10) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `hobby`
-- ----------------------------
DROP TABLE IF EXISTS `hobby`;
CREATE TABLE `hobby` (
  `hobby_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `club_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`hobby_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hobby
-- ----------------------------
INSERT INTO `hobby` VALUES ('2', '20', '1');
INSERT INTO `hobby` VALUES ('3', '20', '2');
INSERT INTO `hobby` VALUES ('5', '20', '58');
INSERT INTO `hobby` VALUES ('6', '4', '58');
INSERT INTO `hobby` VALUES ('7', '20', '44');
INSERT INTO `hobby` VALUES ('8', '2', '13');
INSERT INTO `hobby` VALUES ('9', '2', '3');
INSERT INTO `hobby` VALUES ('10', '14', '2');
INSERT INTO `hobby` VALUES ('11', '6', '34');
INSERT INTO `hobby` VALUES ('12', '6', '53');
INSERT INTO `hobby` VALUES ('13', '4', '5');
INSERT INTO `hobby` VALUES ('14', '2', '30');
INSERT INTO `hobby` VALUES ('15', '2', '18');
INSERT INTO `hobby` VALUES ('16', '2', '55');
INSERT INTO `hobby` VALUES ('17', '4', '6');
INSERT INTO `hobby` VALUES ('18', '4', '69');
INSERT INTO `hobby` VALUES ('19', '2', '2');
INSERT INTO `hobby` VALUES ('20', '4', '14');
INSERT INTO `hobby` VALUES ('21', '5', '13');
INSERT INTO `hobby` VALUES ('22', '23', '62');
INSERT INTO `hobby` VALUES ('23', '23', '49');
INSERT INTO `hobby` VALUES ('24', '4', '9');

-- ----------------------------
-- Table structure for `infor`
-- ----------------------------
DROP TABLE IF EXISTS `infor`;
CREATE TABLE `infor` (
  `infor_id` int(10) NOT NULL AUTO_INCREMENT,
  `infor_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `infor_text` varchar(500) CHARACTER SET utf8 NOT NULL,
  `user_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `infor_date` varchar(30) CHARACTER SET utf8 NOT NULL,
  `infor_pic` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `likes_id` int(15) DEFAULT NULL,
  `club_name` varchar(50) CHARACTER SET utf8 DEFAULT '0',
  PRIMARY KEY (`infor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of infor
-- ----------------------------
INSERT INTO `infor` VALUES ('1', '教你一招简单方法辨别球衣', '当你想购买某件球衣，或者在淘宝上刷到一件便宜的球衣，先去查查球衣的货号,例如，在Nike官网上查到的巴萨1617主场球迷版货号是：776850-481,打开淘宝，输入货号,基本上前列的都是正品球衣店的了，选择自己心仪的（价格合适，有自己的码数的）购买即可。当然，现在假货店也“提升”了自己含量，卖假货的，也会在宝贝描述中加入货号，那就得需要再二次验证啦。每个品牌的鉴定方式都不一样,Nike上吊牌不同码分不同颜色，如果没有那个标码数和专属那个颜色的贴纸，必定假货！耐克S码：黄色。M码：蓝色。L码：红色。Xl码：绿色。', 'meixiaoyin', '2021-04-29 18:33:54', '', '0', '其他');
INSERT INTO `infor` VALUES ('2', '尤文新赛季球衣曝光', '阿迪达斯为意甲尤文图斯足球俱乐部打造的2021/22赛季全新主场球衣谍照已经现身网络。国外网友@cleat_society 放出了拥有全新胸前广告以及设计细节的尤文图斯下赛季主场球衣谍照。从曝光的谍照中能够看到，时隔两年后，经典的黑白条纹设计重新回归。此外，球衣胸前原本的“JEEP”广告下方加入了全新“4XE”广告，4XE是JEEP全新的插入式混合动力技术。这件新球衣基于阿迪达斯全新Condivo 21团队球衣模板打造，拥有样式简约复古的白色罗纹衣领，并在衣领边缘加入黑色细节装饰。', 'meixiaoyin', '2021-04-30 10:39:18', 'mmexport1619746647310.jpg', '0', '尤文图斯');
INSERT INTO `infor` VALUES ('3', '马竞2021/22赛季客场球衣实物曝光', '耐克为西甲马德里竞技俱乐部打造的2021/22赛季全新客场球衣已经现身网络。国外球衣媒体@esvaphane 日前放出了这件新球衣的实物谍照。耐克为马竞打造的下赛季客场球衣采用了令人印象深刻的色彩搭配与球衣图案设计。深邃低调的海军蓝色与明亮耀眼的粉红色渐变图案搭配，带来与众不同的视觉效果，并且让这件新球衣看起来更具速度感。球衣胸前的俱乐部徽章以及Nike Swoosh均采用粉红色装饰，全新的V字形衣领穿着舒适有型。而据FOOTYHEADLINES透露的消息显示，这件新球衣将搭配粉红色球裤与球袜，并且球衣背后的号码也会使用粉红色。看过实物谍照后，各位马竞球迷觉得这件将于7月份发布的新球衣如何？', 'meixiaoyin', '2021-04-30 10:47:21', 'mmexport1619750561952.jpg', '0', '马德里竞技');
INSERT INTO `infor` VALUES ('4', '1111', '11111', 'meixiaoyin', '2021-05-24 13:59:46', 'psb.jpg', '0', '1111');

-- ----------------------------
-- Table structure for `league`
-- ----------------------------
DROP TABLE IF EXISTS `league`;
CREATE TABLE `league` (
  `league_id` int(10) NOT NULL AUTO_INCREMENT,
  `league_name` varchar(25) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`league_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of league
-- ----------------------------
INSERT INTO `league` VALUES ('1', '西班牙');
INSERT INTO `league` VALUES ('2', '中国');
INSERT INTO `league` VALUES ('3', '意大利');
INSERT INTO `league` VALUES ('4', '英国');
INSERT INTO `league` VALUES ('5', '德国');
INSERT INTO `league` VALUES ('6', '法国');
INSERT INTO `league` VALUES ('7', '葡萄牙');
INSERT INTO `league` VALUES ('8', '荷兰');
INSERT INTO `league` VALUES ('9', '日本');
INSERT INTO `league` VALUES ('10', '韩国');
INSERT INTO `league` VALUES ('11', '泰国');
INSERT INTO `league` VALUES ('12', '美国');
INSERT INTO `league` VALUES ('13', '巴西');
INSERT INTO `league` VALUES ('14', '阿根廷');

-- ----------------------------
-- Table structure for `likes`
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `like_id` int(20) NOT NULL AUTO_INCREMENT,
  `share_id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `like_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`like_id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES ('60', '24', '18', '2021-04-20 19:33:51');
INSERT INTO `likes` VALUES ('61', '22', '18', '2021-04-20 19:33:52');
INSERT INTO `likes` VALUES ('62', '20', '18', '2021-04-20 19:33:54');
INSERT INTO `likes` VALUES ('63', '17', '18', '2021-04-20 19:34:04');
INSERT INTO `likes` VALUES ('64', '1', '13', '2021-04-20 19:34:18');
INSERT INTO `likes` VALUES ('65', '4', '13', '2021-04-20 19:34:21');
INSERT INTO `likes` VALUES ('66', '3', '13', '2021-04-20 19:34:22');
INSERT INTO `likes` VALUES ('67', '6', '13', '2021-04-20 19:34:25');
INSERT INTO `likes` VALUES ('68', '19', '20', '2021-04-20 19:34:57');
INSERT INTO `likes` VALUES ('69', '14', '20', '2021-04-20 19:34:59');
INSERT INTO `likes` VALUES ('70', '15', '20', '2021-04-20 19:35:00');
INSERT INTO `likes` VALUES ('71', '12', '20', '2021-04-20 19:35:03');
INSERT INTO `likes` VALUES ('72', '11', '20', '2021-04-20 19:35:04');
INSERT INTO `likes` VALUES ('73', '17', '6', '2021-04-20 19:35:15');
INSERT INTO `likes` VALUES ('74', '13', '6', '2021-04-20 19:35:18');
INSERT INTO `likes` VALUES ('75', '8', '6', '2021-04-20 19:35:21');
INSERT INTO `likes` VALUES ('76', '6', '6', '2021-04-20 19:35:21');
INSERT INTO `likes` VALUES ('77', '3', '4', '2021-04-20 19:35:35');
INSERT INTO `likes` VALUES ('78', '6', '4', '2021-04-20 19:35:37');
INSERT INTO `likes` VALUES ('79', '9', '4', '2021-04-20 19:35:43');
INSERT INTO `likes` VALUES ('80', '22', '19', '2021-04-20 19:35:53');
INSERT INTO `likes` VALUES ('81', '21', '19', '2021-04-20 19:35:54');
INSERT INTO `likes` VALUES ('82', '6', '19', '2021-04-20 19:35:58');
INSERT INTO `likes` VALUES ('83', '23', '2', '2021-04-20 19:36:10');
INSERT INTO `likes` VALUES ('84', '18', '2', '2021-04-20 19:36:13');
INSERT INTO `likes` VALUES ('85', '16', '2', '2021-04-20 19:36:15');
INSERT INTO `likes` VALUES ('86', '10', '2', '2021-04-20 19:36:18');
INSERT INTO `likes` VALUES ('87', '7', '2', '2021-04-20 19:36:20');
INSERT INTO `likes` VALUES ('88', '6', '2', '2021-04-20 19:36:21');
INSERT INTO `likes` VALUES ('89', '5', '2', '2021-04-20 19:36:23');
INSERT INTO `likes` VALUES ('90', '24', '11', '2021-04-20 19:36:39');
INSERT INTO `likes` VALUES ('91', '10', '11', '2021-04-20 19:36:46');
INSERT INTO `likes` VALUES ('92', '3', '11', '2021-04-20 19:36:53');
INSERT INTO `likes` VALUES ('93', '6', '11', '2021-04-20 19:36:56');
INSERT INTO `likes` VALUES ('94', '19', '5', '2021-04-20 19:37:21');
INSERT INTO `likes` VALUES ('95', '16', '5', '2021-04-20 19:37:22');
INSERT INTO `likes` VALUES ('96', '12', '5', '2021-04-20 19:37:24');
INSERT INTO `likes` VALUES ('97', '1', '5', '2021-04-20 19:37:27');
INSERT INTO `likes` VALUES ('98', '6', '5', '2021-04-20 19:37:30');
INSERT INTO `likes` VALUES ('99', '23', '11', '2021-04-21 10:27:48');
INSERT INTO `likes` VALUES ('100', '24', '19', '2021-04-21 15:09:50');
INSERT INTO `likes` VALUES ('101', '23', '19', '2021-04-21 15:09:53');
INSERT INTO `likes` VALUES ('102', '25', '6', '2021-04-22 15:53:56');
INSERT INTO `likes` VALUES ('103', '4', '6', '2021-04-22 15:55:37');
INSERT INTO `likes` VALUES ('104', '25', '21', '2021-04-22 15:56:13');
INSERT INTO `likes` VALUES ('105', '18', '21', '2021-04-22 15:57:47');
INSERT INTO `likes` VALUES ('106', '25', '22', '2021-04-22 15:58:13');
INSERT INTO `likes` VALUES ('107', '6', '22', '2021-04-22 15:59:03');
INSERT INTO `likes` VALUES ('108', '10', '22', '2021-04-22 15:59:09');
INSERT INTO `likes` VALUES ('109', '11', '22', '2021-04-22 15:59:11');
INSERT INTO `likes` VALUES ('110', '12', '22', '2021-04-22 15:59:12');
INSERT INTO `likes` VALUES ('111', '1', '23', '2021-04-22 15:59:37');
INSERT INTO `likes` VALUES ('112', '6', '23', '2021-04-22 15:59:38');
INSERT INTO `likes` VALUES ('113', '15', '23', '2021-04-22 15:59:42');
INSERT INTO `likes` VALUES ('114', '21', '23', '2021-04-22 15:59:47');
INSERT INTO `likes` VALUES ('115', '28', '23', '2021-04-22 16:00:47');
INSERT INTO `likes` VALUES ('116', '25', '23', '2021-04-22 16:00:51');
INSERT INTO `likes` VALUES ('117', '29', '23', '2021-04-22 16:00:52');
INSERT INTO `likes` VALUES ('118', '29', '24', '2021-04-22 16:01:21');
INSERT INTO `likes` VALUES ('119', '28', '24', '2021-04-22 16:01:23');
INSERT INTO `likes` VALUES ('120', '27', '24', '2021-04-22 16:02:10');
INSERT INTO `likes` VALUES ('121', '23', '25', '2021-04-22 16:02:30');
INSERT INTO `likes` VALUES ('122', '22', '25', '2021-04-22 16:02:31');
INSERT INTO `likes` VALUES ('123', '21', '25', '2021-04-22 16:02:32');
INSERT INTO `likes` VALUES ('124', '20', '25', '2021-04-22 16:02:33');
INSERT INTO `likes` VALUES ('125', '13', '25', '2021-04-22 16:02:38');
INSERT INTO `likes` VALUES ('126', '31', '25', '2021-04-22 16:03:19');
INSERT INTO `likes` VALUES ('127', '32', '31', '2021-04-22 17:10:30');
INSERT INTO `likes` VALUES ('128', '28', '31', '2021-04-22 17:10:40');
INSERT INTO `likes` VALUES ('129', '30', '31', '2021-04-22 17:10:48');
INSERT INTO `likes` VALUES ('130', '31', '31', '2021-04-22 17:10:51');
INSERT INTO `likes` VALUES ('131', '13', '20', '2021-04-22 23:33:37');
INSERT INTO `likes` VALUES ('132', '33', '4', '2021-04-23 09:47:46');
INSERT INTO `likes` VALUES ('133', '21', '4', '2021-04-23 09:47:52');
INSERT INTO `likes` VALUES ('134', '15', '4', '2021-04-23 09:47:55');
INSERT INTO `likes` VALUES ('135', '32', '4', '2021-04-24 14:18:12');
INSERT INTO `likes` VALUES ('136', '24', '4', '2021-04-24 14:22:58');
INSERT INTO `likes` VALUES ('137', '16', '4', '2021-04-24 14:27:28');
INSERT INTO `likes` VALUES ('138', '32', '20', '2021-04-24 15:01:58');
INSERT INTO `likes` VALUES ('139', '33', '20', '2021-04-25 18:38:36');
INSERT INTO `likes` VALUES ('140', '30', '20', '2021-04-25 18:39:31');
INSERT INTO `likes` VALUES ('141', '28', '20', '2021-04-25 18:39:36');
INSERT INTO `likes` VALUES ('142', '27', '20', '2021-04-25 18:39:40');
INSERT INTO `likes` VALUES ('143', '22', '20', '2021-04-25 18:39:58');
INSERT INTO `likes` VALUES ('144', '26', '20', '2021-04-25 22:02:06');
INSERT INTO `likes` VALUES ('145', '34', '2', '2021-04-25 22:31:14');
INSERT INTO `likes` VALUES ('146', '32', '2', '2021-04-25 22:46:59');
INSERT INTO `likes` VALUES ('147', '30', '2', '2021-04-25 22:51:09');
INSERT INTO `likes` VALUES ('148', '34', '20', '2021-04-26 15:43:28');
INSERT INTO `likes` VALUES ('149', '30', '5', '2021-04-26 15:43:49');
INSERT INTO `likes` VALUES ('150', '26', '24', '2021-04-26 15:44:25');
INSERT INTO `likes` VALUES ('151', '27', '13', '2021-04-26 16:00:30');
INSERT INTO `likes` VALUES ('152', '34', '14', '2021-04-26 16:00:45');
INSERT INTO `likes` VALUES ('153', '31', '14', '2021-04-26 16:00:56');
INSERT INTO `likes` VALUES ('154', '29', '14', '2021-04-26 16:01:11');
INSERT INTO `likes` VALUES ('155', '36', '14', '2021-04-26 22:05:30');
INSERT INTO `likes` VALUES ('156', '29', '13', '2021-04-26 22:36:04');
INSERT INTO `likes` VALUES ('157', '25', '13', '2021-04-26 22:36:27');
INSERT INTO `likes` VALUES ('158', '31', '6', '2021-04-27 10:06:50');
INSERT INTO `likes` VALUES ('159', '34', '6', '2021-04-27 10:07:51');
INSERT INTO `likes` VALUES ('160', '36', '4', '2021-04-27 10:47:58');
INSERT INTO `likes` VALUES ('161', '36', '2', '2021-04-29 10:13:11');
INSERT INTO `likes` VALUES ('162', '26', '2', '2021-04-29 10:13:35');
INSERT INTO `likes` VALUES ('163', '27', '2', '2021-04-29 10:14:52');
INSERT INTO `likes` VALUES ('164', '29', '2', '2021-05-03 20:03:00');
INSERT INTO `likes` VALUES ('165', '17', '4', '2021-05-16 00:21:56');
INSERT INTO `likes` VALUES ('166', '26', '4', '2021-05-16 00:22:56');
INSERT INTO `likes` VALUES ('167', '1', '4', '2021-05-16 09:15:28');
INSERT INTO `likes` VALUES ('168', '19', '2', '2021-05-16 09:29:53');
INSERT INTO `likes` VALUES ('169', '2', '4', '2021-05-18 13:43:43');
INSERT INTO `likes` VALUES ('170', '37', '5', '2021-05-20 16:33:09');
INSERT INTO `likes` VALUES ('173', '1', '33', '2021-05-22 16:00:35');
INSERT INTO `likes` VALUES ('174', '37', '23', '2021-05-22 16:19:48');
INSERT INTO `likes` VALUES ('175', '36', '23', '2021-05-22 16:20:14');
INSERT INTO `likes` VALUES ('176', '36', '5', '2021-05-24 23:34:50');
INSERT INTO `likes` VALUES ('177', '34', '5', '2021-05-24 23:36:02');

-- ----------------------------
-- Table structure for `mjersey`
-- ----------------------------
DROP TABLE IF EXISTS `mjersey`;
CREATE TABLE `mjersey` (
  `mjersey_id` int(10) NOT NULL AUTO_INCREMENT,
  `mjersey_picture` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `club_id` int(8) NOT NULL,
  `type_id` int(5) NOT NULL,
  `season_id` int(20) NOT NULL,
  PRIMARY KEY (`mjersey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mjersey
-- ----------------------------

-- ----------------------------
-- Table structure for `operate`
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `operate_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL,
  `club_id` int(20) NOT NULL,
  `comment_sum` int(20) DEFAULT '0',
  `like_sum` int(20) DEFAULT '0',
  `share_sum` int(20) DEFAULT '0',
  PRIMARY KEY (`operate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES ('1', '4', '3', '0', '2', '8');
INSERT INTO `operate` VALUES ('2', '4', '1', '0', '4', '9');
INSERT INTO `operate` VALUES ('3', '20', '3', '0', '2', '5');
INSERT INTO `operate` VALUES ('4', '20', '32', '0', '1', '0');
INSERT INTO `operate` VALUES ('5', '20', '30', '0', '1', '0');
INSERT INTO `operate` VALUES ('6', '20', '27', '0', '1', '0');
INSERT INTO `operate` VALUES ('7', '20', '23', '0', '1', '0');
INSERT INTO `operate` VALUES ('8', '20', '4', '0', '2', '0');
INSERT INTO `operate` VALUES ('9', '20', '58', '0', '1', '0');
INSERT INTO `operate` VALUES ('10', '2', '2', '0', '1', '0');
INSERT INTO `operate` VALUES ('11', '2', '3', '0', '2', '4');
INSERT INTO `operate` VALUES ('12', '2', '30', '0', '1', '0');
INSERT INTO `operate` VALUES ('13', '20', '2', '0', '1', '0');
INSERT INTO `operate` VALUES ('14', '5', '30', '0', '1', '0');
INSERT INTO `operate` VALUES ('15', '24', '58', '0', '1', '0');
INSERT INTO `operate` VALUES ('16', '13', '23', '0', '1', '0');
INSERT INTO `operate` VALUES ('17', '14', '2', '0', '1', '0');
INSERT INTO `operate` VALUES ('18', '14', '25', '0', '1', '0');
INSERT INTO `operate` VALUES ('19', '14', '12', '0', '1', '0');
INSERT INTO `operate` VALUES ('20', '14', '3', '0', '1', '0');
INSERT INTO `operate` VALUES ('21', '13', '12', '0', '1', '0');
INSERT INTO `operate` VALUES ('22', '13', '11', '0', '1', '0');
INSERT INTO `operate` VALUES ('23', '6', '25', '0', '1', '0');
INSERT INTO `operate` VALUES ('24', '6', '2', '0', '1', '0');
INSERT INTO `operate` VALUES ('25', '2', '58', '0', '1', '0');
INSERT INTO `operate` VALUES ('26', '2', '23', '0', '2', '0');
INSERT INTO `operate` VALUES ('27', '2', '12', '0', '1', '0');
INSERT INTO `operate` VALUES ('28', '4', '21', '0', '2', '9');
INSERT INTO `operate` VALUES ('29', '4', '58', '0', '2', '0');
INSERT INTO `operate` VALUES ('30', '2', '21', '0', '1', '0');
INSERT INTO `operate` VALUES ('31', '4', '9', '0', '1', '0');
INSERT INTO `operate` VALUES ('32', '5', '21', '0', '2', '0');
INSERT INTO `operate` VALUES ('33', '33', '1', '0', '1', '1');
INSERT INTO `operate` VALUES ('34', '23', '21', '0', '1', '0');
INSERT INTO `operate` VALUES ('35', '23', '3', '0', '1', '0');
INSERT INTO `operate` VALUES ('36', '5', '3', '0', '2', '0');
INSERT INTO `operate` VALUES ('37', '5', '2', '0', '1', '0');

-- ----------------------------
-- Table structure for `prefer`
-- ----------------------------
DROP TABLE IF EXISTS `prefer`;
CREATE TABLE `prefer` (
  `user_id` int(20) NOT NULL,
  `club_first` int(10) DEFAULT '0',
  `club_second` int(10) DEFAULT '0',
  `club_third` int(10) DEFAULT '0',
  `club_four` int(10) DEFAULT '0',
  `club_five` int(10) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prefer
-- ----------------------------
INSERT INTO `prefer` VALUES ('2', '3', '23', '2', '30', '21');
INSERT INTO `prefer` VALUES ('4', '1', '21', '3', '58', '9');
INSERT INTO `prefer` VALUES ('5', '21', '3', '30', '2', '0');
INSERT INTO `prefer` VALUES ('6', '25', '2', '0', '0', '0');
INSERT INTO `prefer` VALUES ('13', '23', '12', '11', '0', '0');
INSERT INTO `prefer` VALUES ('14', '2', '25', '12', '3', '0');
INSERT INTO `prefer` VALUES ('20', '3', '4', '32', '30', '2');
INSERT INTO `prefer` VALUES ('23', '21', '3', '0', '0', '0');
INSERT INTO `prefer` VALUES ('24', '58', '0', '0', '0', '0');
INSERT INTO `prefer` VALUES ('33', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `quanz`
-- ----------------------------
DROP TABLE IF EXISTS `quanz`;
CREATE TABLE `quanz` (
  `quanZ_id` int(20) NOT NULL AUTO_INCREMENT,
  `quanZ_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quanZ_memo` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `quanZ_pic` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `quanZ_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `quanZ_state` int(10) NOT NULL DEFAULT '0',
  `quanZ_approve` int(2) NOT NULL DEFAULT '1',
  `quanZ_isclose` int(2) DEFAULT '1',
  PRIMARY KEY (`quanZ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of quanz
-- ----------------------------
INSERT INTO `quanz` VALUES ('1', 'C罗', '1', '1513578203527.jpg', '2021-05-19 01:16:59', '10', '1', '1');
INSERT INTO `quanz` VALUES ('9', '安踏', '著名运动品牌！', '1513578164140.jpg', '2021-05-19 10:37:13', '7', '1', '1');
INSERT INTO `quanz` VALUES ('10', '莱万多夫斯基', '因为邓世华是他粉丝', '1513578164140.jpg', '2021-05-19 10:43:01', '6', '1', '1');
INSERT INTO `quanz` VALUES ('14', '欧洲冠军杯', '这是欧洲俱乐部里最顶级的赛事，吸引了世界最高水平的足球运动员，同时也汇聚了各大豪门俱乐部优秀的球衣文化。', '1510415533800.jpg', '2021-05-20 21:04:30', '6', '1', '1');
INSERT INTO `quanz` VALUES ('15', '冷门球衣', '不止大俱乐部有拥簇，我们只关注冷门球队球衣的优秀设计，这里聚集了大量的收藏冷门球衣的爱好者。', '1513580607294.jpg', '2021-05-20 21:05:39', '6', '1', '1');
INSERT INTO `quanz` VALUES ('16', '亚洲冠军联赛', '亚洲的足球冠军联赛。', '1513578217324.jpg', '2021-05-20 21:06:05', '6', '1', '1');
INSERT INTO `quanz` VALUES ('17', '国足球衣', '中国国家男子足球队，成立时间较早，历经多年，球衣赞助商经历过阿迪达斯、耐克等时期，收藏人数众多，欢迎大家的发帖活跃。', '1251749434.jpg', '2021-05-21 11:01:29', '6', '1', '1');
INSERT INTO `quanz` VALUES ('18', '卡斯蒂利亚', '皇家马德里卡斯蒂利亚足球俱乐部，是西班牙皇家马德里足球俱乐部的二队，现参加西班牙足球乙级联赛。也被称为皇马B队。', 'IMG_20210418_220735.jpg', '2021-05-21 11:05:33', '5', '1', '1');
INSERT INTO `quanz` VALUES ('19', '中甲', '快乐足球。快乐中甲。以球会友。快乐人生。\n你吃你的大餐！我吃我的咸菜！你追逐你的豪门。我守望我的中甲。', 'IMG_20200623_085649.jpg', '2021-05-22 16:07:50', '7', '1', '1');
INSERT INTO `quanz` VALUES ('20', '欧洲杯', '欧洲杯圈子欢迎大家！新的一年欧洲杯即将开始，快来讨论吧！', '1513580607294.jpg', '2021-05-22 16:09:48', '4', '1', '1');
INSERT INTO `quanz` VALUES ('21', '球星卡', '球星卡新手聚集地！欢迎各位新人卡密！', '1513578217324.jpg', '2021-05-22 16:12:12', '5', '1', '1');
INSERT INTO `quanz` VALUES ('22', '帕尼尼', '【足球球星卡】卡迷聚集地！\n中国最大足球球星卡卡迷聚集地。你只要是球迷，就会喜欢帕尼尼', 'QQ图片20171106132433.jpg', '2021-05-22 16:15:06', '3', '0', '1');
INSERT INTO `quanz` VALUES ('23', '世界杯', '球迷盛宴，精彩不断。', 'QQ图片20171106132446.jpg', '2021-05-22 16:17:18', '2', '0', '1');
INSERT INTO `quanz` VALUES ('24', '亚洲杯', '永远的东方巨龙。', '1513578183443.jpg', '2021-05-22 18:10:05', '1', '0', '1');

-- ----------------------------
-- Table structure for `qzuser`
-- ----------------------------
DROP TABLE IF EXISTS `qzuser`;
CREATE TABLE `qzuser` (
  `qzuser_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) DEFAULT NULL,
  `quanZ_id` int(20) DEFAULT NULL,
  `quanZ_pur` int(20) NOT NULL,
  PRIMARY KEY (`qzuser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of qzuser
-- ----------------------------
INSERT INTO `qzuser` VALUES ('1', '5', '1', '0');
INSERT INTO `qzuser` VALUES ('9', '5', '9', '0');
INSERT INTO `qzuser` VALUES ('10', '4', '10', '0');
INSERT INTO `qzuser` VALUES ('13', '26', '10', '2');
INSERT INTO `qzuser` VALUES ('14', '31', '10', '2');
INSERT INTO `qzuser` VALUES ('15', '27', '10', '2');
INSERT INTO `qzuser` VALUES ('16', '25', '10', '2');
INSERT INTO `qzuser` VALUES ('17', '5', '10', '2');
INSERT INTO `qzuser` VALUES ('18', '17', '1', '2');
INSERT INTO `qzuser` VALUES ('19', '30', '1', '2');
INSERT INTO `qzuser` VALUES ('20', '13', '1', '2');
INSERT INTO `qzuser` VALUES ('21', '14', '1', '2');
INSERT INTO `qzuser` VALUES ('22', '28', '1', '2');
INSERT INTO `qzuser` VALUES ('23', '23', '14', '2');
INSERT INTO `qzuser` VALUES ('24', '23', '15', '0');
INSERT INTO `qzuser` VALUES ('25', '23', '16', '0');
INSERT INTO `qzuser` VALUES ('26', '21', '14', '2');
INSERT INTO `qzuser` VALUES ('27', '20', '15', '2');
INSERT INTO `qzuser` VALUES ('28', '18', '15', '2');
INSERT INTO `qzuser` VALUES ('29', '24', '15', '2');
INSERT INTO `qzuser` VALUES ('30', '16', '15', '2');
INSERT INTO `qzuser` VALUES ('31', '16', '1', '2');
INSERT INTO `qzuser` VALUES ('32', '24', '1', '2');
INSERT INTO `qzuser` VALUES ('33', '26', '14', '2');
INSERT INTO `qzuser` VALUES ('34', '26', '15', '2');
INSERT INTO `qzuser` VALUES ('35', '2', '16', '2');
INSERT INTO `qzuser` VALUES ('36', '2', '9', '2');
INSERT INTO `qzuser` VALUES ('37', '33', '16', '2');
INSERT INTO `qzuser` VALUES ('38', '33', '17', '0');
INSERT INTO `qzuser` VALUES ('39', '33', '9', '2');
INSERT INTO `qzuser` VALUES ('40', '33', '14', '2');
INSERT INTO `qzuser` VALUES ('41', '32', '9', '2');
INSERT INTO `qzuser` VALUES ('42', '32', '14', '2');
INSERT INTO `qzuser` VALUES ('43', '32', '16', '2');
INSERT INTO `qzuser` VALUES ('44', '32', '18', '0');
INSERT INTO `qzuser` VALUES ('45', '32', '1', '2');
INSERT INTO `qzuser` VALUES ('46', '20', '9', '2');
INSERT INTO `qzuser` VALUES ('47', '20', '14', '2');
INSERT INTO `qzuser` VALUES ('48', '20', '16', '2');
INSERT INTO `qzuser` VALUES ('49', '21', '9', '2');
INSERT INTO `qzuser` VALUES ('50', '21', '16', '2');
INSERT INTO `qzuser` VALUES ('51', '21', '19', '0');
INSERT INTO `qzuser` VALUES ('52', '19', '20', '0');
INSERT INTO `qzuser` VALUES ('53', '19', '17', '2');
INSERT INTO `qzuser` VALUES ('54', '19', '18', '2');
INSERT INTO `qzuser` VALUES ('55', '19', '19', '2');
INSERT INTO `qzuser` VALUES ('56', '19', '21', '0');
INSERT INTO `qzuser` VALUES ('57', '30', '17', '2');
INSERT INTO `qzuser` VALUES ('58', '30', '18', '2');
INSERT INTO `qzuser` VALUES ('59', '30', '19', '2');
INSERT INTO `qzuser` VALUES ('60', '30', '20', '2');
INSERT INTO `qzuser` VALUES ('61', '30', '21', '2');
INSERT INTO `qzuser` VALUES ('62', '30', '22', '0');
INSERT INTO `qzuser` VALUES ('63', '6', '17', '2');
INSERT INTO `qzuser` VALUES ('64', '6', '18', '2');
INSERT INTO `qzuser` VALUES ('65', '6', '19', '2');
INSERT INTO `qzuser` VALUES ('66', '6', '20', '2');
INSERT INTO `qzuser` VALUES ('67', '6', '21', '2');
INSERT INTO `qzuser` VALUES ('68', '14', '21', '2');
INSERT INTO `qzuser` VALUES ('69', '14', '20', '2');
INSERT INTO `qzuser` VALUES ('70', '14', '19', '2');
INSERT INTO `qzuser` VALUES ('71', '14', '18', '2');
INSERT INTO `qzuser` VALUES ('72', '14', '17', '2');
INSERT INTO `qzuser` VALUES ('73', '14', '23', '0');
INSERT INTO `qzuser` VALUES ('74', '14', '22', '2');
INSERT INTO `qzuser` VALUES ('75', '23', '17', '2');
INSERT INTO `qzuser` VALUES ('76', '23', '19', '2');
INSERT INTO `qzuser` VALUES ('77', '23', '21', '2');
INSERT INTO `qzuser` VALUES ('78', '23', '22', '2');
INSERT INTO `qzuser` VALUES ('79', '23', '23', '2');
INSERT INTO `qzuser` VALUES ('80', '21', '24', '0');
INSERT INTO `qzuser` VALUES ('81', '4', '1', '2');
INSERT INTO `qzuser` VALUES ('83', '4', '19', '2');
INSERT INTO `qzuser` VALUES ('84', '4', '9', '2');

-- ----------------------------
-- Table structure for `season`
-- ----------------------------
DROP TABLE IF EXISTS `season`;
CREATE TABLE `season` (
  `season_id` int(20) NOT NULL AUTO_INCREMENT,
  `season_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`season_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of season
-- ----------------------------
INSERT INTO `season` VALUES ('1', '2000/2001');
INSERT INTO `season` VALUES ('2', '2001/2002');
INSERT INTO `season` VALUES ('3', '2002/2003');
INSERT INTO `season` VALUES ('4', '2003/2004');
INSERT INTO `season` VALUES ('5', '2004/2005');
INSERT INTO `season` VALUES ('6', '2005/2006');
INSERT INTO `season` VALUES ('7', '2006/2007');
INSERT INTO `season` VALUES ('8', '2007/2008');
INSERT INTO `season` VALUES ('9', '2008/2009');
INSERT INTO `season` VALUES ('10', '2009/2010');
INSERT INTO `season` VALUES ('11', '2010/2011');
INSERT INTO `season` VALUES ('12', '2011/2012');
INSERT INTO `season` VALUES ('13', '2012/2013');
INSERT INTO `season` VALUES ('14', '2013/2014');
INSERT INTO `season` VALUES ('15', '2014/2015');
INSERT INTO `season` VALUES ('16', '2015/2016');
INSERT INTO `season` VALUES ('17', '2016/2017');
INSERT INTO `season` VALUES ('18', '2017/2018');
INSERT INTO `season` VALUES ('19', '2018/2019');
INSERT INTO `season` VALUES ('20', '2019/2020');
INSERT INTO `season` VALUES ('21', '2020/2021');
INSERT INTO `season` VALUES ('22', '2021/2022');
INSERT INTO `season` VALUES ('23', '2022/2023');

-- ----------------------------
-- Table structure for `share`
-- ----------------------------
DROP TABLE IF EXISTS `share`;
CREATE TABLE `share` (
  `share_id` int(10) NOT NULL AUTO_INCREMENT,
  `share_text` varchar(200) CHARACTER SET utf8 NOT NULL,
  `user_username` varchar(128) CHARACTER SET utf8 NOT NULL,
  `share_time` varchar(50) NOT NULL,
  `userjersey_id` int(10) DEFAULT NULL,
  `comment_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`share_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of share
-- ----------------------------
INSERT INTO `share` VALUES ('1', 'C罗在皇马的客场球衣，非常好看。', '123', '2021-04-16 18:01:16', '32', '0');
INSERT INTO `share` VALUES ('2', '2018年，耐克发布的城市系列中的一款，这个球衣是曼城俱乐部的客场球衣。', '123', '2021-04-16 18:03:58', '33', '0');
INSERT INTO `share` VALUES ('3', '广州恒大15年主场球衣。', '123', '2021-04-16 18:15:29', '34', '0');
INSERT INTO `share` VALUES ('4', '克罗斯在皇马的2018/2019赛季的客场球衣。', '123', '2021-04-16 18:17:53', '35', '0');
INSERT INTO `share` VALUES ('5', 'C罗在皇马的主场球衣，非常经典。', '123', '2021-04-16 19:53:18', '36', '0');
INSERT INTO `share` VALUES ('6', '2017/2018赛季西班牙超级杯首回合，C罗替补世界波进球后，脱衣庆祝，并像球迷晒了球衣，这件为17/18赛季皇马的客场球衣，这个赛季最终夺得欧冠奖杯，但也是C罗在皇马的最后一个赛季，颇为珍贵。', 'cristianoronaldo', '2021-04-17 23:50:25', '37', '0');
INSERT INTO `share` VALUES ('7', '法国国家队主场球衣，参加了18年世界杯并夺冠，有着极大的意义。', 'jin', '2021-04-18 10:07:28', '38', '0');
INSERT INTO `share` VALUES ('8', 'adidas在16/17赛季推出的客场特别球衣，以其星空为特点，受到广大球迷的喜欢。', '854145545@qq.com', '2021-04-18 10:33:11', '39', '0');
INSERT INTO `share` VALUES ('9', '119/20赛季，勒沃库森专为中国球迷特制的主场球迷版球服。', 'lyy', '2021-04-20 09:34:36', '40', '0');
INSERT INTO `share` VALUES ('10', '石家庄永昌21年迁到沧州改为中性名称后的第一年主场球衣。', 'zyq', '2021-04-20 09:36:39', '41', '0');
INSERT INTO `share` VALUES ('11', '巴黎圣日尔曼20/21新赛季客场球衣，依然是传统的白色与深蓝搭配。', 'zyq', '2021-04-20 09:38:00', '42', '0');
INSERT INTO `share` VALUES ('12', '18/19赛季，尤文客场球衣，也是C罗转会尤文图斯的一个赛季所穿球衣。', 'jin', '2021-04-20 09:40:29', '43', '0');
INSERT INTO `share` VALUES ('13', '14/15赛季皇马客场球衣，以其粉色的设计颇得球迷的喜爱。', 'cristianoronaldo', '2021-04-20 09:42:13', '44', '0');
INSERT INTO `share` VALUES ('14', '浙江绿城19年的主场队服，球服设计充分表现了杭州的风景和人文特色，是当年颇受欢迎的球衣之一。', '854145545@qq.com', '2021-04-20 09:45:15', '45', '0');
INSERT INTO `share` VALUES ('15', '耐克在18/19赛季设计的城市系列之一，以球队所在城市为特色，融入球衣的设计理念中。', '123', '2021-04-20 09:47:20', '46', '0');
INSERT INTO `share` VALUES ('16', '10/11皇马的主场球衣，有些年头了。', 'mcc', '2021-04-20 18:45:33', '47', '0');
INSERT INTO `share` VALUES ('17', '上海申花20年的主场球衣。', 'lsxiaogui', '2021-04-20 18:47:00', '48', '0');
INSERT INTO `share` VALUES ('18', '耐克17/18赛季推出的城市系列球衣，热刺的这款在城市系列中属于稀有款。', 'lsxiaogui', '2021-04-20 18:48:14', '49', '0');
INSERT INTO `share` VALUES ('19', '21年上海申花最新款主场球衣。', 'zjy', '2021-04-20 18:50:41', '50', '0');
INSERT INTO `share` VALUES ('20', '15赛季广州恒大的主场球衣，算是比较好看的一个赛季。', 'jin', '2021-04-20 18:52:15', '51', '0');
INSERT INTO `share` VALUES ('21', '广州恒大19赛季主场球衣，以爪印为设计特点。', 'cristianoronaldo', '2021-04-20 18:53:50', '52', '0');
INSERT INTO `share` VALUES ('22', '耐克在17/19赛季推出的城市系列球衣，此款为巴萨的客场球衣。', 'wf', '2021-04-20 18:57:05', '53', '0');
INSERT INTO `share` VALUES ('23', '浙江绿城20赛季的主场球衣。', 'mcc', '2021-04-20 18:58:42', '54', '0');
INSERT INTO `share` VALUES ('24', '皇马14/15赛季主场球衣，那个赛季发挥不佳。', 'zyq', '2021-04-20 19:03:09', '55', '0');
INSERT INTO `share` VALUES ('25', '切尔新20/21最新款主场球衣', 'wf', '2021-04-22 15:53:12', '56', '0');
INSERT INTO `share` VALUES ('26', '19/20勒沃库森主场球衣。', 'jin', '2021-04-22 15:55:12', '57', '0');
INSERT INTO `share` VALUES ('27', '19/20热刺客场球衣。', 'yww', '2021-04-22 15:57:10', '58', '0');
INSERT INTO `share` VALUES ('28', '20/21多特蒙德主场球衣。', 'lcj', '2021-04-22 15:58:56', '59', '0');
INSERT INTO `share` VALUES ('29', '阿森纳主场球衣', 'lqq', '2021-04-22 16:00:37', '60', '0');
INSERT INTO `share` VALUES ('30', '马赛主场球衣。', 'zw', '2021-04-22 16:02:02', '61', '0');
INSERT INTO `share` VALUES ('31', '罗马主场球衣。', 'hyw', '2021-04-22 16:03:15', '62', '0');
INSERT INTO `share` VALUES ('32', '尤文图斯主场经典球衣。', 'lsh', '2021-04-22 17:10:25', '63', '0');
INSERT INTO `share` VALUES ('33', '北京国安21赛季新球衣。', 'mcc', '2021-04-23 09:33:57', '64', '0');
INSERT INTO `share` VALUES ('34', '广州恒大的客场球衣中属于好看的一款。', '123', '2021-04-23 09:47:38', '65', '0');
INSERT INTO `share` VALUES ('36', '18/19尤文主场联名球衣', 'mcc', '2021-04-24 14:59:32', '68', '0');
INSERT INTO `share` VALUES ('37', '略', '123', '2021-05-16 00:22:22', '69', '0');

-- ----------------------------
-- Table structure for `sportsman`
-- ----------------------------
DROP TABLE IF EXISTS `sportsman`;
CREATE TABLE `sportsman` (
  `sportsman_id` int(8) NOT NULL AUTO_INCREMENT,
  `sportsman_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `club_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sportsman_birth` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sportsman_country` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sportsman_memo` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`sportsman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sportsman
-- ----------------------------
INSERT INTO `sportsman` VALUES ('1', '拉莫斯', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('2', '卡瓦哈尔', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('3', 'C罗纳尔多', '尤文图斯', null, null, null);
INSERT INTO `sportsman` VALUES ('4', '梅西', '巴塞罗那', null, null, null);
INSERT INTO `sportsman` VALUES ('5', '克罗斯', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('6', '莫德里奇', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('7', '本泽马', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('8', '瓦拉内', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('9', '马塞洛', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('10', '巴尔韦德', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('11', '格列兹曼', '巴塞罗那', null, null, null);
INSERT INTO `sportsman` VALUES ('12', '登贝莱', '巴塞罗那', null, null, null);
INSERT INTO `sportsman` VALUES ('13', '武磊', '西班牙人', null, null, null);
INSERT INTO `sportsman` VALUES ('14', '郑智', '广州队', null, null, null);
INSERT INTO `sportsman` VALUES ('15', '张琳芃', '广州队', null, null, null);
INSERT INTO `sportsman` VALUES ('16', '李学鹏', '广州队', null, null, null);
INSERT INTO `sportsman` VALUES ('17', '高拉特', '广州队', null, null, null);
INSERT INTO `sportsman` VALUES ('18', '金敬道', '山东鲁能', null, null, null);
INSERT INTO `sportsman` VALUES ('19', '李可', '北京国安', null, null, null);
INSERT INTO `sportsman` VALUES ('20', ' 热苏斯', '曼城', null, null, null);
INSERT INTO `sportsman` VALUES ('21', '伯纳多-席尔瓦', '曼城', null, null, null);
INSERT INTO `sportsman` VALUES ('22', '德布劳内', '曼城', null, null, null);
INSERT INTO `sportsman` VALUES ('23', '福登', '曼城', null, null, null);
INSERT INTO `sportsman` VALUES ('24', '罗德里-埃尔南德斯', '曼城', null, null, null);
INSERT INTO `sportsman` VALUES ('25', '马夏尔', '曼联', null, null, null);
INSERT INTO `sportsman` VALUES ('26', '拉什福德', '曼联', null, null, null);
INSERT INTO `sportsman` VALUES ('27', '弗雷德', '曼联', null, null, null);
INSERT INTO `sportsman` VALUES ('28', '博格巴', '曼联', null, null, null);
INSERT INTO `sportsman` VALUES ('29', '马奎尔', '曼联', null, null, null);
INSERT INTO `sportsman` VALUES ('30', '哈里-凯恩', '热刺', null, null, null);
INSERT INTO `sportsman` VALUES ('31', '孙兴慜', '热刺', null, null, null);
INSERT INTO `sportsman` VALUES ('32', '阿里', '热刺', null, null, null);
INSERT INTO `sportsman` VALUES ('33', '雷吉隆', '热刺', null, null, null);
INSERT INTO `sportsman` VALUES ('34', '洛里', '热刺', null, null, null);
INSERT INTO `sportsman` VALUES ('35', '萨拉赫', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('36', '马内', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('37', '菲尔米诺', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('38', '亚历山大-阿诺德', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('39', '范戴克', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('40', '阿利松-贝克尔', '利物浦', null, null, null);
INSERT INTO `sportsman` VALUES ('41', '维尼修斯', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('42', '阿森西奥', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('43', '阿扎尔', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('44', '卡塞米罗', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('45', '伊斯科', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('46', '库尔图瓦', '皇家马德里', null, null, null);
INSERT INTO `sportsman` VALUES ('47', '特尔施特根', '巴塞罗那', null, null, null);
INSERT INTO `sportsman` VALUES ('48', '阿尔巴', '巴塞罗那', null, null, null);
INSERT INTO `sportsman` VALUES ('49', '苏亚雷斯', '马德里竞技', null, null, null);
INSERT INTO `sportsman` VALUES ('50', '若昂-菲力克斯', '马德里竞技', null, null, null);
INSERT INTO `sportsman` VALUES ('51', '卡拉斯科', '马德里竞技', null, null, null);
INSERT INTO `sportsman` VALUES ('52', '萨乌尔', '马德里竞技', null, null, null);
INSERT INTO `sportsman` VALUES ('53', '莱万多夫斯基', '拜仁慕尼黑', null, null, null);
INSERT INTO `sportsman` VALUES ('54', '托马斯-穆勒', '拜仁慕尼黑', null, null, null);
INSERT INTO `sportsman` VALUES ('55', '格纳布里', '拜仁慕尼黑', null, null, null);
INSERT INTO `sportsman` VALUES ('56', '萨内', '拜仁慕尼黑', null, null, null);
INSERT INTO `sportsman` VALUES ('57', '阿拉巴', '拜仁慕尼黑', null, null, null);
INSERT INTO `sportsman` VALUES ('58', '阿方索-戴维斯', '拜仁慕尼黑', null, null, null);

-- ----------------------------
-- Table structure for `tiezi`
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi` (
  `tiezi_id` int(10) NOT NULL AUTO_INCREMENT,
  `tiezi_txt` varchar(500) CHARACTER SET utf8 NOT NULL,
  `tiezi_time` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_id` int(20) NOT NULL,
  `quanZ_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`tiezi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES ('1', 'C罗昨晚的意超杯夺冠了，太爽了！！！！！', '2021-05-20 23:51:28', '16', '1');
INSERT INTO `tiezi` VALUES ('2', '北京时间5月16日凌晨00：00，尤文图斯坐镇主场迎来国际米兰的挑战。C罗在上半场点球补射破门，收获了个人职业生涯第777粒进球。\n在本场比赛进行到第24分钟时，尤文图斯得到一粒点球，C罗主罚点球被汉达诺维奇扑出，随后跟上补射破门得分。打入这粒进球后，C罗本赛季各项赛事进球数来到了36粒，而在联赛中打入29球。', '2021-05-21 10:23:18', '24', '1');
INSERT INTO `tiezi` VALUES ('3', '他的状态确实下滑了，毕竟下滑了，希望他今夏离开尤文吧，回到皇马或者曼联吧，资金虽然是个大问题，但现在看球都是情怀了，我们不应该给他过高的要求。', '2021-05-21 10:33:38', '24', '1');
INSERT INTO `tiezi` VALUES ('4', '本来是莱万开启属于自己时代的一年，应是发展成这样的结局；一个人的命运啊，当然要靠自我奋斗，但是也要考虑到历史的进程，人不能和自己过不去，身体毕竟不是铁打的。', '2021-05-21 10:38:43', '26', '10');
INSERT INTO `tiezi` VALUES ('5', '你认为C罗会在今年夏天转会吗？', '2021-05-21 11:06:55', '32', '1');
INSERT INTO `tiezi` VALUES ('6', '请问哪里有卖西甲冷门球衣的啊', '2021-05-21 19:23:57', '20', '15');
INSERT INTO `tiezi` VALUES ('7', '11111', '2021-05-26 16:01:10', '4', '10');

-- ----------------------------
-- Table structure for `tip`
-- ----------------------------
DROP TABLE IF EXISTS `tip`;
CREATE TABLE `tip` (
  `tip_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `tip_txt` varchar(200) CHARACTER SET utf8 NOT NULL,
  `tip_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tip_state` int(2) NOT NULL,
  PRIMARY KEY (`tip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tip
-- ----------------------------
INSERT INTO `tip` VALUES ('1', '5', '创建您的圈子已通过审核，当初试创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-19 15:06:34', '1');
INSERT INTO `tip` VALUES ('2', '4', '创建您的圈子已通过审核，当初试创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-19 19:19:22', '1');
INSERT INTO `tip` VALUES ('3', '23', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-20 21:21:27', '0');
INSERT INTO `tip` VALUES ('4', '23', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-20 21:21:34', '0');
INSERT INTO `tip` VALUES ('5', '5', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-21 10:54:37', '1');
INSERT INTO `tip` VALUES ('6', '23', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-21 10:54:37', '0');
INSERT INTO `tip` VALUES ('7', '33', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:10:46', '0');
INSERT INTO `tip` VALUES ('8', '32', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:10:47', '0');
INSERT INTO `tip` VALUES ('9', '21', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:10:49', '1');
INSERT INTO `tip` VALUES ('10', '19', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:10:50', '1');
INSERT INTO `tip` VALUES ('11', '19', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:12:32', '0');
INSERT INTO `tip` VALUES ('12', '30', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:17:22', '0');
INSERT INTO `tip` VALUES ('13', '14', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-22 16:17:24', '0');
INSERT INTO `tip` VALUES ('14', '23', '您已被撤销圈主。', '2021-05-23 17:38:59', '0');
INSERT INTO `tip` VALUES ('15', '5', '由于圈子违规，圈子已被封圈。', '2021-05-24 13:19:33', '1');
INSERT INTO `tip` VALUES ('16', '5', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-24 13:46:54', '1');
INSERT INTO `tip` VALUES ('17', '23', '您已被撤销圈主。', '2021-05-24 15:01:58', '0');
INSERT INTO `tip` VALUES ('18', '5', '圈子已被解封。', '2021-05-24 15:02:14', '1');
INSERT INTO `tip` VALUES ('19', '5', '圈子不被允许创建。', '2021-05-24 15:28:10', '1');
INSERT INTO `tip` VALUES ('20', '5', '圈子不被允许创建。', '2021-05-24 15:49:14', '1');
INSERT INTO `tip` VALUES ('21', '5', '圈子不被允许创建。', '2021-05-24 15:56:34', '1');
INSERT INTO `tip` VALUES ('22', '5', '由于圈子违规，圈子已被封圈。', '2021-05-24 15:57:57', '1');
INSERT INTO `tip` VALUES ('23', '4', '由于圈子违规，圈子已被封圈。', '2021-05-24 23:16:21', '1');
INSERT INTO `tip` VALUES ('24', '4', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-26 15:59:29', '1');
INSERT INTO `tip` VALUES ('25', '4', '圈子不被允许创建。', '2021-05-26 16:00:03', '1');
INSERT INTO `tip` VALUES ('26', '5', '圈子已被解封。', '2021-05-26 16:00:27', '0');
INSERT INTO `tip` VALUES ('27', '5', '由于圈子违规，圈子已被封圈。', '2021-05-26 16:00:30', '0');
INSERT INTO `tip` VALUES ('28', '4', '圈子已被解封。', '2021-05-26 16:00:58', '1');
INSERT INTO `tip` VALUES ('29', '5', '圈子已被解封。', '2021-05-26 16:02:16', '0');
INSERT INTO `tip` VALUES ('30', '5', '由于圈子违规，圈子已被封圈。', '2021-05-26 16:16:29', '0');
INSERT INTO `tip` VALUES ('31', '5', '圈子已被解封。', '2021-05-26 16:16:44', '0');
INSERT INTO `tip` VALUES ('32', '4', '您已被撤销圈主。', '2021-05-26 16:17:20', '1');
INSERT INTO `tip` VALUES ('33', '19', '创建您的圈子已通过审核，当初始创建人数到达5人时，就会创建成功，快去拉人吧！', '2021-05-26 16:21:24', '0');
INSERT INTO `tip` VALUES ('34', '4', '圈子不被允许创建。', '2021-05-26 18:54:19', '1');
INSERT INTO `tip` VALUES ('35', '5', '由于圈子违规，圈子已被封圈。', '2021-05-26 18:54:40', '0');
INSERT INTO `tip` VALUES ('36', '5', '圈子已被解封。', '2021-05-26 18:54:56', '0');

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `type_id` int(5) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '主场');
INSERT INTO `type` VALUES ('2', '客场');
INSERT INTO `type` VALUES ('3', '第二客场');
INSERT INTO `type` VALUES ('4', '第三客场');
INSERT INTO `type` VALUES ('9', '夏季限量');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_password` varchar(128) CHARACTER SET utf8 NOT NULL,
  `user_birth` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `user_sex` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `user_webname` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `user_purview` int(2) NOT NULL DEFAULT '1',
  `user_pic` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`user_id`,`user_username`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1204887787', '123456', '1999/01/15', '男', 'Lumos', '2', '');
INSERT INTO `user` VALUES ('2', 'cristianoronaldo', '19850205', '1985/02/05', '男', '总裁', '1', 'cluo.jpg');
INSERT INTO `user` VALUES ('4', '123', '123', null, null, '卡卡布奇诺-', '1', '123.jpg');
INSERT INTO `user` VALUES ('5', '12', '12', null, null, '12', '1', null);
INSERT INTO `user` VALUES ('6', 'jin', '456', null, null, 'jin', '1', null);
INSERT INTO `user` VALUES ('11', '854145545@qq.com', '123', null, null, 'keyl', '1', 'car.jpg');
INSERT INTO `user` VALUES ('12', 'meixiaoyin', '1234', null, null, '卡瓦哈尔', '3', '1513578203527.jpg');
INSERT INTO `user` VALUES ('13', 'zyq', '123', null, '女', '话藏心', '1', null);
INSERT INTO `user` VALUES ('14', 'lyy', '123', null, '女', 'run', '1', null);
INSERT INTO `user` VALUES ('15', 'xer', '123', null, null, 'Kyra', '1', null);
INSERT INTO `user` VALUES ('16', 'lxl', '123', null, null, 'ldh', '1', null);
INSERT INTO `user` VALUES ('17', 'lsxiaogui', '123', null, null, 'xiaogui', '1', null);
INSERT INTO `user` VALUES ('18', 'zjy', '123', null, null, 'z', '1', null);
INSERT INTO `user` VALUES ('19', 'wf', '123', null, null, '今天柯西收敛了吗', '1', null);
INSERT INTO `user` VALUES ('20', 'mcc', '123', null, null, '子月', '1', null);
INSERT INTO `user` VALUES ('21', 'yww', '123', null, null, '过期氟西汀', '1', null);
INSERT INTO `user` VALUES ('22', 'lcj', '123', null, null, '尼酱', '1', null);
INSERT INTO `user` VALUES ('23', 'lqq', '123', null, null, '小', '1', null);
INSERT INTO `user` VALUES ('24', 'zw', '123', null, null, '校园靓仔', '1', '123213123.jpg');
INSERT INTO `user` VALUES ('25', 'hyw', '123', null, null, '安顺', '1', null);
INSERT INTO `user` VALUES ('26', 'dsh', '123', null, null, '七', '1', 'IMG_20210421_075354.jpg');
INSERT INTO `user` VALUES ('27', 'cxd', '123', null, null, '池塘', '1', null);
INSERT INTO `user` VALUES ('28', 'hy', '123', null, null, 'A.Y', '1', null);
INSERT INTO `user` VALUES ('29', 'ljp', '123', null, null, '我', '1', null);
INSERT INTO `user` VALUES ('30', 'lsx', '123', null, null, 'Mira', '1', null);
INSERT INTO `user` VALUES ('31', 'lsh', '123', null, null, 'kiyomi', '1', null);
INSERT INTO `user` VALUES ('32', 'zzx', '123', null, null, 'Hogsmeade', '1', '123.jpg');
INSERT INTO `user` VALUES ('33', 'fjy', '123', null, null, 'Wohaoe', '1', 'IMG_20210421_074924.jpg');

-- ----------------------------
-- Table structure for `userjersey`
-- ----------------------------
DROP TABLE IF EXISTS `userjersey`;
CREATE TABLE `userjersey` (
  `userjersey_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(100) NOT NULL,
  `club_id` int(8) DEFAULT NULL,
  `season_id` int(20) DEFAULT NULL,
  `type_id` int(5) DEFAULT NULL,
  `userjersey_pic` varchar(120) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`userjersey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userjersey
-- ----------------------------
INSERT INTO `userjersey` VALUES ('32', '4', '1', '18', '2', 'IMG_20191002_224303.jpg');
INSERT INTO `userjersey` VALUES ('33', '4', '9', '18', '2', 'IMG_20200111_083442.jpg');
INSERT INTO `userjersey` VALUES ('34', '4', '2', '15', '1', 'IMG_20200623_085649.jpg');
INSERT INTO `userjersey` VALUES ('35', '4', '1', '19', '3', 'IMG_20191002_224400.jpg');
INSERT INTO `userjersey` VALUES ('36', '4', '1', '16', '1', 'IMG_20191015_132536.jpg');
INSERT INTO `userjersey` VALUES ('37', '2', '1', '18', '2', '1513578183443.jpg');
INSERT INTO `userjersey` VALUES ('38', '6', '28', '18', '1', '949570219.jpg');
INSERT INTO `userjersey` VALUES ('39', '11', '1', '17', '4', '463280571.jpg');
INSERT INTO `userjersey` VALUES ('40', '14', '58', '20', '1', '-665140517.jpg');
INSERT INTO `userjersey` VALUES ('41', '13', '53', '21', '1', '1618873617864.jpg');
INSERT INTO `userjersey` VALUES ('42', '13', '28', '1', '2', '633922175.jpg');
INSERT INTO `userjersey` VALUES ('43', '6', '3', '19', '2', '2030077766.jpg');
INSERT INTO `userjersey` VALUES ('44', '2', '1', '15', '2', '-1760606668.jpg');
INSERT INTO `userjersey` VALUES ('45', '11', '59', '19', '1', '2039801852.jpg');
INSERT INTO `userjersey` VALUES ('46', '4', '4', '18', '2', '-1006166785.jpg');
INSERT INTO `userjersey` VALUES ('47', '20', '1', '11', '1', '-892452.jpg');
INSERT INTO `userjersey` VALUES ('48', '17', '21', '20', '1', '-663553818.jpg');
INSERT INTO `userjersey` VALUES ('49', '17', '23', '18', '2', '-1105950544.jpg');
INSERT INTO `userjersey` VALUES ('50', '18', '21', '21', '1', '27414739.jpg');
INSERT INTO `userjersey` VALUES ('51', '6', '2', '17', '1', '543572822.jpg');
INSERT INTO `userjersey` VALUES ('52', '2', '2', '20', '1', '-446678778.jpg');
INSERT INTO `userjersey` VALUES ('53', '19', '4', '18', '1', '-1006166785.jpg');
INSERT INTO `userjersey` VALUES ('54', '20', '59', '20', '1', '1285120494.jpg');
INSERT INTO `userjersey` VALUES ('55', '13', '1', '15', '1', '709374386.jpg');
INSERT INTO `userjersey` VALUES ('56', '19', '11', '21', '2', '104850520.jpg');
INSERT INTO `userjersey` VALUES ('57', '6', '58', '20', '1', '-227877864.jpg');
INSERT INTO `userjersey` VALUES ('58', '21', '23', '20', '2', '-388830408.jpg');
INSERT INTO `userjersey` VALUES ('59', '22', '27', '21', '1', '-566915426.jpg');
INSERT INTO `userjersey` VALUES ('60', '23', '12', '20', '1', '933999461.jpg');
INSERT INTO `userjersey` VALUES ('61', '24', '30', '20', '1', '-1004313803.jpg');
INSERT INTO `userjersey` VALUES ('62', '25', '25', '21', '1', '-1126169628.jpg');
INSERT INTO `userjersey` VALUES ('63', '31', '3', '19', '1', '1623960389.jpg');
INSERT INTO `userjersey` VALUES ('64', '20', '32', '21', '1', '1536800214.jpg');
INSERT INTO `userjersey` VALUES ('65', '4', '2', '19', '2', '-1635609182.jpg');
INSERT INTO `userjersey` VALUES ('68', '20', '3', '19', '1', '1233804774.jpg');
INSERT INTO `userjersey` VALUES ('69', '4', '21', '6', '2', 'car.jpg');

-- ----------------------------
-- Table structure for `vcode`
-- ----------------------------
DROP TABLE IF EXISTS `vcode`;
CREATE TABLE `vcode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `vcode` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vcode
-- ----------------------------
INSERT INTO `vcode` VALUES ('1', 'mxy', '1111');
INSERT INTO `vcode` VALUES ('2', '', '137287');
