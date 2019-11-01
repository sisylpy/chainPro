/*
 Navicat Premium Data Transfer

 Source Server         : mac
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : chain_order

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 01/11/2019 21:27:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ck_applys
-- ----------------------------
DROP TABLE IF EXISTS `ck_applys`;
CREATE TABLE `ck_applys` (
  `apply_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '申请id',
  `apply_goods_id` int(20) NOT NULL COMMENT '申请商品id',
  `apply_number` float(10,2) NOT NULL COMMENT '申请数量',
  `apply_standardName` varchar(6) CHARACTER SET utf16 COLLATE utf16_czech_ci NOT NULL COMMENT '申请规格',
  `apply_store_id` int(20) NOT NULL COMMENT '申请分店id',
  `out_dep_id` int(20) NOT NULL COMMENT '出货部门id',
  `apply_time` varchar(20) CHARACTER SET utf16 COLLATE utf16_czech_ci NOT NULL COMMENT '申请时间',
  `delivery_date` varchar(30) CHARACTER SET utf16 COLLATE utf16_czech_ci NOT NULL COMMENT '送达日期',
  `apply_remark` varchar(100) CHARACTER SET utf16 COLLATE utf16_czech_ci DEFAULT NULL COMMENT '备注',
  `apply_status` tinyint(2) DEFAULT NULL COMMENT '订货申请状态',
  `apply_line_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- ----------------------------
-- Records of ck_applys
-- ----------------------------
BEGIN;
INSERT INTO `ck_applys` VALUES (19, 2, 1.00, '斤', 1, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (20, 2, 2.00, '斤', 2, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (21, 2, 13.00, '斤', 3, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (22, 2, 14.00, '斤', 4, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (23, 2, 5.00, '斤', 5, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 2);
INSERT INTO `ck_applys` VALUES (24, 2, 1.00, '斤', 6, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (25, 2, 1.00, '斤', 7, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
INSERT INTO `ck_applys` VALUES (26, 2, 1.00, '斤', 8, 1, '十月 25, 2019', '十月 25, 2019', NULL, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for ck_goods
-- ----------------------------
DROP TABLE IF EXISTS `ck_goods`;
CREATE TABLE `ck_goods` (
  `goods_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '商品名称',
  `father_id` int(20) DEFAULT NULL COMMENT '父级id',
  `standard_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '规格',
  `apply_standard_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '申请规格',
  `type` tinyint(2) DEFAULT NULL COMMENT '"1"正常销售，“2”库存报警，“3”断货',
  `is_weight` tinyint(2) DEFAULT NULL COMMENT '是否称重',
  `status` tinyint(2) DEFAULT NULL COMMENT '商品状态',
  `out_dep_id` int(20) DEFAULT NULL COMMENT '出货部门id',
  `alarm_weight` int(10) DEFAULT NULL COMMENT '库存报警重量',
  `quality_period` int(10) DEFAULT NULL COMMENT '保质期天数',
  `price` float(6,2) DEFAULT NULL COMMENT '零售价',
  `price_standard` varchar(6) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '零售价单位',
  `g_sort` int(10) DEFAULT NULL COMMENT '商品排序',
  `pinyin` varchar(30) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '拼音',
  `head_pinyin` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '首字母拼音',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_goods
-- ----------------------------
BEGIN;
INSERT INTO `ck_goods` VALUES (1, '猪肉', 0, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ck_goods` VALUES (2, 'pork1', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ck_goods` VALUES (3, 'pork2', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `ck_goods` VALUES (4, 'pork3', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO `ck_goods` VALUES (5, 'pork4', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO `ck_goods` VALUES (6, 'pork5', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO `ck_goods` VALUES (7, 'pork6', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO `ck_goods` VALUES (8, 'pork7', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO `ck_goods` VALUES (9, 'pork9', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO `ck_goods` VALUES (10, 'pork10', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO `ck_goods` VALUES (11, 'pork11', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO `ck_goods` VALUES (12, 'pork12', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO `ck_goods` VALUES (13, 'pork13', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO `ck_goods` VALUES (14, 'pork14', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO `ck_goods` VALUES (15, 'pork15', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO `ck_goods` VALUES (16, 'pork16', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO `ck_goods` VALUES (17, 'pork17', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO `ck_goods` VALUES (18, 'pork18', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO `ck_goods` VALUES (19, 'pork19', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO `ck_goods` VALUES (20, 'pork20', 1, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO `ck_goods` VALUES (21, '肠', 0, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `ck_goods` VALUES (22, 'chang1', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ck_goods` VALUES (23, 'chang2', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `ck_goods` VALUES (24, 'chang3', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO `ck_goods` VALUES (25, 'chang4', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO `ck_goods` VALUES (26, 'chang5', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO `ck_goods` VALUES (27, 'chang6', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO `ck_goods` VALUES (28, 'chang7', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO `ck_goods` VALUES (29, 'chang8', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO `ck_goods` VALUES (30, 'chang9', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO `ck_goods` VALUES (31, 'chang10', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO `ck_goods` VALUES (32, 'chang11', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO `ck_goods` VALUES (33, 'chang12', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO `ck_goods` VALUES (34, 'chang13', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO `ck_goods` VALUES (35, 'chang14', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO `ck_goods` VALUES (36, 'chang15', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO `ck_goods` VALUES (37, 'chang16', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO `ck_goods` VALUES (38, 'chang17', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO `ck_goods` VALUES (39, 'chang18', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO `ck_goods` VALUES (40, 'chang19', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO `ck_goods` VALUES (41, 'chang20', 21, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, NULL, NULL);
INSERT INTO `ck_goods` VALUES (42, '蔬菜', 0, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO `ck_goods` VALUES (43, 'vegetable1', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ck_goods` VALUES (44, 'vegetable2', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `ck_goods` VALUES (45, 'vegetable3', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO `ck_goods` VALUES (46, 'vegetable4', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO `ck_goods` VALUES (47, 'vegetable5', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO `ck_goods` VALUES (48, 'vegetable6', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO `ck_goods` VALUES (49, 'vegetable7', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO `ck_goods` VALUES (50, 'vegetable8', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO `ck_goods` VALUES (51, 'vegetable9', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO `ck_goods` VALUES (52, 'vegetable10', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO `ck_goods` VALUES (53, 'vegetable11', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO `ck_goods` VALUES (54, 'vegetable12', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO `ck_goods` VALUES (55, 'vegetable13', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO `ck_goods` VALUES (56, 'vegetable14', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO `ck_goods` VALUES (57, 'vegetable15', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO `ck_goods` VALUES (58, 'vegetable16', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO `ck_goods` VALUES (59, 'vegetable17', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO `ck_goods` VALUES (60, 'vegetable18', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO `ck_goods` VALUES (61, 'vegetable19', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO `ck_goods` VALUES (62, 'vegetable20', 42, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, NULL, NULL);
INSERT INTO `ck_goods` VALUES (63, 'liangcai1', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL);
INSERT INTO `ck_goods` VALUES (64, 'liangcai2', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, NULL, NULL);
INSERT INTO `ck_goods` VALUES (65, 'liangcai3', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, NULL, NULL);
INSERT INTO `ck_goods` VALUES (66, 'liangcai4', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, NULL, NULL);
INSERT INTO `ck_goods` VALUES (67, 'liangcai5', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, NULL, NULL);
INSERT INTO `ck_goods` VALUES (68, 'liangcai6', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, NULL, NULL);
INSERT INTO `ck_goods` VALUES (69, 'liangcai7', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, NULL, NULL);
INSERT INTO `ck_goods` VALUES (70, 'liangcai8', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, NULL, NULL);
INSERT INTO `ck_goods` VALUES (71, 'liangcai9', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, NULL, NULL);
INSERT INTO `ck_goods` VALUES (72, 'liangcai10', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, NULL, NULL);
INSERT INTO `ck_goods` VALUES (73, 'liangcai11', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, NULL, NULL);
INSERT INTO `ck_goods` VALUES (74, 'liangcai12', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, NULL, NULL);
INSERT INTO `ck_goods` VALUES (75, 'liangcai13', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, NULL, NULL);
INSERT INTO `ck_goods` VALUES (76, 'liangcai14', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, NULL, NULL);
INSERT INTO `ck_goods` VALUES (77, 'liangcai15', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, NULL, NULL);
INSERT INTO `ck_goods` VALUES (78, 'liangcai16', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, NULL, NULL);
INSERT INTO `ck_goods` VALUES (79, 'liangcai17', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, NULL, NULL);
INSERT INTO `ck_goods` VALUES (80, 'liangcai18', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, NULL, NULL);
INSERT INTO `ck_goods` VALUES (81, 'liangcai19', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, NULL, NULL);
INSERT INTO `ck_goods` VALUES (82, 'liangcai20', 63, NULL, '斤', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, 'jpppp3', 'jp3');
INSERT INTO `ck_goods` VALUES (83, '类别1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'jjjjjp2', 'jp2');
INSERT INTO `ck_goods` VALUES (84, '精品红场', 21, '斤', '斤', NULL, 1, NULL, NULL, NULL, NULL, 40.00, NULL, NULL, 'jingpinhongchang', 'jphc');
COMMIT;

-- ----------------------------
-- Table structure for ck_in_bill
-- ----------------------------
DROP TABLE IF EXISTS `ck_in_bill`;
CREATE TABLE `ck_in_bill` (
  `in_bill_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '入库单据id',
  `in_supplier_id` int(10) DEFAULT NULL COMMENT '入库供货商id',
  `in_datetime` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '入库时间',
  `in_dep_id` int(20) DEFAULT NULL COMMENT '入库部门id',
  `in_user_id` int(20) DEFAULT NULL COMMENT '入库操作员id',
  `is_pay` tinyint(2) DEFAULT NULL COMMENT '是否支付',
  `pay_mode` tinyint(2) DEFAULT NULL COMMENT '支付方式：“1:现金”，“2, 记账”“3，微信”',
  PRIMARY KEY (`in_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_in_bill
-- ----------------------------
BEGIN;
INSERT INTO `ck_in_bill` VALUES (1, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (2, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (3, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (4, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (5, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (6, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (7, 1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (8, 1, NULL, 1, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_in_sub_bill
-- ----------------------------
DROP TABLE IF EXISTS `ck_in_sub_bill`;
CREATE TABLE `ck_in_sub_bill` (
  `in_sub_bill_id` int(20) NOT NULL AUTO_INCREMENT,
  `main_bill_id` int(20) DEFAULT NULL,
  `s_goods_id` int(20) DEFAULT NULL,
  `in_quantity` float(10,2) DEFAULT NULL,
  `stock_quantity` float(10,2) DEFAULT NULL,
  `unit_price` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`in_sub_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_in_sub_bill
-- ----------------------------
BEGIN;
INSERT INTO `ck_in_sub_bill` VALUES (1, NULL, 84, 1111.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (2, NULL, 82, 2222.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (3, NULL, 84, 1111.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (4, NULL, 84, 1111.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (5, NULL, 82, 2222.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (6, NULL, 84, 1111.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (7, NULL, 82, 2222.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (8, NULL, 84, 1111.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (9, NULL, 82, 2222.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (10, 8, 82, 2.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (11, 8, 84, 4.00, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_line
-- ----------------------------
DROP TABLE IF EXISTS `ck_line`;
CREATE TABLE `ck_line` (
  `line_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '线路id',
  `line_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '线路名称',
  `origin_point` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '始发地',
  PRIMARY KEY (`line_id`),
  KEY `line_id` (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_line
-- ----------------------------
BEGIN;
INSERT INTO `ck_line` VALUES (1, '测试线路1', NULL);
INSERT INTO `ck_line` VALUES (2, '测试线路2', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_line_store
-- ----------------------------
DROP TABLE IF EXISTS `ck_line_store`;
CREATE TABLE `ck_line_store` (
  `line_store_id` int(20) NOT NULL AUTO_INCREMENT,
  `re_line_id` int(20) NOT NULL,
  `re_store_id` int(20) NOT NULL,
  `sort` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`line_store_id`,`re_line_id`,`re_store_id`) USING BTREE,
  KEY `line_rel` (`re_line_id`),
  KEY `store_rel` (`re_store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_line_store
-- ----------------------------
BEGIN;
INSERT INTO `ck_line_store` VALUES (1, 1, 4, 1);
INSERT INTO `ck_line_store` VALUES (2, 1, 3, 1);
INSERT INTO `ck_line_store` VALUES (3, 1, 5, 1);
INSERT INTO `ck_line_store` VALUES (4, 1, 6, 1);
INSERT INTO `ck_line_store` VALUES (5, 1, 8, 1);
INSERT INTO `ck_line_store` VALUES (6, 1, 9, 1);
INSERT INTO `ck_line_store` VALUES (7, 1, 12, 1);
INSERT INTO `ck_line_store` VALUES (8, 1, 13, 1);
INSERT INTO `ck_line_store` VALUES (9, 2, 2, 1);
INSERT INTO `ck_line_store` VALUES (10, 2, 1, 1);
INSERT INTO `ck_line_store` VALUES (11, 2, 7, 1);
INSERT INTO `ck_line_store` VALUES (12, 2, 10, 1);
INSERT INTO `ck_line_store` VALUES (13, 2, 17, 1);
COMMIT;

-- ----------------------------
-- Table structure for ck_pick
-- ----------------------------
DROP TABLE IF EXISTS `ck_pick`;
CREATE TABLE `ck_pick` (
  `pick_id` int(20) NOT NULL AUTO_INCREMENT,
  `p_apply_id` int(20) DEFAULT NULL,
  `pick_number` float(10,2) DEFAULT NULL,
  `p_user_id` int(20) DEFAULT NULL,
  `pick_time` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL,
  `pick_status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`pick_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_pick
-- ----------------------------
BEGIN;
INSERT INTO `ck_pick` VALUES (1, 15, 987.00, 1, '455', 1);
COMMIT;

-- ----------------------------
-- Table structure for ck_store
-- ----------------------------
DROP TABLE IF EXISTS `ck_store`;
CREATE TABLE `ck_store` (
  `store_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '店铺Id',
  `store_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(200) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '手机号码',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '横坐标',
  `lun` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '纵坐标',
  `district` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '区域',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '城市',
  `wx_nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `wx_openId` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信id',
  `wx_avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信头像',
  `wx_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `print_label` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '打印名称',
  `out_label` varchar(30) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '对外名称',
  `join_line` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci COMMENT='零售终端';

-- ----------------------------
-- Records of ck_store
-- ----------------------------
BEGIN;
INSERT INTO `ck_store` VALUES (1, '美林湾华联', '阿看看短发凉快', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eyeseejoy', '美林', '燕郊3店', 1);
INSERT INTO `ck_store` VALUES (2, '鲜汇', '啊啊啊啊啊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '鲜汇', '燕郊2店', 1);
INSERT INTO `ck_store` VALUES (3, '天丰利', '阿凡达说法是否打算发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '天', '北京1店', 1);
INSERT INTO `ck_store` VALUES (4, '金鱼池熟食', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '金鱼池', '北京2店', 1);
INSERT INTO `ck_store` VALUES (5, '店铺1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4店', '北京4店', 1);
INSERT INTO `ck_store` VALUES (6, '店铺2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5店', '北京5店', 1);
INSERT INTO `ck_store` VALUES (7, '店铺3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6店', '北京6店', 1);
INSERT INTO `ck_store` VALUES (8, '店铺4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7店', '北京7店', 1);
INSERT INTO `ck_store` VALUES (9, '店铺5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8店', '北京8店', 1);
INSERT INTO `ck_store` VALUES (10, '店铺6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `ck_store` VALUES (11, '店铺7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `ck_store` VALUES (12, '店铺8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `ck_store` VALUES (13, '店铺9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `ck_store` VALUES (15, '店铺10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `ck_store` VALUES (16, '店铺11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `ck_store` VALUES (17, '店铺12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `ck_store` VALUES (18, '店铺13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `ck_store` VALUES (19, '店铺14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `ck_store` VALUES (20, '店铺15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for ck_store_dep
-- ----------------------------
DROP TABLE IF EXISTS `ck_store_dep`;
CREATE TABLE `ck_store_dep` (
  `dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `dep_type` tinyint(2) DEFAULT NULL,
  `dep_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_store_dep
-- ----------------------------
BEGIN;
INSERT INTO `ck_store_dep` VALUES (1, 1, '库房');
INSERT INTO `ck_store_dep` VALUES (2, 1, 'aaa');
INSERT INTO `ck_store_dep` VALUES (3, 1, 'bbb');
COMMIT;

-- ----------------------------
-- Table structure for ck_supplier
-- ----------------------------
DROP TABLE IF EXISTS `ck_supplier`;
CREATE TABLE `ck_supplier` (
  `supplier_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '供货商id',
  `supplier_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL COMMENT '供货商名称',
  `sales_person` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '业务员',
  `sales_phone` varchar(18) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '业务电话',
  `has_app` tinyint(2) DEFAULT NULL COMMENT '是否有app',
  `pay_methods` tinyint(2) unsigned zerofill DEFAULT '00' COMMENT '付款方式',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_supplier
-- ----------------------------
BEGIN;
INSERT INTO `ck_supplier` VALUES (1, '大红门批发部', '李文', '13910825707', 1, 02);
COMMIT;

-- ----------------------------
-- Table structure for ck_user
-- ----------------------------
DROP TABLE IF EXISTS `ck_user`;
CREATE TABLE `ck_user` (
  `ck_user_id` int(20) NOT NULL AUTO_INCREMENT,
  `ck_user_name` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL,
  `ck_password` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL,
  `user_dep_id` int(11) DEFAULT NULL,
  `user_status` tinyint(2) DEFAULT NULL,
  `u_create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`ck_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_user
-- ----------------------------
BEGIN;
INSERT INTO `ck_user` VALUES (1, '姚洪涛', '1', 1, 1, NULL);
INSERT INTO `ck_user` VALUES (12, 'aaa', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (13, 'bb', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (14, 'bbcc', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (15, 'd', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (16, 'b', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (17, 'eertt', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (18, 'lipeiyi', NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ck_user_role`;
CREATE TABLE `ck_user_role` (
  `user_role_id` int(20) NOT NULL AUTO_INCREMENT,
  `role_user_id` int(20) DEFAULT NULL COMMENT '用户ID',
  `sys_role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of ck_user_role
-- ----------------------------
BEGIN;
INSERT INTO `ck_user_role` VALUES (1, 1, 3);
INSERT INTO `ck_user_role` VALUES (2, 1, 1);
INSERT INTO `ck_user_role` VALUES (7, 15, 1);
INSERT INTO `ck_user_role` VALUES (8, 17, 1);
INSERT INTO `ck_user_role` VALUES (9, 17, 1);
INSERT INTO `ck_user_role` VALUES (10, 17, 2);
INSERT INTO `ck_user_role` VALUES (11, 17, 1);
INSERT INTO `ck_user_role` VALUES (12, 17, 2);
INSERT INTO `ck_user_role` VALUES (13, 17, 3);
INSERT INTO `ck_user_role` VALUES (14, 18, 1);
INSERT INTO `ck_user_role` VALUES (15, 18, 1);
INSERT INTO `ck_user_role` VALUES (16, 18, 2);
INSERT INTO `ck_user_role` VALUES (17, 18, 1);
INSERT INTO `ck_user_role` VALUES (18, 18, 2);
INSERT INTO `ck_user_role` VALUES (19, 18, 3);
INSERT INTO `ck_user_role` VALUES (20, 18, 1);
INSERT INTO `ck_user_role` VALUES (21, 18, 2);
INSERT INTO `ck_user_role` VALUES (22, 18, 3);
INSERT INTO `ck_user_role` VALUES (23, 18, 4);
INSERT INTO `ck_user_role` VALUES (24, 18, 1);
INSERT INTO `ck_user_role` VALUES (25, 18, 2);
INSERT INTO `ck_user_role` VALUES (26, 18, 3);
INSERT INTO `ck_user_role` VALUES (27, 18, 4);
INSERT INTO `ck_user_role` VALUES (28, 18, 5);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '系统管理', NULL, NULL, 0, 'fa fa-cog', 9);
INSERT INTO `sys_menu` VALUES (2, 1, '员工列表', 'sys/user.html', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'sys/role.html', NULL, 1, 'fa fa-user-secret', 2);
INSERT INTO `sys_menu` VALUES (4, 1, '菜单管理', 'sys/menu.html', 'sys:menu:list', 1, 'fa fa-th-list', 3);
INSERT INTO `sys_menu` VALUES (5, 1, 'SQL监控', 'druid/sql.html', NULL, 1, 'fa fa-bug', 4);
INSERT INTO `sys_menu` VALUES (6, 1, '定时任务', 'sys/schedule.html', NULL, 1, 'fa fa-tasks', 5);
INSERT INTO `sys_menu` VALUES (7, 6, '查看', NULL, 'sys:schedule:list,sys:schedule:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (8, 6, '新增', NULL, 'sys:schedule:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (9, 6, '修改', NULL, 'sys:schedule:update', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (10, 6, '删除', NULL, 'sys:schedule:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (11, 6, '暂停', NULL, 'sys:schedule:pause', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (12, 6, '恢复', NULL, 'sys:schedule:resume', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (13, 6, '立即执行', NULL, 'sys:schedule:run', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (14, 6, '日志列表', NULL, 'sys:schedule:log', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'sys:user:list,sys:user:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'sys:user:save,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'sys:user:update,sys:role:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'sys:user:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'sys:role:list,sys:role:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (20, 3, '新增', NULL, 'sys:role:save,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (21, 3, '修改', NULL, 'sys:role:update,sys:menu:perms', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (22, 3, '删除', NULL, 'sys:role:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (23, 4, '查看', NULL, 'sys:menu:list,sys:menu:info', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (24, 4, '新增', NULL, 'sys:menu:save,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (25, 4, '修改', NULL, 'sys:menu:update,sys:menu:select', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (26, 4, '删除', NULL, 'sys:menu:delete', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (27, 1, '参数管理', 'sys/config.html', 'sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete', 1, 'fa fa-sun-o', 6);
INSERT INTO `sys_menu` VALUES (28, 1, '代码生成器', 'sys/generator.html', 'sys:generator:list,sys:generator:code', 1, 'fa fa-rocket', 7);
INSERT INTO `sys_menu` VALUES (29, 0, '出货', NULL, NULL, 0, 'fa fa-cog', 3);
INSERT INTO `sys_menu` VALUES (30, 29, '订货申请', 'orderApplication', 'ckapplys:list, ckapplys:info, ckapplys:save, ckapplys:update, ckapplys:delete', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (31, 29, '核算出货成本', 'so_supplyProducts', 'ckapplys:list, ckapplys:info, ckapplys:save, ckapplys:update, ckapplys:delete', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (32, 29, '送货', 'so_deliver', NULL, 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (38, 37, '店铺销售', '/point', NULL, 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (39, 37, '产品销售', '/sellProducts', NULL, 1, NULL, 30);
INSERT INTO `sys_menu` VALUES (40, 0, '系统数据', NULL, NULL, 0, 'fa fa-cog', 7);
INSERT INTO `sys_menu` VALUES (41, 40, '员工', 'ckUser', 'ckuser:list, ckuser:info, ckuser:save, ckuser:update, ckuser:delete', 1, NULL, 7);
INSERT INTO `sys_menu` VALUES (42, 40, '硬件设备', '/printer', NULL, 1, NULL, 8);
INSERT INTO `sys_menu` VALUES (51, 37, '集团销售', '/groupSales', NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (52, 0, '店铺', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (53, 0, '供货商', NULL, NULL, 0, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (56, 52, '经营数据', 'businessData', NULL, 1, 'fa fa-user', 0);
INSERT INTO `sys_menu` VALUES (57, 52, '管理库存', 'store?store_id=', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (62, 53, '供货商列表', 'cksupplier/cksupplier.html', 'cksupplier:list, cksupplier:info, cksupplier:save, cksupplier:update, cksupplier:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (63, 40, '店铺', 'storeList', 'ckstore:list, ckstore:info, ckstore:save, ckstore:update, ckstore:delete', 1, 'fa fa-cog', 3);
INSERT INTO `sys_menu` VALUES (64, 40, '送货路线', 'ckLine', 'ckline:list, ckline:info, ckline:save, ckline:update, ckline:delete', 1, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (65, 40, '产品', 'products', 'ckgoods:list, ckgoods:info, ckgoods:save, ckgoods:update, ckgoods:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (66, 40, '出货部门', 'outDep', 'ckstoredep:list, ckstoredep:info, ckstoredep:save, ckstoredep:update, ckstoredep:delete', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (67, 65, 'btn1', NULL, 'ckgoods:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (69, 0, '进货', NULL, '', 0, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (71, 69, '进货单据', 'inBill', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa', 2);
INSERT INTO `sys_menu` VALUES (72, 69, '采购分析', '/purchase/anlysise', NULL, 1, 'fa', 4);
INSERT INTO `sys_menu` VALUES (73, 52, '销售分析', 'store?store_id=', NULL, 1, 'fa fa-user', 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '司机', '', '2019-09-20 21:12:18');
INSERT INTO `sys_role` VALUES (2, '售货员', NULL, '2019-09-20 21:13:00');
INSERT INTO `sys_role` VALUES (3, '分拣员', NULL, '2019-09-20 21:13:58');
INSERT INTO `sys_role` VALUES (4, '文员', NULL, '2019-09-20 21:15:08');
INSERT INTO `sys_role` VALUES (5, '采购员', NULL, '2019-09-20 21:15:21');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1, 29);
INSERT INTO `sys_role_menu` VALUES (2, 1, 32);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '100@qq.com', '13888888888', 1, '2017-05-01 11:11:11');
INSERT INTO `sys_user` VALUES (2, 'sisy', '80e06f4bab2dc146c9ba40839d6ba012d12c4dd9e9be705ff0089faf144df77c', NULL, NULL, 1, '2019-09-22 01:48:43');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 2, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
