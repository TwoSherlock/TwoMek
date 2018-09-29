/*
Navicat MySQL Data Transfer

Source Server         : mySqlConn
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : twosherlock

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2018-07-16 00:59:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `context` varchar(500) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '	TCP三次握手', 'TCP在建立连接的过程中有三次“握手”,关闭连接时有四次\"挥手\",这里将详细说明一下它们的过程。', '2018-05-10 09:46:23', '', 'b');
INSERT INTO `article` VALUES ('2', 'JAVA获取本机的公网IP', '我在学习WebService的过程中，想通过获取本机的ip地址来查询出使用者所在地，然后实现查询当地天气的功能。但是java自带的InetAddress类并不能获取到公网ip，无法查到ip所属地。本文介绍了如何解决这一问题，获取真正的公网ip。', '2018-05-22 09:47:13', '', 'b');
INSERT INTO `article` VALUES ('3', 'JQuery解决AJAX的跨域问题', '今天在写项目的时候，需要用ajax从别的网站获取返回值并显示到页面，期间遇到了ajax的跨域问题。在此记录一下这个学习过程。', '2018-05-09 00:35:17', null, 'b');
INSERT INTO `article` VALUES ('4', '解决SpringMVC中ajax返回中文乱码', '在spingMVC框架中，ajax的返回变得非常便利。可能是设计时并没有考虑到编码格式的问题，返回中文时的乱码很让人头疼。下面是我寻找到的一种有效的解决方法。', '2018-05-03 17:46:40', null, 'b');
INSERT INTO `article` VALUES ('5', 'SSM框架的maven配置', 'SSM框架的jar包很多，而且使用maven导入时很容易发生依赖冲突或者版本冲突，这里有一份比较全面的SSM框架的pom文件，方便大家搭建框架', '2018-04-20 23:09:50', null, 'b');
INSERT INTO `article` VALUES ('6', '推荐一个我喜欢的MAD', '曾经在B站看到了这个MAD，来自up主：蔚然desu  做得很棒，墙裂推荐。', '2018-05-01 14:00:02', null, 't');
INSERT INTO `article` VALUES ('7', '浅谈常见的数据库优化方案', '关于数据库优化方面，首先要了解是什么限制了数据库的查询效率？有如下几个方面：硬件、系统配置、表结构、sql与索引。其成本逐渐减少，效率逐渐增高，所以，做好数据库优化可以节省大量的成本。下面就来介绍一下几种优化方案。', '2018-07-01 00:04:03', null, 'b');
