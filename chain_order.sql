/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 140.143.186.94:3306
 Source Schema         : chain_order

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 03/01/2020 21:06:14
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
  `apply_standardName` varchar(6) COLLATE utf16_czech_ci NOT NULL COMMENT '申请规格',
  `apply_store_id` int(20) NOT NULL COMMENT '申请分店id',
  `out_dep_id` int(20) NOT NULL COMMENT '出货部门id',
  `apply_time` varchar(20) COLLATE utf16_czech_ci NOT NULL COMMENT '申请时间',
  `delivery_date` varchar(30) COLLATE utf16_czech_ci NOT NULL COMMENT '送达日期',
  `apply_remark` varchar(100) COLLATE utf16_czech_ci DEFAULT NULL COMMENT '备注',
  `apply_status` tinyint(2) DEFAULT NULL COMMENT '订货申请状态"0，新申请；1，打印出库单；2，出货完成；3，打印送货单，4，收货"',
  `apply_line_id` int(20) DEFAULT NULL COMMENT '线路id',
  `page_number` int(4) DEFAULT NULL COMMENT '打印页码',
  `apply_goods_father_id` int(20) DEFAULT NULL COMMENT '商品类别id',
  `order_number` int(4) DEFAULT NULL COMMENT '订货次数',
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- ----------------------------
-- Records of ck_applys
-- ----------------------------
BEGIN;
INSERT INTO `ck_applys` VALUES (1, 280, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (2, 290, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (3, 268, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (4, 292, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (5, 269, 3.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (6, 286, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (7, 283, 2.00, '斤', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (8, 137, 2.00, '袋', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 6, NULL);
INSERT INTO `ck_applys` VALUES (9, 138, 2.00, '袋', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 6, NULL);
INSERT INTO `ck_applys` VALUES (10, 166, 1.00, '份', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (11, 309, 1.00, '桶', 20, 3, '2020-01-03 08:49', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (12, 28, 5.00, '斤', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (13, 23, 20.00, '斤', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (14, 235, 4.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (15, 90, 10.00, '根', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (16, 26, 5.00, '斤', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (17, 221, 1.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (18, 39, 3.00, '斤', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (19, 92, 3.00, '根', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (20, 52, 2.00, '只', 20, 1, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (21, 253, 30.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (22, 223, 10.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (23, 234, 5.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (24, 247, 10.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (25, 249, 8.00, '盒', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (26, 248, 5.00, '盒', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (27, 250, 8.00, '盒', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (28, 225, 1.00, '包', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (29, 240, 10.00, '袋', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (30, 183, 1.00, '箱', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (31, 171, 1.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (32, 193, 1.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (33, 170, 1.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (34, 241, 1.00, '斤', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (35, 155, 1.00, '箱', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (36, 239, 1.00, '盒', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (37, 254, 1.00, '盒', 20, 2, '2020-01-03 08:49', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (38, 11, 30.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (39, 23, 60.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (40, 55, 10.00, '只', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (41, 54, 10.00, '只', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (42, 52, 6.00, '只', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (43, 32, 2.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (44, 91, 1.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (45, 103, 15.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (46, 36, 1.00, '盘', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (47, 120, 1.00, '袋', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 5, NULL);
INSERT INTO `ck_applys` VALUES (48, 121, 1.00, '袋', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 5, NULL);
INSERT INTO `ck_applys` VALUES (49, 38, 4.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (50, 90, 10.00, '根', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (51, 98, 10.00, '根', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (52, 65, 3.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (53, 29, 1.00, '包', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (54, 16, 1.00, '斤', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (55, 68, 3.00, '只', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (56, 56, 1.00, '只', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (57, 283, 6.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (58, 277, 3.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (59, 288, 4.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (60, 297, 4.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (61, 298, 2.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (62, 299, 5.00, '斤', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (63, 143, 10.00, '袋', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 2, NULL, NULL, 6, NULL);
INSERT INTO `ck_applys` VALUES (64, 310, 1.00, '桶', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (65, 309, 2.00, '桶', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (66, 304, 2.00, '份', 17, 3, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 9, NULL);
INSERT INTO `ck_applys` VALUES (67, 327, 1.00, '瓶', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 10, NULL);
INSERT INTO `ck_applys` VALUES (68, 335, 2.00, '包', 17, 1, '2020-01-03 08:53', '2020-01-04', NULL, 0, NULL, NULL, 10, NULL);
INSERT INTO `ck_applys` VALUES (69, 235, 15.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (70, 247, 5.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (71, 221, 2.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (72, 223, 2.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (73, 161, 1.00, '箱', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (74, 175, 2.00, '箱', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (75, 180, 1.00, '箱', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (76, 192, 1.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (77, 206, 1.00, '箱', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (78, 238, 20.00, '斤', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (79, 230, 40.00, '袋', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (80, 156, 1.00, '箱', 28, 2, '2020-01-03 10:13', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (81, 253, 50.00, '斤', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (82, 223, 15.00, '斤', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (83, 220, 1.00, '斤', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (84, 234, 5.00, '斤', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (85, 238, 10.00, '斤', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (86, 232, 10.00, '盒', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
INSERT INTO `ck_applys` VALUES (87, 183, 1.00, '箱', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (88, 159, 1.00, '箱', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (89, 175, 10.00, '箱', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 7, NULL);
INSERT INTO `ck_applys` VALUES (90, 251, 1.00, '袋', 25, 2, '2020-01-03 10:15', '2020-01-04', NULL, 2, NULL, NULL, 8, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_dep
-- ----------------------------
DROP TABLE IF EXISTS `ck_dep`;
CREATE TABLE `ck_dep` (
  `dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `dep_type` tinyint(2) DEFAULT NULL,
  `dep_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_dep
-- ----------------------------
BEGIN;
INSERT INTO `ck_dep` VALUES (1, 1, '冷库');
INSERT INTO `ck_dep` VALUES (2, 1, '咸菜豆制品');
INSERT INTO `ck_dep` VALUES (3, 1, '凉菜');
COMMIT;

-- ----------------------------
-- Table structure for ck_goods
-- ----------------------------
DROP TABLE IF EXISTS `ck_goods`;
CREATE TABLE `ck_goods` (
  `goods_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `type` tinyint(2) DEFAULT NULL COMMENT '"1"产品（店铺显示），“2”原料（店铺不显示）',
  `goods_name` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '商品名称',
  `father_id` int(20) DEFAULT NULL COMMENT '父级id',
  `pur_standard_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '采购规格',
  `apply_standard_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '申请规格',
  `sell_standard_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '销售规格',
  `is_weight` tinyint(2) DEFAULT NULL COMMENT '是否称重',
  `status` tinyint(2) DEFAULT NULL COMMENT '商品状态',
  `out_dep_id` int(20) DEFAULT NULL COMMENT '出货部门id',
  `pur_dep_id` int(20) DEFAULT NULL COMMENT '采购部门',
  `alarm_weight` float(10,1) DEFAULT NULL COMMENT '库存报警重量',
  `quality_period` int(10) DEFAULT NULL COMMENT '保质期天数',
  `price` float(10,1) DEFAULT NULL COMMENT '零售价',
  `g_sort` int(10) DEFAULT NULL COMMENT '商品排序',
  `pinyin` varchar(40) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '拼音',
  `head_pinyin` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '首字母拼音',
  `stock_pur_standard` float(10,1) DEFAULT '0.0' COMMENT '库存采购规格数量',
  `stock_apply_standard` float(10,1) DEFAULT '0.0' COMMENT '库存申请规格数量',
  `stock_sell_standard` float(10,1) DEFAULT '0.0' COMMENT '库存销售规格数量',
  `plan_purchase` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '计划采购数量',
  `today_quantity` float(10,0) DEFAULT NULL COMMENT '订货数量',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=345 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_goods
-- ----------------------------
BEGIN;
INSERT INTO `ck_goods` VALUES (1, 0, '牛肉羊', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (2, 0, '猪肉类', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (3, 0, '禽蛋类', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (4, 0, '肠类', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (5, 0, '鱼', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (6, 0, '下酒零食', 0, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (7, 0, '咸菜', 0, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (8, 0, '豆制品', 0, NULL, NULL, NULL, NULL, NULL, 2, 2, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (9, 0, '凉菜', 0, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (10, 0, '其它类', 0, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0.0, NULL, 32.8, NULL, NULL, NULL, 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (11, 0, '精品牛肉', 1, '斤', '斤', '斤', 1, 1, 1, 1, 490.0, 90, 49.8, 1, 'jingpinniurou', 'jpnr', 461.2, 0.0, 0.0, '0', -3);
INSERT INTO `ck_goods` VALUES (12, 0, '牛腱子', 1, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 19.8, 2, 'niujianzi', 'njz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (13, 0, '牛肚', 1, '斤', '包', '斤', 1, 1, 1, 1, 0.0, 0, 23.8, 3, 'niudu', 'nd', -5.5, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (14, 0, '牛筋', 1, '斤', '包', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 4, 'niujin', 'nj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (15, 0, '牛肝', 1, '斤', '包', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 5, 'niugan', 'ng', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (16, 0, '羊杂', 1, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 6, 'yangza', 'yz', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (17, 0, '牛羊1', 1, '斤', '袋', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 7, 'niuyang1', 'ny1', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (18, 0, '牛羊2', 1, '斤', '袋', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 8, 'niuyang2', 'ny2', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (19, 0, '牛羊3', 1, '斤', '袋', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 9, 'niuyang3', 'ny3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (20, 0, '牛羊4', 1, '斤', '袋', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 10, 'niuyang4', 'ny4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (21, 0, '牛羊5', 1, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'niuyang5', 'ny5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (22, 0, '猪头肉(袋)', 2, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 1, 'zhutourou(dai)', 'ztr(d)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (23, 0, '猪头肉(散)', 2, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 2, 'zhutourou(san)', 'ztr(s)', -89.0, 0.0, 0.0, '0', -9);
INSERT INTO `ck_goods` VALUES (24, 0, '猪蹄(袋)', 2, '斤', '袋', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 3, 'zhuti(dai)', 'zt(d)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (25, 0, '猪蹄(散)', 2, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 4, 'zhuti(san)', 'zt(s)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (26, 0, '猪耳朵', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 5, 'zhuerduo', 'zed', -55.0, 0.0, 0.0, '0', -50);
INSERT INTO `ck_goods` VALUES (27, 0, '酱肘子', 2, '斤', '斤', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 6, 'jiangzhouzi', 'jzz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (28, 0, '猪肝', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 7, 'zhugan', 'zg', -5.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (29, 0, '肚丝', 2, '斤', '包', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 8, 'dusi', 'ds', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (30, 0, '脆骨', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 9, 'cuigu', 'cg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (31, 0, '肥肠', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 10, 'feichang', 'fc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (32, 0, '猪皮', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'zhupi', 'zp', -5.0, 0.0, 0.0, '0', -3);
INSERT INTO `ck_goods` VALUES (33, 0, '四喜丸子', 2, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 12, 'sixiwanzi', 'sxwz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (34, 0, '松仁小肚', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 13, 'songrenxiaodu', 'srxd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (35, 0, '腊肉', 2, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 14, 'larou', 'lr', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (36, 0, '米粉肉', 2, '斤', '盘', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 15, 'mifenrou', 'mfr', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (37, 0, '松花鸡腿', 2, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 16, 'songhuajitui', 'shjt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (38, 0, '皮冻', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 17, 'pidong', 'pd', -5.0, 0.0, 0.0, '0', -1);
INSERT INTO `ck_goods` VALUES (39, 0, '口条', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 18, 'koutiao', 'kt', -5.0, 0.0, 0.0, '0', -2);
INSERT INTO `ck_goods` VALUES (40, 0, '牙签肉', 2, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 19, 'yaqianrou', 'yqr', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (41, 0, '五香肉肚', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 20, 'wuxiangroudu', 'wxrd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (42, 0, '猪肺', 2, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 21, 'zhufei', 'zf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (43, 0, '猪肉2', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 22, 'zhurou2', 'zr2', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (44, 0, '猪肉3', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 23, 'zhurou3', 'zr3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (45, 0, '猪肉4', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 24, 'zhurou4', 'zr4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (46, 0, '猪肉5', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 25, 'zhurou5', 'zr5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (47, 0, '猪肉6', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 26, 'zhurou6', 'zr6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (48, 0, '猪肉7', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 27, 'zhurou7', 'zr7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (49, 0, '猪肉8', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 28, 'zhurou8', 'zr8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (50, 0, '猪肉9', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 29, 'zhurou9', 'zr9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (51, 0, '猪肉10', 2, '斤', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 30, 'zhurou10', 'zr10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (52, 0, '柴鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 1, 'chaiji', 'cj', -10.0, 0.0, 0.0, '0', -2);
INSERT INTO `ck_goods` VALUES (53, 0, '扒鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 2, 'baji', 'bj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (54, 0, '童子鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 3, 'tongziji', 'tzj', -5.0, 0.0, 0.0, '0', 5);
INSERT INTO `ck_goods` VALUES (55, 0, '荷叶鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 4, 'heyeji', 'hyj', -5.0, 0.0, 0.0, '0', 5);
INSERT INTO `ck_goods` VALUES (56, 0, '五香鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 5, 'wuxiangji', 'wxj', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (57, 0, '德州扒鸡', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 6, 'dezhoubaji', 'dzbj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (58, 0, '麻油鸡', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 7, 'mayouji', 'myj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (59, 0, '小鸡腿', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 8, 'xiaojitui', 'xjt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (60, 0, '酸辣鸡爪', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 9, 'suanlajizhua', 'sljz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (61, 0, '虎皮鸡爪', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 10, 'hupijizhua', 'hpjz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (62, 0, '麻辣鸡爪', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'malajizhua', 'mljz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (63, 0, '五香凤爪', 3, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 12, 'wuxiangfengzhua', 'wxfz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (64, 0, '鸡肚', 3, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 13, 'jidu', 'jd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (65, 0, '鹌鹑蛋', 3, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 14, 'anchundan', 'acd', -5.0, 0.0, 0.0, '0', -2);
INSERT INTO `ck_goods` VALUES (66, 0, '北京烤鸭', 3, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 15, 'beijingkaoya', 'bjky', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (67, 0, '酱鸭', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 16, 'jiangya', 'jy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (68, 0, '茶鸭', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 17, 'chaya', 'cy', -5.0, 0.0, 0.0, '0', -2);
INSERT INTO `ck_goods` VALUES (69, 0, '盐水鸭', 3, '斤', '只', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 18, 'yanshuiya', 'ysy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (70, 0, '半片盐水鸭', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 19, 'banpianyanshuiya', 'bpysy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (71, 0, '鸭胸', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 20, 'yaxiong', 'yx', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (72, 0, '鸭脖', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 21, 'yabo', 'yb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (73, 0, '火鸡腿', 3, '个', '个', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 22, 'huojitui', 'hjt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (74, 0, '鸡鸭2', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 23, 'jiya2', 'jy2', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (75, 0, '鸡鸭3', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 24, 'jiya3', 'jy3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (76, 0, '鸡鸭4', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 25, 'jiya4', 'jy4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (77, 0, '鸡鸭5', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 26, 'jiya5', 'jy5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (78, 0, '鸡鸭6', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 27, 'jiya6', 'jy6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (79, 0, '鸡鸭7', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 28, 'jiya7', 'jy7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (80, 0, '鸡鸭8', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 29, 'jiya8', 'jy8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (81, 0, '鸡鸭9', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 30, 'jiya9', 'jy9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (82, 0, '鸡鸭10', 3, '斤', '片', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 31, 'jiya10', 'jy10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (83, 0, '精品红肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 1, 'jingpinhongchang', 'jphc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (84, 0, '哈尔滨红肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 2, 'haerbinhongchang', 'hebhc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (85, 0, '广式腊肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 3, 'guangshilachang', 'gslc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (86, 0, '青岛灌肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 4, 'qingdaoguanchang', 'qdgc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (87, 0, '美式火腿', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 5, 'meishihuotui', 'msht', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (88, 0, '四根蒜肠', 4, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 6, 'sigensuanchang', 'sgsc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (89, 0, '京味蒜肠', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 7, 'jingweisuanchang', 'jwsc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (90, 0, '单根蒜肠', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 8, 'dangensuanchang', 'dgsc', -110.0, 0.0, 0.0, '0', -90);
INSERT INTO `ck_goods` VALUES (91, 0, '排骨肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 9, 'paiguchang', 'pgc', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (92, 0, '地方肠', 4, '斤', '根', '斤', 1, 1, 1, 1, 0.0, 0, 32.8, 10, 'difangchang', 'dfc', -5.0, 0.0, 0.0, '0', -2);
INSERT INTO `ck_goods` VALUES (93, 0, '蛋清肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'danqingchang', 'dqc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (94, 0, '儿童肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 12, 'ertongchang', 'etc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (95, 0, '风干肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 13, 'fengganchang', 'fgc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (96, 0, '丹麦肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 14, 'danmaichang', 'dmc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (97, 0, '手掰肠', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 15, 'shoubaichang', 'sbc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (98, 0, '单根排骨王', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 16, 'dangenpaiguwang', 'dgpgw', -5.0, 0.0, 0.0, '0', 5);
INSERT INTO `ck_goods` VALUES (99, 0, '茶肠', 4, '根', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 17, 'chachang', 'cc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (100, 0, '粉肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 18, 'fenchang', 'fc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (101, 0, '啤酒火腿', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 19, 'pijiuhuotui', 'pjht', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (102, 0, '盘肠', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 20, 'panchang', 'pc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (103, 0, '黑粉肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 21, 'heifenchang', 'hfc', -5.0, 0.0, 0.0, '0', 10);
INSERT INTO `ck_goods` VALUES (104, 0, '买一送一广式香肠', 4, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 22, 'maiyisongyiguangshixiangchang', 'mysygsxc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (105, 0, '青岛火腿', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 23, 'qingdaohuotui', 'qdht', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (106, 0, '麻辣肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 24, 'malachang', 'mlc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (107, 0, '腊肠', 4, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 25, 'lachang', 'lc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (108, 0, '小福贵', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 26, 'xiaofugui', 'xfg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (109, 0, '脆皮肠', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 27, 'cuipichang', 'cpc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (110, 0, '四根排骨王', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 28, 'sigenpaiguwang', 'sgpgw', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (111, 0, '肠2', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 29, 'chang2', 'c2', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (112, 0, '肠3', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 30, 'chang3', 'c3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (113, 0, '肠4', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 31, 'chang4', 'c4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (114, 0, '肠5', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 32, 'chang5', 'c5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (115, 0, '肠6', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 33, 'chang6', 'c6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (116, 0, '肠7', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 34, 'chang7', 'c7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (117, 0, '肠8', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 35, 'chang8', 'c8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (118, 0, '肠9', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 36, 'chang9', 'c9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (119, 0, '肠10', 4, '斤', '根', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 37, 'chang10', 'c10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (120, 0, '鲅鱼', 5, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 1, 'bayu', 'by', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (121, 0, '鲅鱼汁', 5, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 2, 'bayuzhi', 'byz', -5.0, 0.0, 0.0, '0', -4);
INSERT INTO `ck_goods` VALUES (122, 0, '鳕鱼', 5, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 3, 'xueyu', 'xy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (123, 0, '鳕鱼条', 5, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 4, 'xueyutiao', 'xyt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (124, 0, '河虾', 5, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 5, 'hexia', 'hx', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (125, 0, '带鱼', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 6, 'daiyu', 'dy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (126, 0, '红头鱼', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 7, 'hongtouyu', 'hty', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (127, 0, '香辣鱿鱼', 5, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 8, 'xianglayouyu', 'xlyy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (128, 0, '鱼2', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 9, 'yu2', 'y2', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (129, 0, '鱼3', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 10, 'yu3', 'y3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (130, 0, '鱼4', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'yu4', 'y4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (131, 0, '鱼5', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 12, 'yu5', 'y5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (132, 0, '鱼6', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 13, 'yu6', 'y6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (133, 0, '鱼7', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 14, 'yu7', 'y7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (134, 0, '鱼8', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 15, 'yu8', 'y8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (135, 0, '鱼9', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 16, 'yu9', 'y9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (136, 0, '鱼10', 5, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 17, 'yu10', 'y10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (137, 0, '酒鬼花生(不辣)', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 1, 'jiuguihuasheng(bula)', 'jghs(bl)', -2.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (138, 0, '酒鬼花生(辣)', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 2, 'jiuguihuasheng(la)', 'jghs(l)', -5.0, 0.0, 0.0, '0', -3);
INSERT INTO `ck_goods` VALUES (139, 0, '开花豆', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 3, 'kaihuadou', 'khd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (140, 0, '五香花生', 6, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 4, 'wuxianghuasheng', 'wxhs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (141, 0, '芝麻花生', 6, '斤', '斤', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 5, 'zhimahuasheng', 'zmhs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (142, 0, '香辣酥', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 6, 'xianglasu', 'xls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (143, 0, '炸花生', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 7, 'zhahuasheng', 'zhs', -5.0, 0.0, 0.0, '0', 5);
INSERT INTO `ck_goods` VALUES (144, 0, '小皮冻', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 8, 'xiaopidong', 'xpd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (145, 0, '瓦罐鱼', 6, '袋', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 9, 'waguanyu', 'wgy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (146, 0, '下酒3', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 10, 'xiajiu3', 'xj3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (147, 0, '下酒4', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 11, 'xiajiu4', 'xj4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (148, 0, '下酒5', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 12, 'xiajiu5', 'xj5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (149, 0, '下酒6', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 13, 'xiajiu6', 'xj6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (150, 0, '下酒7', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 14, 'xiajiu7', 'xj7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (151, 0, '下酒8', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 15, 'xiajiu8', 'xj8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (152, 0, '下酒9', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 16, 'xiajiu9', 'xj9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (153, 0, '下酒10', 6, '斤', '袋', '斤', 1, 1, 1, NULL, 0.0, 0, 32.8, 17, 'xiajiu10', 'xj10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (154, 0, '酸菜(颗)', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 1, 'suancaike', 'sck', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (155, 0, '酸菜(丝)', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 2, 'suancaisi', 'scs', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (156, 0, '水芥', 7, '斤', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 3, 'shuijie', 'sj', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (157, 0, '熟芥', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 4, 'shujie', 'sj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (158, 0, '鱼酸菜', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 5, 'yusuancai', 'ysc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (159, 0, '菜谱王', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 6, 'caipuwang', 'cpw', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (160, 0, '金针菇(咸菜)', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 7, 'jinzhengu(xiancai)', 'jzg(xc)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (161, 0, '酱地环', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 8, 'jiangdihuan', 'jdh', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (162, 0, '酱八宝', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 9, 'jiangbabao', 'jbb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (163, 0, '下酒菜', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 10, 'xiajiucai', 'xjc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (164, 0, '一品丝', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 11, 'yipinsi', 'yps', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (165, 0, '杏鲍菇', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 12, 'xingbaogu', 'xbg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (166, 1, '香菜', 9, '斤', '份', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 13, 'xiangcai', 'xc', -2.0, 0.0, 0.0, '0', -1);
INSERT INTO `ck_goods` VALUES (167, 0, '海白菜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 14, 'haibaicai', 'hbc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (168, 0, '黄金椒', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 15, 'huangjinjiao', 'hjj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (169, 0, '酸豆角', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 16, 'suandoujiao', 'sdj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (170, 0, '歪歪丝', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 17, 'waiwaisi', 'wws', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (171, 0, '雪里红', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 18, 'xuelihong', 'xlh', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (172, 0, '酸白菜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 19, 'suanbaicai', 'sbc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (173, 0, '油焖港椒', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 20, 'youmengangjiao', 'ymgj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (174, 0, '五香金丝', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 21, 'wuxiangjinsi', 'wxjs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (175, 0, '红油甘露', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 22, 'hongyouganlu', 'hygl', -2.0, 0.0, 0.0, '0', 10);
INSERT INTO `ck_goods` VALUES (176, 0, '宫廷黄瓜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 23, 'gongtinghuanggua', 'gthg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (177, 0, '红油绿笋', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 24, 'hongyoulüsun', 'hyls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (178, 0, '湖泊金斯', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 25, 'hubojinsi', 'hbjs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (179, 0, '小米椒', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 26, 'xiaomijiao', 'xmj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (180, 0, '五仁酱丁', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 27, 'wurenjiangding', 'wrjd', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (181, 0, '麻仁黄瓜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 28, 'marenhuanggua', 'mrhg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (182, 0, '什锦黄瓜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 29, 'shenjinhuanggua', 'sjhg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (183, 0, '白玉糖蒜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 30, 'baiyutangsuan', 'byts', -2.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (184, 0, '腊八蒜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 31, 'labasuan', 'lbs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (185, 0, '油芥丝', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 32, 'youjiesi', 'yjs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (186, 0, '玫瑰大头菜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 33, 'meiguidatoucai', 'mgdtc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (187, 0, '红油榨菜丝', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 34, 'hongyouzhacaisi', 'hyzcs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (188, 0, '辣白菜切颗', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 35, 'labaicaiqieke', 'lbcqk', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (189, 0, '全形豆角', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 36, 'quanxingdoujiao', 'qxdj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (190, 0, '麻辣海底丝', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 37, 'malahaidisi', 'mlhds', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (191, 0, '麻辣萝卜干', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 38, 'malaluobugan', 'mllbg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (192, 0, '满口香', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 39, 'mankouxiang', 'mkx', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (193, 0, '全形榨菜', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 40, 'quanxingzhacai', 'qxzc', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (194, 0, '五香风干榨菜', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 41, 'wuxiangfengganzhacai', 'wxfgzc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (195, 0, '油淋笋丝', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 42, 'youlinsunsi', 'ylss', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (196, 0, '酱萝卜', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 43, 'jiangluobu', 'jlb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (197, 0, '杂拌', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 44, 'zaban', 'zb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (198, 0, '麻豆腐', 7, '斤', '斤', '斤', 1, 1, 2, 1, 0.0, 0, 32.8, 45, 'madoufu', 'mdf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (199, 0, '干尖', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 46, 'ganjian', 'gj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (200, 0, '辣块', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 47, 'lakuai', 'lk', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (201, 0, '辣条', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 48, 'latiao', 'lt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (202, 0, '灌肠', 7, '斤', '斤', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 49, 'guanchang', 'gc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (203, 0, '辣白菜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 50, 'labaicai', 'lbc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (204, 0, '酸辣萝卜条', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 51, 'suanlaluobutiao', 'sllbt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (205, 0, '香甜脆瓜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 52, 'xiangtiancuigua', 'xtcg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (206, 0, '百味鲜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 53, 'baiweixian', 'bwx', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (207, 0, '多味瓜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 54, 'duoweigua', 'dwg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (208, 0, '红油地环', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 55, 'hongyoudihuan', 'hydh', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (209, 0, '紫香菜', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 56, 'zixiangcai', 'zxc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (210, 0, '咸菜4', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 57, 'xiancai4', 'xc4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (211, 0, '咸菜5', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 58, 'xiancai5', 'xc5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (212, 0, '咸菜6', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 59, 'xiancai6', 'xc6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (213, 0, '咸菜7', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 60, 'xiancai7', 'xc7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (214, 0, '咸菜8', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 61, 'xiancai8', 'xc8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (215, 0, '咸菜9', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 62, 'xiancai9', 'xc9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (216, 0, '咸菜10', 7, '箱', '箱', '斤', 1, 1, 2, NULL, 0.0, 0, 32.8, 63, 'xiancai10', 'xc10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (217, 1, '豆泡', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 1, 'doupao', 'dp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (218, 1, '川辣干', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 2, 'chuanlagan', 'clg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (219, 1, '香辣丝', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 3, 'xianglasi', 'xls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (220, 1, '素鸡', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 4, 'suji', 'sj', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (221, 1, '熏油皮', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 5, 'xunyoupi', 'xyp', -2.0, 0.0, 0.0, '0', 1);
INSERT INTO `ck_goods` VALUES (222, 1, '熏豆皮', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 6, 'xundoupi', 'xdp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (223, 1, '豆腐丝', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 7, 'doufusi', 'dfs', -3.0, 0.0, 0.0, '0', 24);
INSERT INTO `ck_goods` VALUES (224, 1, '素鸡卷', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 8, 'sujijuan', 'sjj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (225, 1, '五香干', 8, '斤', '包', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 9, 'wuxianggan', 'wxg', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (226, 1, '白豆干', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 10, 'baidougan', 'bdg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (227, 1, '千层丝', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 11, 'qiancengsi', 'qcs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (228, 1, '干油皮', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 12, 'ganyoupi', 'gyp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (229, 1, '宽粉', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 13, 'kuanfen', 'kf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (230, 1, '土豆粉(宽)', 8, '斤', '袋', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 14, 'tudoufen(kuan)', 'tdf(k)', -1.0, 0.0, 0.0, '0', 39);
INSERT INTO `ck_goods` VALUES (231, 1, '千层片', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 15, 'qiancengpian', 'qcp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (232, 1, '盒豆腐', 8, '盒', '盒', '盒', 1, 1, 2, 4, 0.0, 0, 32.8, 16, 'hedoufu', 'hdf', -1.0, 0.0, 0.0, '0', 9);
INSERT INTO `ck_goods` VALUES (233, 1, '孜然羊肉', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 17, 'ziranyangrou', 'zryr', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (234, 1, '熏豆干', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 18, 'xundougan', 'xdg', -2.0, 0.0, 0.0, '0', 8);
INSERT INTO `ck_goods` VALUES (235, 1, '猪血', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 19, 'zhuxue', 'zx', -2.0, 0.0, 0.0, '0', 17);
INSERT INTO `ck_goods` VALUES (236, 1, '京酱肉丝', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 20, 'jingjiangrousi', 'jjrs', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (237, 1, '千叶豆腐', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 21, 'qianyedoufu', 'qydf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (238, 1, '魔芋丝(豆制品)', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 22, 'moyusi(dzp)', 'mys', -2.0, 0.0, 0.0, '0', 28);
INSERT INTO `ck_goods` VALUES (239, 1, '鸭血', 8, '盒', '盒', '盒', 1, 1, 2, 4, 0.0, 0, 32.8, 23, 'yaxue', 'yx', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (240, 1, '拉皮', 8, '袋', '袋', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 24, 'lapi', 'lp', -1.0, 0.0, 0.0, '0', 9);
INSERT INTO `ck_goods` VALUES (241, 1, '魔芋块', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 25, 'moyukuai', 'myk', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (242, 1, '魔芋毛肚', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 26, 'moyumaodu', 'mymd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (243, 1, '魔芋黑块', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 27, 'moyuheikuai', 'myhk', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (244, 1, '面筋球', 8, '箱', '箱', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 28, 'mianjinqiu', 'mjq', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (245, 1, '炸三角', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 29, 'zhasanjiao', 'zsj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (246, 1, '豆腐', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 30, 'doufu', 'df', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (247, 1, '脆皮豆腐', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 31, 'cuipidoufu', 'cpdf', -2.0, 0.0, 0.0, '0', 13);
INSERT INTO `ck_goods` VALUES (248, 1, '白玉内脂豆腐', 8, '斤', '盒', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 32, 'baiyuneizhidoufu', 'bynzdf', -1.0, 0.0, 0.0, '0', 4);
INSERT INTO `ck_goods` VALUES (249, 1, '白玉北豆腐', 8, '斤', '盒', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 33, 'baiyubeidoufu', 'bybdf', -1.0, 0.0, 0.0, '0', 7);
INSERT INTO `ck_goods` VALUES (250, 1, '白玉韧豆腐', 8, '斤', '盒', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 34, 'baiyurendoufu', 'byrdf', -1.0, 0.0, 0.0, '0', 7);
INSERT INTO `ck_goods` VALUES (251, 1, '黄豆', 8, '斤', '袋', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 35, 'huangdou', 'hd', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (252, 1, '土豆粉(细)', 8, '斤', '袋', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 36, 'tudoufen(xi)', 'tdf(x)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (253, 1, '豆皮', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 37, 'doupi', 'dp', -2.0, 0.0, 0.0, '0', 78);
INSERT INTO `ck_goods` VALUES (254, 1, '草原鸭血', 8, '盒', '盒', '盒', 1, 1, 2, 4, 0.0, 0, 32.8, 38, 'caoyuanyaxue', 'cyyx', -1.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (255, 1, '豆制品3', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 39, 'douzhipin4', 'dzp3', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (256, 1, '卤水', 8, '袋', '袋', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 40, 'lushui', 'ls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (257, 1, '鲜油皮', 8, '张', '张', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 41, 'xianyoupi', 'xyp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (258, 1, '水果萝卜', 8, '箱', '箱', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 42, 'shuiguoluobo', 'sglb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (259, 1, '豆制品4', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 43, 'douzhipin4', 'dzp4', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (260, 1, '豆制品5', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 44, 'douzhipin5', 'dzp5', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (261, 1, '豆制品6', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 45, 'douzhipin6', 'dzp6', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (262, 1, '豆制品7', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 46, 'douzhipin7', 'dzp7', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (263, 1, '豆制品8', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 47, 'douzhipin8', 'dzp8', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (264, 1, '豆制品9', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 48, 'douzhipin9', 'dzp9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (265, 1, '豆制品10', 8, '斤', '斤', '斤', 1, 1, 2, 4, 0.0, 0, 32.8, 49, 'douzhipin10', 'dzp10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (266, 1, '花生米(凉菜)', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 1, 'huashengmi(liangcai)', 'hsm(lc)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (267, 1, '银耳', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 2, 'yiner', 'ye', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (268, 1, '木耳', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 3, 'muer', 'me', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (269, 1, '海带丝', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 4, 'haidaisi', 'hds', 0.0, 0.0, 0.0, '0', 3);
INSERT INTO `ck_goods` VALUES (270, 1, '芹菜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 5, 'qincai', 'qc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (271, 1, '藕片', 9, '斤', '袋', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 6, 'oupian', 'op', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (272, 1, '面筋', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 7, 'mianjin', 'mj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (273, 1, '油豆皮', 9, '箱', '箱', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 8, 'youdoupi', 'ydp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (274, 1, '心里美', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 9, 'xinlimei', 'xlm', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (275, 1, '魔芋丝(凉菜)', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 10, 'moyusi(lc)', 'mys', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (276, 1, '白毛肚', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 11, 'baimaodu', 'bmd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (277, 1, '穿心莲', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 12, 'chuanxinlian', 'cxl', 0.0, 0.0, 0.0, '0', 3);
INSERT INTO `ck_goods` VALUES (278, 1, '豆角', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 13, 'doujiao', 'dj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (279, 1, '笋尖', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 14, 'sunjian', 'sj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (280, 1, '粉皮', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 15, 'fenpi', 'fp', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (281, 1, '厥根粉', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 16, 'juegenfen', 'jgf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (282, 1, '腐竹', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 17, 'fuzhu', 'fz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (283, 1, '西兰花', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 18, 'xilanhua', 'xlh', 0.0, 0.0, 0.0, '0', 8);
INSERT INTO `ck_goods` VALUES (284, 1, '紫甘蓝', 9, '斤', '个', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 19, 'ziganlan', 'zgl', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (285, 1, '生菜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 20, 'shengcai', 'sc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (286, 1, '苦菊', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 21, 'kuju', 'kj', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (287, 1, '苦瓜', 9, '斤', '根', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 22, 'kugua', 'kg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (288, 1, '黄瓜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 23, 'huanggua', 'hg', 0.0, 0.0, 0.0, '0', 4);
INSERT INTO `ck_goods` VALUES (289, 1, '黄花菜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 24, 'huanghuacai', 'hhc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (290, 1, '黄毛肚', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 25, 'huangmaodu', 'hmd', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (291, 1, '厥菜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 26, 'juecai', 'jc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (292, 1, '龙须菜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 27, 'longxucai', 'lxc', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (293, 1, '洋葱', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 28, 'yangcong', 'yc', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (294, 1, '小蘑菇', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 29, 'xiaomogu', 'xmg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (295, 1, '金针菇(凉菜)', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 30, 'jinzhengu(liangcai)', 'jzg(lc)', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (296, 1, '小白菇', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 31, 'xiaobaigu', 'xbg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (297, 1, '胡萝卜', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 32, 'huluobu', 'hlb', 0.0, 0.0, 0.0, '0', 4);
INSERT INTO `ck_goods` VALUES (298, 1, '土豆丝', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 33, 'tudousi', 'tds', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (299, 1, '干银耳', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 34, 'ganyiner', 'gye', 0.0, 0.0, 0.0, '0', 5);
INSERT INTO `ck_goods` VALUES (300, 1, '干腐竹', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 35, 'ganfuzhu', 'gfz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (301, 1, '干木耳', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 36, 'ganmuer', 'gme', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (302, 1, '干厥根粉', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 37, 'ganjuegenfen', 'gjgf', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (303, 1, '干粉皮', 9, '袋', '袋', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 38, 'ganfenpi', 'gfp', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (304, 1, '大蒜', 9, '斤', '份', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 39, 'dasuan', 'ds', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (305, 1, '厥根粉料水', 9, '袋', '袋', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 40, 'juegenfenliaoshui', 'jgfls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (306, 1, '香油', 9, '瓶', '瓶', '瓶', 1, 1, 3, 4, 0.0, 0, 32.8, 41, 'xiangyou', 'xy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (307, 1, '芝麻', 9, '份', '份', '份', 1, 1, 3, 4, 0.0, 0, 32.8, 42, 'zhima', 'zm', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (308, 1, '料水', 9, '件', '袋', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 34, 'liaoshui', 'ls', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (309, 0, '芝麻酱', 9, '桶', '桶', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 35, 'zhimajiang', 'zmj', 0.0, 0.0, 0.0, '0', 3);
INSERT INTO `ck_goods` VALUES (310, 1, '葱油', 9, '桶', '桶', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 36, 'congyou', 'cy', 0.0, 0.0, 0.0, '0', 1);
INSERT INTO `ck_goods` VALUES (311, 1, '酱油', 9, '桶', '桶', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 37, 'jiangyou', 'jy', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (312, 1, '鸡精', 9, '包', '包', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 38, 'jijing', 'jj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (313, 1, '盐', 9, '包', '包', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 39, 'yan', 'y', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (314, 1, '味精', 9, '包', '包', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 40, 'weijing', 'wj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (315, 1, '白糖', 9, '包', '包', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 41, 'baitang', 'bt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (316, 1, '辣椒面', 9, '包', '包', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 42, 'lajiaomian', 'ljm', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (317, 1, '蟹味菇', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 43, 'xieweigu', 'xwg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (318, 1, '海鲜菇', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 44, 'haixiangu', 'hxg', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (319, 1, '凉菜10', 9, '斤', '斤', '斤', 1, 1, 3, 4, 0.0, 0, 32.8, 45, 'liangcai10', 'lc10', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (320, 0, '老汤', 10, '斤', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 1, 'laotang', 'lt', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (321, 0, '称纸', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 2, 'chengzhi', 'cz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (322, 0, '小白袋', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 3, 'xiaobaidai', 'xbd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (323, 0, '中白袋', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 4, 'zhongbaidai', 'zbd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (324, 0, '大白袋', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 5, 'dabaidai', 'dbd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (325, 0, '带字小袋', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 6, 'daizixiaodai', 'xdzd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (326, 0, '带字大袋', 10, '包', '包', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 7, 'daizidadai', 'ddzd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (327, 0, '洗洁精', 10, '瓶', '瓶', '斤', 0, 1, 1, NULL, 0.0, 0, 32.8, 8, 'xijiejing', 'xjj', 0.0, 0.0, 0.0, '0', 1);
INSERT INTO `ck_goods` VALUES (328, 0, '厂标', 10, '套', '套', '张', 0, 1, 1, NULL, 0.0, 0, 32.8, 9, 'changbiao', 'cb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (329, 0, '男式套袖', 10, '套', '套', '套', 0, 1, 1, NULL, 0.0, 0, 32.8, 10, 'nanshitaoxiu', 'nstx', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (330, 0, '特价黄纸', 10, '张', '张', '张', 0, 1, 1, NULL, 0.0, 0, 32.8, 11, 'tejiahuangzhi', 'tjhz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (331, 0, '一次性手套', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 12, 'yicixingshoutao', 'ycxst', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (332, 0, '一次性筷子', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 13, 'yicixingkuaizi', 'ycxkz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (333, 0, '泡沫百洁布', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 14, 'paomobaijiebu', 'pmbjb', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (334, 0, '钢丝球', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 15, 'gangsiqiu', 'gsq', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (335, 0, '碎料', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 16, 'suiliao', 'sl', 0.0, 0.0, 0.0, '0', 2);
INSERT INTO `ck_goods` VALUES (336, 0, '护色素', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 17, 'husesu', 'hss', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (337, 0, '收据', 10, '本', '本', '本', 0, 1, 1, NULL, 0.0, 0, 32.8, 18, 'shouju', 'sj', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (338, 0, '透明胶带', 10, '卷', '卷', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 19, 'toumingjiaodai', 'tmjd', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (339, 0, '一次性口罩', 10, '袋', '袋', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 20, 'yicixingkouzhao', 'ycxkz', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (340, 0, '围裙', 10, '个', '个', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 21, 'weiqun', 'wq', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (341, 0, '套袖', 10, '副', '副', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 22, 'taoxiu', 'tx', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (342, 0, '2011盒', 10, '套', '套', '套', 0, 1, 1, NULL, 0.0, 0, 32.8, 23, '2011', '2011', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (343, 0, '其它9', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 24, 'qita9', 'qt9', 0.0, 0.0, 0.0, '0', 0);
INSERT INTO `ck_goods` VALUES (344, 0, '其它10', 10, '包', '包', '包', 0, 1, 1, NULL, 0.0, 0, 32.8, 25, 'qita10', 'qt10', 0.0, 0.0, 0.0, '0', 0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Table structure for ck_in_sub_bill
-- ----------------------------
DROP TABLE IF EXISTS `ck_in_sub_bill`;
CREATE TABLE `ck_in_sub_bill` (
  `in_sub_bill_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '入库单子产品id',
  `main_bill_id` int(20) DEFAULT NULL COMMENT '入库单id',
  `s_goods_id` int(20) DEFAULT NULL COMMENT '入库商品id',
  `in_quantity` float(10,1) DEFAULT NULL COMMENT '入库数量',
  `stock_quantity` float(10,1) DEFAULT NULL,
  `unit_price` float(10,1) DEFAULT NULL COMMENT '入库单价',
  PRIMARY KEY (`in_sub_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Table structure for ck_line
-- ----------------------------
DROP TABLE IF EXISTS `ck_line`;
CREATE TABLE `ck_line` (
  `line_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '线路id',
  `line_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '线路名称',
  `origin_point` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '始发地',
  PRIMARY KEY (`line_id`),
  KEY `line_id` (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_line
-- ----------------------------
BEGIN;
INSERT INTO `ck_line` VALUES (1, 'one壮壮', NULL);
INSERT INTO `ck_line` VALUES (2, 'one歌王', NULL);
INSERT INTO `ck_line` VALUES (3, 'one电聚', NULL);
INSERT INTO `ck_line` VALUES (4, 'two壮壮', NULL);
INSERT INTO `ck_line` VALUES (5, 'two歌王', NULL);
INSERT INTO `ck_line` VALUES (6, 'two电聚', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_line_store
-- ----------------------------
BEGIN;
INSERT INTO `ck_line_store` VALUES (1, 1, 1, 1);
INSERT INTO `ck_line_store` VALUES (2, 1, 2, 2);
INSERT INTO `ck_line_store` VALUES (3, 1, 3, 3);
INSERT INTO `ck_line_store` VALUES (4, 1, 4, 4);
INSERT INTO `ck_line_store` VALUES (5, 1, 5, 5);
INSERT INTO `ck_line_store` VALUES (6, 1, 6, 6);
INSERT INTO `ck_line_store` VALUES (7, 2, 7, 1);
INSERT INTO `ck_line_store` VALUES (8, 2, 8, 2);
INSERT INTO `ck_line_store` VALUES (9, 2, 9, 3);
INSERT INTO `ck_line_store` VALUES (10, 2, 10, 4);
INSERT INTO `ck_line_store` VALUES (11, 2, 11, 5);
INSERT INTO `ck_line_store` VALUES (12, 2, 12, 6);
INSERT INTO `ck_line_store` VALUES (13, 4, 13, 1);
INSERT INTO `ck_line_store` VALUES (14, 4, 14, 2);
INSERT INTO `ck_line_store` VALUES (15, 4, 15, 3);
INSERT INTO `ck_line_store` VALUES (16, 4, 16, 4);
INSERT INTO `ck_line_store` VALUES (17, 4, 17, 5);
INSERT INTO `ck_line_store` VALUES (18, 4, 18, 6);
INSERT INTO `ck_line_store` VALUES (29, 5, 19, 1);
INSERT INTO `ck_line_store` VALUES (30, 5, 20, 2);
INSERT INTO `ck_line_store` VALUES (31, 5, 21, 3);
INSERT INTO `ck_line_store` VALUES (32, 5, 22, 4);
INSERT INTO `ck_line_store` VALUES (33, 5, 23, 5);
INSERT INTO `ck_line_store` VALUES (34, 5, 24, 6);
INSERT INTO `ck_line_store` VALUES (35, 5, 25, 7);
INSERT INTO `ck_line_store` VALUES (36, 5, 26, 8);
INSERT INTO `ck_line_store` VALUES (37, 5, 27, 9);
INSERT INTO `ck_line_store` VALUES (38, 5, 28, 10);
INSERT INTO `ck_line_store` VALUES (39, 5, 29, 11);
COMMIT;

-- ----------------------------
-- Table structure for ck_out_dep
-- ----------------------------
DROP TABLE IF EXISTS `ck_out_dep`;
CREATE TABLE `ck_out_dep` (
  `out_dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `out_dep_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`out_dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_out_dep
-- ----------------------------
BEGIN;
INSERT INTO `ck_out_dep` VALUES (1, '库房');
INSERT INTO `ck_out_dep` VALUES (2, '市场采购');
INSERT INTO `ck_out_dep` VALUES (3, '蔬菜配送商管涛');
COMMIT;

-- ----------------------------
-- Table structure for ck_pur_dep
-- ----------------------------
DROP TABLE IF EXISTS `ck_pur_dep`;
CREATE TABLE `ck_pur_dep` (
  `pur_dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `pur_dep_name` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`pur_dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_pur_dep
-- ----------------------------
BEGIN;
INSERT INTO `ck_pur_dep` VALUES (1, '市场采购');
COMMIT;

-- ----------------------------
-- Table structure for ck_stock_bill
-- ----------------------------
DROP TABLE IF EXISTS `ck_stock_bill`;
CREATE TABLE `ck_stock_bill` (
  `stock_bill_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '出库单id',
  `total` float(20,1) DEFAULT NULL COMMENT '总金额',
  `bill_date` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '出库日期',
  `user_id` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '操作元id',
  `in_store_id` int(20) DEFAULT NULL COMMENT '入库店铺id',
  PRIMARY KEY (`stock_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Table structure for ck_stock_record
-- ----------------------------
DROP TABLE IF EXISTS `ck_stock_record`;
CREATE TABLE `ck_stock_record` (
  `stock_record_id` int(20) NOT NULL AUTO_INCREMENT,
  `st_apply_id` int(20) DEFAULT NULL COMMENT '申请id',
  `quantity` float(20,1) DEFAULT NULL COMMENT '出库数量',
  `out_time` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '出库时间',
  `pick_user_id` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '拣货人员',
  `check_user_id` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '检查人员',
  `enter_user_id` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '录入人员',
  `in_out_type` tinyint(2) DEFAULT NULL COMMENT '出库类型“1，入库； 2:出库”',
  `out_dep_id` int(20) DEFAULT NULL COMMENT '出库部门id',
  `st_goods_id` int(20) DEFAULT NULL COMMENT '商品id',
  `in_store_id` int(20) DEFAULT NULL COMMENT '申请店铺id',
  `delivery_status` tinyint(2) DEFAULT NULL COMMENT '出库状态',
  `discount_price` float(10,1) DEFAULT NULL COMMENT '出货单价',
  `is_discount` tinyint(2) DEFAULT NULL COMMENT '是否打折',
  `ck_stock_bill_id` int(20) DEFAULT NULL COMMENT '出库单id',
  `sub_total` float(20,1) DEFAULT NULL COMMENT '小计',
  PRIMARY KEY (`stock_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_stock_record
-- ----------------------------
BEGIN;
INSERT INTO `ck_stock_record` VALUES (1, 38, 33.0, NULL, NULL, NULL, NULL, 0, 1, 11, 17, 0, 49.8, NULL, NULL, 1643.4);
INSERT INTO `ck_stock_record` VALUES (2, 54, 1.0, NULL, NULL, NULL, NULL, 0, 1, 16, 17, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (3, 13, 23.0, NULL, NULL, NULL, NULL, 0, 1, 23, 20, 0, 32.8, NULL, NULL, 754.4);
INSERT INTO `ck_stock_record` VALUES (4, 39, 66.0, NULL, NULL, NULL, NULL, 0, 1, 23, 17, 0, 32.8, NULL, NULL, 2164.8);
INSERT INTO `ck_stock_record` VALUES (5, 16, 55.0, NULL, NULL, NULL, NULL, 0, 1, 26, 20, 0, 32.8, NULL, NULL, 1804.0);
INSERT INTO `ck_stock_record` VALUES (6, 8, 2.0, NULL, NULL, NULL, NULL, 0, 1, 137, 20, 0, 32.8, NULL, NULL, 65.6);
INSERT INTO `ck_stock_record` VALUES (7, 12, 5.0, NULL, NULL, NULL, NULL, 0, 1, 28, 20, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (8, 53, 5.0, NULL, NULL, NULL, NULL, 0, 1, 29, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (9, 43, 5.0, NULL, NULL, NULL, NULL, 0, 1, 32, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (10, 46, 5.0, NULL, NULL, NULL, NULL, 0, 1, 36, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (11, 49, 5.0, NULL, NULL, NULL, NULL, 0, 1, 38, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (12, 18, 5.0, NULL, NULL, NULL, NULL, 0, 1, 39, 20, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (13, 20, 5.0, NULL, NULL, NULL, NULL, 0, 1, 52, 20, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (14, 42, 5.0, NULL, NULL, NULL, NULL, 0, 1, 52, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (15, 41, 5.0, NULL, NULL, NULL, NULL, 0, 1, 54, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (16, 40, 5.0, NULL, NULL, NULL, NULL, 0, 1, 55, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (17, 56, 5.0, NULL, NULL, NULL, NULL, 0, 1, 56, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (18, 52, 5.0, NULL, NULL, NULL, NULL, 0, 1, 65, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (19, 55, 5.0, NULL, NULL, NULL, NULL, 0, 1, 68, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (20, 15, 55.0, NULL, NULL, NULL, NULL, 0, 1, 90, 20, 0, 32.8, NULL, NULL, 1804.0);
INSERT INTO `ck_stock_record` VALUES (21, 50, 55.0, NULL, NULL, NULL, NULL, 0, 1, 90, 17, 0, 32.8, NULL, NULL, 1804.0);
INSERT INTO `ck_stock_record` VALUES (22, 44, 5.0, NULL, NULL, NULL, NULL, 0, 1, 91, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (23, 19, 5.0, NULL, NULL, NULL, NULL, 0, 1, 92, 20, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (24, 51, 5.0, NULL, NULL, NULL, NULL, 0, 1, 98, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (25, 45, 5.0, NULL, NULL, NULL, NULL, 0, 1, 103, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (26, 47, 5.0, NULL, NULL, NULL, NULL, 0, 1, 120, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (27, 48, 5.0, NULL, NULL, NULL, NULL, 0, 1, 121, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (28, 9, 5.0, NULL, NULL, NULL, NULL, 0, 1, 138, 20, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (29, 63, 5.0, NULL, NULL, NULL, NULL, 0, 1, 143, 17, 0, 32.8, NULL, NULL, 164.0);
INSERT INTO `ck_stock_record` VALUES (30, 35, 1.0, NULL, NULL, NULL, NULL, 0, 2, 155, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (31, 80, 1.0, NULL, NULL, NULL, NULL, 0, 2, 156, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (32, 88, 1.0, NULL, NULL, NULL, NULL, 0, 2, 159, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (33, 73, 1.0, NULL, NULL, NULL, NULL, 0, 2, 161, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (34, 33, 1.0, NULL, NULL, NULL, NULL, 0, 2, 170, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (35, 31, 1.0, NULL, NULL, NULL, NULL, 0, 2, 171, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (36, 74, 1.0, NULL, NULL, NULL, NULL, 0, 2, 175, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (37, 89, 1.0, NULL, NULL, NULL, NULL, 0, 2, 175, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (38, 75, 1.0, NULL, NULL, NULL, NULL, 0, 2, 180, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (39, 30, 1.0, NULL, NULL, NULL, NULL, 0, 2, 183, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (40, 87, 1.0, NULL, NULL, NULL, NULL, 0, 2, 183, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (41, 76, 1.0, NULL, NULL, NULL, NULL, 0, 2, 192, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (42, 32, 1.0, NULL, NULL, NULL, NULL, 0, 2, 193, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (43, 77, 1.0, NULL, NULL, NULL, NULL, 0, 2, 206, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (44, 83, 1.0, NULL, NULL, NULL, NULL, 0, 2, 220, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (45, 17, 1.0, NULL, NULL, NULL, NULL, 0, 2, 221, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (46, 71, 1.0, NULL, NULL, NULL, NULL, 0, 2, 221, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (47, 22, 1.0, NULL, NULL, NULL, NULL, 0, 2, 223, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (48, 82, 1.0, NULL, NULL, NULL, NULL, 0, 2, 223, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (49, 72, 1.0, NULL, NULL, NULL, NULL, 0, 2, 223, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (50, 28, 1.0, NULL, NULL, NULL, NULL, 0, 2, 225, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (51, 79, 1.0, NULL, NULL, NULL, NULL, 0, 2, 230, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (52, 86, 1.0, NULL, NULL, NULL, NULL, 0, 2, 232, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (53, 23, 1.0, NULL, NULL, NULL, NULL, 0, 2, 234, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (54, 84, 1.0, NULL, NULL, NULL, NULL, 0, 2, 234, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (55, 14, 1.0, NULL, NULL, NULL, NULL, 0, 2, 235, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (56, 69, 1.0, NULL, NULL, NULL, NULL, 0, 2, 235, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (57, 78, 1.0, NULL, NULL, NULL, NULL, 0, 2, 238, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (58, 85, 1.0, NULL, NULL, NULL, NULL, 0, 2, 238, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (59, 36, 1.0, NULL, NULL, NULL, NULL, 0, 2, 239, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (60, 29, 1.0, NULL, NULL, NULL, NULL, 0, 2, 240, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (61, 34, 1.0, NULL, NULL, NULL, NULL, 0, 2, 241, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (62, 24, 1.0, NULL, NULL, NULL, NULL, 0, 2, 247, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (63, 70, 1.0, NULL, NULL, NULL, NULL, 0, 2, 247, 28, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (64, 26, 1.0, NULL, NULL, NULL, NULL, 0, 2, 248, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (65, 25, 1.0, NULL, NULL, NULL, NULL, 0, 2, 249, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (66, 27, 1.0, NULL, NULL, NULL, NULL, 0, 2, 250, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (67, 90, 1.0, NULL, NULL, NULL, NULL, 0, 2, 251, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (68, 21, 1.0, NULL, NULL, NULL, NULL, 0, 2, 253, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (69, 81, 1.0, NULL, NULL, NULL, NULL, 0, 2, 253, 25, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (70, 37, 1.0, NULL, NULL, NULL, NULL, 0, 2, 254, 20, 0, 32.8, NULL, NULL, 32.8);
INSERT INTO `ck_stock_record` VALUES (71, 10, 2.0, NULL, NULL, NULL, NULL, 0, 3, 166, 20, 0, 32.8, NULL, NULL, 65.6);
COMMIT;

-- ----------------------------
-- Table structure for ck_store
-- ----------------------------
DROP TABLE IF EXISTS `ck_store`;
CREATE TABLE `ck_store` (
  `store_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '店铺Id',
  `store_name` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(200) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(15) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '手机号码',
  `lat` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '横坐标',
  `lun` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '纵坐标',
  `district` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '区域',
  `city` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '城市',
  `wx_nick_name` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `wx_openId` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信id',
  `wx_avatar_url` varchar(200) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信头像',
  `wx_number` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `print_label` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '打印名称',
  `out_label` varchar(30) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '对外名称',
  `join_line` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci COMMENT='零售终端';

-- ----------------------------
-- Records of ck_store
-- ----------------------------
BEGIN;
INSERT INTO `ck_store` VALUES (1, '亦庄', '', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIH9Tibwka8Z2xH4tU8xhW0f6hXs7ib8aAswStBUoiaPibVVq5icnNBJzbaSMgzbNGcwQe1ib2uVW7d8Byw/132', 'eyeseejoy', '亦庄', '亦庄', 1);
INSERT INTO `ck_store` VALUES (2, '龙湖', '', '2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '龙湖', '龙湖', 1);
INSERT INTO `ck_store` VALUES (3, '朝内', '', '3', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '龙湖', '龙湖', 1);
INSERT INTO `ck_store` VALUES (4, '云岗', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '云岗', '云岗', 1);
INSERT INTO `ck_store` VALUES (5, '马一', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '马一', '马一', 1);
INSERT INTO `ck_store` VALUES (6, '北物', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '北物', '北物', 1);
INSERT INTO `ck_store` VALUES (7, '金鱼池', NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '金鱼池', '金鱼池', 1);
INSERT INTO `ck_store` VALUES (8, '东四', NULL, '8', NULL, NULL, NULL, NULL, '勤劳的小蜜蜂', NULL, '', NULL, '东四', '东四', 1);
INSERT INTO `ck_store` VALUES (9, '木樨园', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '木樨园', '木樨园', 1);
INSERT INTO `ck_store` VALUES (10, '通州', NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '通州', '通州', 1);
INSERT INTO `ck_store` VALUES (11, '二拨子', NULL, '11', NULL, NULL, NULL, NULL, '时空缘', NULL, '', NULL, '二拨子', '二拨子', 0);
INSERT INTO `ck_store` VALUES (12, '天通苑', NULL, '12', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '天通苑', '天通苑', 1);
INSERT INTO `ck_store` VALUES (13, '房山豆腐坊', NULL, '13', NULL, NULL, NULL, NULL, '家和万事兴', NULL, '', NULL, '房山', '房山', 1);
INSERT INTO `ck_store` VALUES (15, '岳各庄', NULL, '14', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '岳各庄', '岳各庄', 0);
INSERT INTO `ck_store` VALUES (16, '良乡', NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '良乡', '良乡', 0);
INSERT INTO `ck_store` VALUES (17, '南郝庄', NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '南郝庄', '南郝庄', 1);
INSERT INTO `ck_store` VALUES (18, '石景山', NULL, '17', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '石景山', '石景山', 0);
INSERT INTO `ck_store` VALUES (19, '窦店', NULL, '18', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '窦店', '窦店', 0);
INSERT INTO `ck_store` VALUES (20, '岳各庄', NULL, '19', NULL, NULL, NULL, NULL, '王桂菊', NULL, '', NULL, '岳各庄', '岳各庄', 0);
INSERT INTO `ck_store` VALUES (21, '顺义', NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '顺义', '顺义', 1);
INSERT INTO `ck_store` VALUES (22, '鲜汇', NULL, '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '鲜汇', '鲜汇', 1);
INSERT INTO `ck_store` VALUES (23, '龙山', NULL, '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '龙山', '龙山', NULL);
INSERT INTO `ck_store` VALUES (24, '龙山豆制品', NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '龙山豆制品', '龙山豆制品', NULL);
INSERT INTO `ck_store` VALUES (25, '二拨子豆制品', NULL, '24', NULL, NULL, NULL, NULL, '快乐一生', NULL, NULL, NULL, '二拨子豆制品', '二拨子豆制品', NULL);
INSERT INTO `ck_store` VALUES (26, '金鱼池豆制品', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '金鱼池豆制品', '金鱼池豆制品', NULL);
INSERT INTO `ck_store` VALUES (27, '通州豆制品', NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '通州豆制品', '通州豆制品', NULL);
INSERT INTO `ck_store` VALUES (28, '昌平超市发豆腐坊', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '昌平豆腐坊', '昌平豆腐坊', NULL);
INSERT INTO `ck_store` VALUES (29, '房山超市发', NULL, '28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '房山熟食', '房山熟食', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_supplier
-- ----------------------------
DROP TABLE IF EXISTS `ck_supplier`;
CREATE TABLE `ck_supplier` (
  `supplier_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '供货商id',
  `supplier_name` varchar(50) COLLATE utf8_czech_ci NOT NULL COMMENT '供货商名称',
  `sales_person` varchar(10) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '业务员',
  `sales_phone` varchar(18) COLLATE utf8_czech_ci DEFAULT NULL COMMENT '业务电话',
  `has_app` tinyint(2) DEFAULT NULL COMMENT '是否有app',
  `pay_methods` tinyint(2) DEFAULT '0' COMMENT '付款方式',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_supplier
-- ----------------------------
BEGIN;
INSERT INTO `ck_supplier` VALUES (1, '大红门', '李文', '13910825707', 1, 0);
INSERT INTO `ck_supplier` VALUES (2, '牛筋王', NULL, NULL, NULL, 0);
INSERT INTO `ck_supplier` VALUES (3, '牛筋李', NULL, NULL, NULL, 0);
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
  `u_create_time` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`ck_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

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
INSERT INTO `ck_user` VALUES (18, 'ad', NULL, 1, NULL, NULL);
INSERT INTO `ck_user` VALUES (19, NULL, NULL, 2, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

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
INSERT INTO `ck_user_role` VALUES (20, 18, 1);
INSERT INTO `ck_user_role` VALUES (21, 18, 2);
INSERT INTO `ck_user_role` VALUES (22, 18, 3);
INSERT INTO `ck_user_role` VALUES (23, 18, 4);
INSERT INTO `ck_user_role` VALUES (24, 18, 1);
INSERT INTO `ck_user_role` VALUES (25, 18, 2);
INSERT INTO `ck_user_role` VALUES (26, 18, 3);
INSERT INTO `ck_user_role` VALUES (27, 18, 4);
INSERT INTO `ck_user_role` VALUES (28, 18, 5);
INSERT INTO `ck_user_role` VALUES (29, 19, 1);
INSERT INTO `ck_user_role` VALUES (30, 19, 1);
INSERT INTO `ck_user_role` VALUES (31, 19, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

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
INSERT INTO `sys_menu` VALUES (29, -1, '今日出货', NULL, NULL, 0, 'fa fa-cog', 3);
INSERT INTO `sys_menu` VALUES (30, 29, '订货申请', 'orderApplication', 'ckapplys:list, ckapplys:info, ckapplys:save, ckapplys:update, ckapplys:delete', 1, NULL, 1);
INSERT INTO `sys_menu` VALUES (31, 29, '出货单', 'deliveryOrder', 'ckapplys:list, ckapplys:info, ckapplys:save, ckapplys:update, ckapplys:delete', 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (32, 29, '送货', 'so_deliver', NULL, 1, NULL, 3);
INSERT INTO `sys_menu` VALUES (38, 37, '店铺销售', '/point', NULL, 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (39, 37, '产品销售', '/sellProducts', NULL, 1, NULL, 30);
INSERT INTO `sys_menu` VALUES (40, 0, '系统数据', NULL, NULL, 0, 'fa fa-cog', 7);
INSERT INTO `sys_menu` VALUES (41, 40, '员工', 'ckUser', 'ckuser:list, ckuser:info, ckuser:save, ckuser:update, ckuser:delete', 1, 'fa fa-user', 7);
INSERT INTO `sys_menu` VALUES (42, 40, '硬件设备', '/printer', NULL, 1, 'fa fa-user', 8);
INSERT INTO `sys_menu` VALUES (51, 37, '集团销售', '/groupSales', NULL, 1, 'fa fa-user', 0);
INSERT INTO `sys_menu` VALUES (52, 0, '店铺', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (53, 0, '供货商', NULL, NULL, 0, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (56, 52, '经营数据', 'businessData', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (57, 52, '成本控制', 'costControl', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (62, 53, '供货商列表', 'supplier', 'cksupplier:list, cksupplier:info, cksupplier:save, cksupplier:update, cksupplier:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (63, 40, '店铺', 'storeList', 'ckstore:list, ckstore:info, ckstore:save, ckstore:update, ckstore:delete', 1, 'fa fa-cog', 3);
INSERT INTO `sys_menu` VALUES (64, 40, '送货路线', 'ckLine', 'ckline:list, ckline:info, ckline:save, ckline:update, ckline:delete', 1, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (65, 40, '商品', 'goods', 'ckgoods:list, ckgoods:info, ckgoods:save, ckgoods:update, ckgoods:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (66, 40, '部门', 'ckDep', 'ckdep:list, ckdep:info, ckdep:save, ckdep:update, ckdep:delete', 1, 'fa fa-user', 5);
INSERT INTO `sys_menu` VALUES (67, 65, 'btn1', NULL, 'ckgoods:save', 2, '', 0);
INSERT INTO `sys_menu` VALUES (69, 0, '商品', NULL, '', 0, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (71, 69, '库存商品', 'products', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (72, -1, '采购分析', 'anlysise', NULL, 1, 'fa fa-user', 4);
INSERT INTO `sys_menu` VALUES (73, 52, '销售分析', 'ckStore', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (74, -1, '采购单', 'plan', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa fa-user', 3);
INSERT INTO `sys_menu` VALUES (75, 69, '日采商品', 'daily', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (76, 29, '拣货单录入', 'enterOutStock', 'ckstockrecord:list, ckstockrecord:info, ckstockrecord:save, ckstockrecord:update, ckapplys:delete', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (77, 69, '出货', 'outGoods', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (78, 69, '订货', 'todayOrder', NULL, 1, 'fa fa-user', 0);
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
