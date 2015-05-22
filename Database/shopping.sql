/*
Navicat MySQL Data Transfer

Source Server         : database
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2015-05-17 15:38:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `ma_the_loai` int(11) NOT NULL auto_increment,
  `ten_the_loai` varchar(255) collate utf8_unicode_ci default NULL,
  `mo_ta` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`ma_the_loai`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'New', 'Quần áo mới thiết kế');
INSERT INTO `category` VALUES ('2', 'Sale', 'Quần áo giảm giá');
INSERT INTO `category` VALUES ('3', 'Style', 'Quần áo dạo phố');
INSERT INTO `category` VALUES ('4', 'Nam', 'Thời trang nam');
INSERT INTO `category` VALUES ('5', 'Nữ', 'Thời trang nữ');
INSERT INTO `category` VALUES ('6', 'Dép', 'Dép thời trang');
INSERT INTO `category` VALUES ('7', 'Nón', 'Nón thời trang');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id_history` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `ma_san_pham` int(11) default NULL,
  `ngay_mua` timestamp NULL default NULL,
  `so_luong` int(11) default NULL,
  `thanh_tien` double default NULL,
  PRIMARY KEY  (`id_history`),
  KEY `fk_history_product` USING BTREE (`ma_san_pham`),
  KEY `fk_history_user` USING BTREE (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('8', '13', '2', '2015-05-17 14:55:17', '1', '520000');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `ma_san_pham` int(11) NOT NULL auto_increment,
  `ma_the_loai` int(11) default NULL,
  `ten_san_pham` varchar(255) collate utf8_unicode_ci default NULL,
  `hinh_anh` varchar(255) collate utf8_unicode_ci default NULL,
  `gia_ban` double default NULL,
  `hang_san_xuat` varchar(255) collate utf8_unicode_ci default NULL,
  `thong_tin` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`ma_san_pham`),
  KEY `fk_product_category` (`ma_the_loai`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '1', 'Áo khoát Adachi mới', 'new.jpg', '100000', 'Oron', 'Đang cập nhật');
INSERT INTO `product` VALUES ('2', '2', 'Áo sale', 'nu1.jpg', '520000', 'Omo', 'Đang cập nhật');
INSERT INTO `product` VALUES ('3', '3', 'Áo no style', 'nostyle.jpg', '520000', 'Mabu', 'Đang cập nhật');
INSERT INTO `product` VALUES ('4', '4', 'Áo nam', 'nam.jpg', '520000', 'Lv', 'Đang cập nhật');
INSERT INTO `product` VALUES ('5', '5', 'Áo nữ 2', 'nu2.jpg', '520000', 'Romano', 'Đang cập nhật');
INSERT INTO `product` VALUES ('6', '6', 'Dép', 'dep.jpg', '520000', 'Bitis', 'Đang cập nhật');
INSERT INTO `product` VALUES ('7', '7', 'Nón', 'non.jpg', '520000', 'Goku', 'Đang cập nhật');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `username` varchar(255) collate utf8_unicode_ci NOT NULL,
  `password` varchar(255) collate utf8_unicode_ci NOT NULL,
  `ngaysinh` date default NULL,
  `gioitinh` varchar(10) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `sdt` varchar(20) collate utf8_unicode_ci default NULL,
  `diachi` varchar(255) collate utf8_unicode_ci default NULL,
  `role` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('13', 'test', 'test', '2015-05-04', 'Nam', 'manhduydl@gmail.com', '0962491151', 'hochiminh', '2');
INSERT INTO `user` VALUES ('14', 'user2', '123', '2015-05-11', 'Nam', 'manhduydl@gmail.com', '0983435628', 'uhiiu', '2');
