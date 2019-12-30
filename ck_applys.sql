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

 Date: 04/12/2019 04:16:27
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
  `apply_status` tinyint(2) DEFAULT NULL COMMENT '订货申请状态"0，新申请；1，打印出库单；2，出货完成；3，打印送货单，4，收货"',
  `apply_line_id` int(20) DEFAULT NULL COMMENT '线路id',
  `page_number` int(4) DEFAULT NULL COMMENT '打印页码',
  `apply_goods_father_id` int(20) DEFAULT NULL COMMENT '商品类别id',
  `order_number` int(4) DEFAULT NULL COMMENT '订货次数',
  PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- ----------------------------
-- Records of ck_applys
-- ----------------------------
BEGIN;
INSERT INTO `ck_applys` VALUES (1, 2, 9.00, '袋', 1, 1, '十二月 04, 2019', '十一月 22, 2019', NULL, 2, NULL, 1, 1, 1);
INSERT INTO `ck_applys` VALUES (2, 3, 2.00, '袋', 1, 1, '十二月 04, 2019', '十一月 28, 2019', NULL, 0, NULL, NULL, 1, 1);
INSERT INTO `ck_applys` VALUES (3, 4, 3.00, '袋', 1, 1, '十二月 04, 2019', '十一月 28, 2019', NULL, 0, NULL, NULL, 1, 1);
INSERT INTO `ck_applys` VALUES (4, 2, 1.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 2, 2);
INSERT INTO `ck_applys` VALUES (5, 3, 2.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 2, 3);
INSERT INTO `ck_applys` VALUES (6, 2, 1.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 2, 3);
INSERT INTO `ck_applys` VALUES (7, 3, 2.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 3, 3);
INSERT INTO `ck_applys` VALUES (8, 5, 3.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 3, 4);
INSERT INTO `ck_applys` VALUES (9, 2, 1.00, '袋', 1, 1, '十二月 04, 2019', '十一月 29, 2019', NULL, 0, NULL, NULL, 3, 4);
INSERT INTO `ck_applys` VALUES (10, 5, 333.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (11, 5, 567.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (12, 84, 90.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (13, 9, 9.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (14, 6, 345.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (15, 43, 90.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 42, NULL);
INSERT INTO `ck_applys` VALUES (16, 6, 90.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (17, 4, 1.00, '斤', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (18, 5, 2.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (19, 4, 4.00, '斤', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (20, 4, 1.00, '斤', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (21, 5, 3.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (22, 4, 333.00, '斤', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (23, 5, 4.00, '袋', 1, 1, '十二月 04, 2019', '十二月 04, 2019', NULL, 0, NULL, NULL, 1, NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
