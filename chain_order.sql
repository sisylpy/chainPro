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

 Date: 25/12/2019 13:16:22
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
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;

-- ----------------------------
-- Records of ck_applys
-- ----------------------------
BEGIN;
INSERT INTO `ck_applys` VALUES (22, 184, 2.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (23, 161, 2.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (24, 171, 2.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (25, 160, 2.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (26, 163, 1.00, '小包', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (27, 176, 1.00, '个', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (28, 195, 2.00, '份', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (29, 86, 1.00, '份', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (30, 196, 2.00, '袋', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (31, 65, 5.00, '斤', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (32, 24, 2.00, '袋', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (33, 58, 3.00, '斤', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (34, 54, 3.00, '根', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (35, 14, 5.00, '斤', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (36, 13, 10.00, '斤', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (37, 33, 5.00, '袋', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (39, 141, 3.00, '包', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (40, 197, 20.00, '斤', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (41, 140, 5.00, '斤', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (42, 131, 1.00, '包', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (43, 155, 8.00, '盒', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (44, 156, 8.00, '盒', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (45, 76, 1.00, '箱', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (46, 103, 1.00, '斤', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (47, 145, 1.00, '斤', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (48, 74, 1.00, '颗', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (49, 155, 6.00, '盒', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (50, 197, 20.00, '斤', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (51, 131, 1.00, '包', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (52, 140, 1.00, '包', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (53, 129, 2.00, '包', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (54, 136, 20.00, '袋', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (55, 74, 1.00, '颗', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (56, 141, 2.00, '包', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (57, 145, 1.00, '盒', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (58, 147, 6.00, '斤', 6, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (59, 59, 6.00, '根', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (60, 30, 5.00, '只', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (61, 31, 30.00, '只', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (62, 20, 2.00, '只', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (63, 37, 5.00, '斤', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (64, 198, 3.00, '片', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (65, 38, 10.00, '根', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (66, 49, 2.00, '箱', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (67, 16, 5.00, '斤', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (68, 64, 2.00, '袋', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (69, 71, 2.00, '袋', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (70, 72, 1.00, '袋', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (71, 13, 10.00, '斤', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (72, 178, 1.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (73, 160, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (74, 164, 4.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (75, 161, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (76, 158, 4.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (77, 174, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (78, 180, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (79, 159, 3.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (80, 176, 1.00, '个', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (81, 169, 1.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (82, 188, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (83, 163, 1.00, '袋', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (84, 171, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (85, 175, 2.00, '斤', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (86, 179, 2.00, '根', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (87, 86, 2.00, '斤', 7, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (88, 195, 1.00, '份', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (89, 173, 3.00, '把', 7, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (90, 196, 4.00, '袋', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (91, 100, 1.00, '箱', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (92, 106, 1.00, '箱', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (93, 103, 1.00, '箱', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (94, 89, 1.00, '箱', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (95, 145, 20.00, '盒', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (96, 153, 5.00, '斤', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (97, 197, 50.00, '斤', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (98, 129, 25.00, '包', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (99, 140, 10.00, '斤', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (100, 136, 10.00, '袋', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (101, 199, 10.00, '袋', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (102, 141, 3.00, '包', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (103, 157, 2.00, '袋', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (104, 147, 15.00, '斤', 8, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (105, 39, 6.00, '个', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (106, 59, 1.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (107, 43, 5.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (108, 7, 1.00, '包', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (109, 23, 1.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (110, 53, 5.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (111, 8, 1.00, '包', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (112, 200, 1.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (113, 201, 6.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (114, 48, 5.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (115, 49, 30.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (116, 62, 10.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (117, 51, 30.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (118, 24, 1.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (119, 202, 2.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (120, 58, 10.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (121, 6, 15.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (122, 13, 30.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (123, 30, 8.00, '只', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (124, 31, 8.00, '只', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (125, 47, 4.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (126, 36, 10.00, '片', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (127, 26, 2.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (128, 88, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (129, 81, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (130, 208, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (131, 87, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (132, 105, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (133, 94, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (134, 75, 2.00, '斤', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (135, 76, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (136, 99, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (137, 103, 1.00, '箱', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (138, 197, 30.00, '斤', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (139, 140, 2.00, '袋', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (140, 141, 3.00, '包', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (141, 145, 20.00, '盒', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (142, 157, 2.00, '袋', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (143, 129, 10.00, '斤', 11, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (144, 12, 30.00, '斤', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (145, 30, 20.00, '只', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (146, 25, 10.00, '个', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (147, 28, 3.00, '袋', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (148, 17, 3.00, '斤', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (149, 49, 30.00, '根', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (150, 43, 5.00, '斤', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (151, 163, 1.00, '袋', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (152, 178, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (153, 175, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (154, 176, 2.00, '个', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (155, 185, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (156, 189, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (157, 180, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (158, 184, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (159, 158, 2.00, '斤', 12, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (160, 195, 2.00, '份', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (161, 157, 2.00, '袋', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (162, 103, 1.00, '箱', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (163, 97, 1.00, '箱', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (164, 150, 1.00, '箱', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (165, 75, 20.00, '斤', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (166, 145, 20.00, '盒', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (167, 89, 20.00, '斤', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (168, 129, 30.00, '斤', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (169, 146, 10.00, '袋', 9, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (170, 30, 5.00, '只', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (171, 209, 2.00, '袋', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (172, 16, 5.00, '斤', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (173, 30, 10.00, '只', 5, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (174, 13, 30.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (175, 68, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (176, 31, 10.00, '只', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (177, 61, 4.00, '根', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (178, 210, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (179, 52, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (180, 56, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (181, 54, 5.00, '根', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (182, 201, 2.00, '根', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (183, 43, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (184, 27, 2.00, '袋', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (185, 211, 2.00, '袋', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (186, 66, 2.00, '包', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (187, 193, 1.00, '包', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (188, 212, 10.00, '袋', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (189, 49, 30.00, '根', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (190, 178, 2.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (191, 169, 2.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (192, 174, 3.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (193, 163, 2.00, '袋', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (194, 186, 2.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (195, 80, 2.00, '斤', 13, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (196, 175, 2.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (197, 180, 3.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (198, 185, 3.00, '斤', 13, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (199, 144, 2.00, '斤', 13, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (200, 86, 2.00, '份', 13, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (201, 91, 30.00, '斤', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (202, 197, 40.00, '斤', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (203, 141, 2.00, '包', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (204, 127, 50.00, '斤', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (205, 103, 1.00, '箱', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (206, 104, 1.00, '箱', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (207, 95, 1.00, '箱', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (208, 153, 5.00, '斤', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (209, 208, 1.00, '箱', 15, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (210, 14, 10.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (211, 14, 10.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (212, 213, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (213, 51, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (214, 147, 1.00, '块', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (215, 13, 30.00, '斤', 10, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (216, 30, 5.00, '只', 10, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (217, 26, 5.00, '袋', 10, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (218, 51, 5.00, '斤', 10, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (219, 47, 3.00, '根', 10, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (220, 141, 1.00, '包', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (221, 95, 1.00, '箱', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (222, 214, 1.00, '箱', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (223, 94, 1.00, '箱', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (224, 79, 1.00, '箱', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (225, 88, 1.00, '箱', 10, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 2, NULL);
INSERT INTO `ck_applys` VALUES (226, 174, 2.00, '斤', 10, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (227, 159, 2.00, '斤', 10, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (228, 171, 2.00, '斤', 10, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (229, 14, 7.00, '斤', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (230, 65, 5.00, '斤', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (231, 16, 5.00, '斤', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (232, 30, 20.00, '只', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (233, 23, 3.00, '袋', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (234, 58, 5.00, '斤', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (235, 13, 10.00, '斤', 16, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (236, 16, 5.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (237, 14, 5.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (238, 210, 10.00, '斤', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (239, 158, 3.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (240, 179, 2.00, '根', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (241, 178, 1.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (242, 189, 1.00, '斤', 5, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (243, 215, 1.00, '袋', 12, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (244, 47, 2.00, '根', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (245, 197, 10.00, '斤', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (246, 12, 10.00, '斤', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (247, 30, 20.00, '只', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (248, 31, 10.00, '只', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (249, 16, 10.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (250, 210, 10.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (251, 51, 10.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (252, 58, 30.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (253, 213, 10.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (254, 27, 1.00, '袋', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (255, 39, 5.00, '个', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (256, 35, 5.00, '个', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (257, 14, 3.00, '斤', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (258, 141, 5.00, '包', 17, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (259, 153, 2.00, '斤', 17, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (260, 209, 2.00, '袋', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (261, 216, 2.00, '根', 17, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (262, 197, 30.00, '斤', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (263, 129, 10.00, '斤', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (264, 140, 2.00, '袋', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (265, 145, 1.00, '盒', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (266, 217, 1.00, '盒', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (267, 135, 1.00, '斤', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (268, 127, 1.00, '斤', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (269, 150, 1.00, '箱', 5, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (270, 197, 30.00, '斤', 12, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (271, 178, 2.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (272, 180, 2.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (273, 144, 1.00, '斤', 19, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (274, 185, 1.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (275, 160, 2.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (276, 163, 1.00, '袋', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (277, 218, 1.00, '袋', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (278, 158, 5.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (279, 184, 2.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (280, 169, 1.00, '斤', 19, 3, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 4, NULL);
INSERT INTO `ck_applys` VALUES (281, 49, 30.00, '根', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (282, 194, 1.00, '包', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (283, 219, 1.00, '包', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (284, 46, 1.00, '盘', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (285, 220, 1.00, '袋', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (286, 10, 1.00, '包', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (287, 23, 1.00, '袋', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (288, 22, 1.00, '袋', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (289, 24, 1.00, '袋', 19, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (290, 27, 1.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (291, 141, 2.00, '包', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (292, 146, 10.00, '袋', 7, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (293, 30, 5.00, '只', 7, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (294, 27, 1.00, '袋', 9, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (295, 141, 2.00, '包', 18, 2, '十二月 14, 2019', '十二月 14, 2019', NULL, 0, NULL, NULL, 3, NULL);
INSERT INTO `ck_applys` VALUES (296, 5, 20.00, '斤', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (297, 210, 20.00, '斤', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (298, 221, 5.00, '斤', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (299, 27, 2.00, '袋', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (300, 12, 20.00, '斤', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (301, 6, 20.00, '斤', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (302, 220, 10.00, '袋', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (303, 30, 10.00, '只', 20, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (304, 65, 5.00, '斤', 13, 1, '十二月 14, 2019', '十二月 14, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (305, 5, 1.00, '斤', 1, 1, '十二月 16, 2019', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (306, 6, 2.00, '斤', 1, 1, '十二月 16, 2019', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (307, 8, 3.00, '包', 1, 1, '十二月 16, 2019', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (308, 18, 4.00, '斤', 1, 1, '十二月 16, 2019', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (309, 12, 11.00, '斤', 1, 1, '十二月 16, 2019 18:31', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (310, 5, 3.00, '斤', 1, 1, '十二月 16, 2019 20:19', '十二月 16, 2019', NULL, 2, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (311, 5, 9.00, '斤', 1, 1, '十二月 16, 2019 20:19', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (312, 18, 8.00, '斤', 1, 1, '十二月 16, 2019 20:20', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (313, 5, 10.00, '斤', 1, 1, '十二月 16, 2019 20:21', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (314, 5, 10.00, '', 1, 1, '十二月 16, 2019 20:40', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (315, 18, 8.00, '', 1, 1, '十二月 16, 2019 20:40', '十二月 16, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (316, 5, 111.00, '', 1, 1, '十二月 17, 2019 10:11', '十二月 17, 2020', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (317, 9, 10.00, '', 1, 1, '十二月 17, 2019 10:30', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (318, 5, 10.00, '', 1, 1, '十二月 17, 2019 11:01', '十二月 18, 2019', NULL, 2, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (319, 5, 2.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 2, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (320, 18, 3.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (321, 27, 4.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (322, 18, 5.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (323, 22, 6.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (324, 7, 7.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (325, 10, 8.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (326, 45, 9.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (327, 24, 10.00, '', 1, 1, '十二月 17, 2019 11:13', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (328, 12, 25.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (329, 46, 1.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (330, 14, 10.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (331, 25, 15.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (332, 6, 15.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (334, 66, 3.00, '', 1, 1, '十二月 17, 2019 12:25', '十二月 18, 2019', NULL, 1, NULL, 1, 1, NULL);
INSERT INTO `ck_applys` VALUES (340, 5, 2.00, '斤', 1, 1, '十二月 18, 2019 14:53', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (341, 5, 2.00, '斤', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (342, 7, 3.00, '包', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (343, 16, 9.00, '斤', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (344, 64, 3.00, '袋', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (345, 33, 1.00, '袋', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (346, 16, 1.00, '斤', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (347, 27, 2.00, '袋', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (348, 5, 2.00, '斤', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (349, 7, 2.00, '包', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
INSERT INTO `ck_applys` VALUES (350, 5, 22.00, '斤', 1, 1, '十二月 18, 2019 16:30', '十二月 19, 2019', NULL, 0, NULL, NULL, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_dep
-- ----------------------------
DROP TABLE IF EXISTS `ck_dep`;
CREATE TABLE `ck_dep` (
  `dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `dep_type` tinyint(2) DEFAULT NULL,
  `dep_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
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
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '商品名称',
  `father_id` int(20) DEFAULT NULL COMMENT '父级id',
  `pur_standard_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '采购规格',
  `apply_standard_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '申请规格',
  `sell_standard_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '销售规格',
  `is_weight` tinyint(2) DEFAULT NULL COMMENT '是否称重',
  `status` tinyint(2) DEFAULT NULL COMMENT '商品状态',
  `out_dep_id` int(20) DEFAULT NULL COMMENT '出货部门id',
  `alarm_weight` int(10) DEFAULT NULL COMMENT '库存报警重量',
  `quality_period` int(10) DEFAULT NULL COMMENT '保质期天数',
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '零售价',
  `g_sort` int(10) DEFAULT NULL COMMENT '商品排序',
  `pinyin` varchar(30) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '拼音',
  `head_pinyin` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '首字母拼音',
  `stock_pur_standard` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT '0' COMMENT '库存采购规格数量',
  `stock_apply_standard` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT '0' COMMENT '库存申请规格数量',
  `stock_sell_standard` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT '0' COMMENT '库存销售规格数量',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_goods
-- ----------------------------
BEGIN;
INSERT INTO `ck_goods` VALUES (1, 0, '熟食', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (2, 0, '咸菜', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (3, 0, '豆制品', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (4, 0, '凉菜', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (5, 0, '精品牛肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 1, 'jingpinniurou', 'jpnr', '-18.2', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (6, 0, '牛腱子', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 2, 'niujianzi', 'njz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (7, 0, '牛肚', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 3, 'niudu', 'nd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (8, 0, '牛筋', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'niujin', 'nj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (9, 0, '鸡肚', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 5, 'jidu', 'jd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (10, 0, '肚丝', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 6, 'dusi', 'ds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (11, 0, '脆骨', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 7, 'cuigu', 'cg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (12, 0, '猪头肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 8, 'zhutourou', 'ztr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (13, 0, '散头肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 9, 'santourou', 'str', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (14, 0, '猪肝', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 10, 'zhugan', 'zg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (15, 0, '猪蹄散', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 11, 'zhutisan', 'zts', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (16, 0, '猪耳朵', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 12, 'zhuerduo', 'zed', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (17, 0, '猪大肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 13, 'zhudachang', 'zdc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (18, 0, '北京烤鸭', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 14, 'beijingkaoya', 'bjky', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (19, 0, '酱鸭', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 15, 'jiangya', 'jy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (20, 0, '茶鸭', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 16, 'chaya', 'cy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (21, 0, '盐水鸭', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 17, 'yanshuiya', 'ysy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (22, 0, '酸辣鸡爪', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 18, 'suanlajizhua', 'sljz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (23, 0, '虎皮鸡爪', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 19, 'hupijizhua', 'hpjz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (24, 0, '麻辣鸡爪', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 20, 'malajizhua', 'mljz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (25, 0, '酱肘子', 1, '个', '个', '斤', 1, 1, 1, 0, 0, '0.0', 21, 'jiangzhouzi', 'jzz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (26, 0, '四喜丸子', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 22, 'sixiwanzi', 'sxwz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (27, 0, '五香凤爪', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 23, 'wuxiangfengzhua', 'wxfz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (28, 0, '小鸡腿', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 24, 'xiaojitui', 'xjt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (29, 0, '柴鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 25, 'chaiji', 'cj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (30, 0, '扒鸡散', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 26, 'pajisan', 'pjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (31, 0, '童子鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 27, 'tongziji', 'tzj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (32, 0, '五香鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 28, 'wuxiangji', 'wxj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (33, 0, '德州扒鸡', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 29, 'dezhoupaji', 'dzpj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (34, 0, '麻油鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 30, 'mayouji', 'myj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (35, 0, '松仁小肚', 1, '斤', '个', '斤', 1, 1, 1, 0, 0, '0.0', 31, 'songrenxiaodu', 'srxd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (36, 0, '腊肉', 1, '斤', '片', '斤', 1, 1, 1, 0, 0, '0.0', 32, 'larou', 'lr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (37, 0, '腊肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 33, 'lachang', 'lc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (38, 0, '小福贵', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 34, 'xiaofugui', 'xfg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (39, 0, '五香肉肚', 1, '斤', '个', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'wuxiangroudu', 'wxrd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (40, 0, '广式腊肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 36, 'guangshilachang', 'gslc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (41, 0, '荷叶鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 37, 'heyeji', 'hyj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (42, 0, '鳕鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'xueyu', 'xy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (43, 0, '带鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 39, 'daiyu', 'dy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (44, 0, '红头鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 40, 'hongtouyu', 'hty', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (45, 0, '青岛灌肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 41, 'qingdaoguanchang', 'qdgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (46, 0, '米粉肉', 1, '斤', '盘', '斤', 1, 1, 1, 0, 0, '0.0', 42, 'mifenrou', 'mfr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (47, 0, '美式火腿', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 43, 'meishihuotui', 'msht', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (48, 0, '四根蒜肠', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 44, 'sigensuanchang', 'sgsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (49, 0, '京味蒜肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 45, 'jingweisuanchang', 'jwsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (50, 0, '单根蒜肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 46, 'dangensuanchang', 'dgsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (51, 0, '排骨肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 47, 'paiguchang', 'pgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (52, 0, '哈尔滨红肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 48, 'haerbinhongchang', 'hebhc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (53, 0, '精品红肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 49, 'jingpinhongchang', 'jphc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (54, 0, '地方肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 50, 'difangchang', 'dfc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (55, 0, '蛋清肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 51, 'danqingchang', 'dqc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (56, 0, '儿童肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 52, 'ertongchang', 'etc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (57, 0, '风干肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 53, 'fengganchang', 'fgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (58, 0, '丹麦肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 54, 'danmaichang', 'dmc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (59, 0, '手掰肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 55, 'shoubaichang', 'sbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (60, 0, '排骨王', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 56, 'paiguwang', 'pgw', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (61, 0, '茶肠', 1, '根', '根', '斤', 1, 1, 1, 0, 0, '0.0', 57, 'chachang', 'cc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (62, 0, '粉肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 58, 'fenchang', 'fc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (63, 0, '松花鸡腿', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 59, 'songhuajitui', 'shjt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (64, 0, '开花豆', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 60, 'kaihuadou', 'khd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (65, 0, '鹌鹑蛋', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 61, 'anchundan', 'acd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (66, 0, '鲅鱼', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'bayu', 'by', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (67, 0, '皮冻', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 63, 'pidong', 'pd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (68, 0, '口条', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 64, 'koutiao', 'kt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (69, 0, '五香花生', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 65, 'wuxianghuasheng', 'wxhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (70, 0, '芝麻花生', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 66, 'zhimahuasheng', 'zmhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (71, 0, '香辣酥', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 67, 'xianglasu', 'xls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (72, 0, '炸花生', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 68, 'zhahuasheng', 'zhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (73, 0, '酒鬼花生(不辣)', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 69, 'jiuguihuashengbula', 'jghsbl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (74, 0, '酸菜(颗)', 2, '斤', '颗', '斤', 1, 1, 2, 0, 0, '0.0', 1, 'suancai(ke)', 'sc(k)', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (75, 0, '酸菜丝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 2, 'suancaisi', 'scs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (76, 0, '水芥', 2, '斤', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 3, 'shuijie', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (77, 0, '熟芥', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 4, 'shujie', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (78, 0, '鱼酸菜', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 5, 'yusuancai', 'ysc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (79, 0, '菜谱王', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 6, 'caipuwang', 'cpw', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (80, 0, '金针菇(咸菜)', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 7, 'jinzhengu', 'jzg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (81, 0, '酱地环', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 8, 'jiangdihuan', 'jdh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (82, 0, '酱八宝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 9, 'jiangbabao', 'jbb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (83, 0, '下酒菜', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 10, 'xiajiucai', 'xjc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (84, 0, '一品丝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 11, 'yipinsi', 'yps', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (85, 0, '杏鲍菇', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 12, 'xingbaogu', 'xbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (86, 0, '香菜', 2, '斤', '份', '斤', 1, 1, 2, 0, 0, '0.0', 13, 'xiangcai', 'xc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (87, 0, '海白菜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 14, 'haibaicai', 'hbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (88, 0, '黄金椒', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 15, 'huangjinjiao', 'hjj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (89, 0, '酸豆角', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 16, 'suandoujiao', 'sdj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (90, 0, '歪歪丝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 17, 'waiwaisi', 'wws', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (91, 0, '雪里红', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 18, 'xuelihong', 'xlh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (92, 0, '酸白菜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 19, 'suanbaicai', 'sbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (93, 0, '油焖港椒', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 20, 'youmengangjiao', 'ymgj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (94, 0, '五香金丝', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 21, 'wuxiangjinsi', 'wxjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (95, 0, '红油甘露', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 22, 'hongyouganlu', 'hygl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (96, 0, '宫廷黄瓜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 23, 'gongtinghuanggua', 'gthg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (97, 0, '红油绿笋', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 24, 'hongyoulüsun', 'hyls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (98, 0, '湖泊金斯', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 25, 'hubojinsi', 'hbjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (99, 0, '小米椒', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 26, 'xiaomijiao', 'xmj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (100, 0, '五仁酱丁', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 27, 'wurenjiangding', 'wrjd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (101, 0, '麻仁黄瓜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 28, 'marenhuanggua', 'mrhg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (102, 0, '什锦黄瓜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 29, 'shenjinhuanggua', 'sjhg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (103, 0, '白玉糖蒜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 30, 'baiyutangsuan', 'byts', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (104, 0, '腊八蒜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 31, 'labasuan', 'lbs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (105, 0, '油芥丝', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 32, 'youjiesi', 'yjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (106, 0, '玫瑰大头菜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 33, 'meiguidatoucai', 'mgdtc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (107, 0, '红油榨菜丝', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 34, 'hongyouzhacaisi', 'hyzcs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (108, 0, '辣白菜切颗', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 35, 'labaicaiqieke', 'lbcqk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (109, 0, '全形豆角', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 36, 'quanxingdoujiao', 'qxdj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (110, 0, '麻辣海底丝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 37, 'malahaidisi', 'mlhds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (111, 0, '麻辣萝卜干', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 38, 'malaluobugan', 'mllbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (112, 0, '满口香', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 39, 'mankouxiang', 'mkx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (113, 0, '全形榨菜', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 40, 'quanxingzhacai', 'qxzc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (114, 0, '五香风干榨菜', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 41, 'wuxiangfengganzhacai', 'wxfgzc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (115, 0, '油淋笋丝', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 42, 'youlinsunsi', 'ylss', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (116, 0, '酱萝卜', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 43, 'jiangluobu', 'jlb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (117, 0, '杂拌', 2, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 1, 'zaban', 'zb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (118, 0, '麻豆腐', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 2, 'madoufu', 'mdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (119, 0, '干尖', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 3, 'ganjian', 'gj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (120, 0, '辣块', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 4, 'lakuai', 'lk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (121, 0, '辣条', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 5, 'latiao', 'lt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (122, 0, '灌肠', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 6, 'guanchang', 'gc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (123, 0, '豆泡', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 7, 'doupao', 'dp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (124, 0, '川辣干', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 8, 'chuanlagan', 'clg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (125, 0, '香辣丝', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 9, 'xianglasi', 'xls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (126, 0, '素鸡', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 10, 'suji', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (127, 0, '熏油皮', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 11, 'xunyoupi', 'xyp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (128, 0, '熏豆皮', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 12, 'xundoupi', 'xdp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (129, 0, '豆腐丝', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 13, 'doufusi', 'dfs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (130, 0, '素鸡卷', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 14, 'sujijuan', 'sjj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (131, 0, '五香干', 3, '斤', '包', '斤', 1, 1, 2, 0, 0, '0.0', 15, 'wuxianggan', 'wxg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (132, 0, '白豆干', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 16, 'baidougan', 'bdg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (133, 0, '千层丝', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 17, 'qiancengsi', 'qcs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (134, 0, '干油皮', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 18, 'ganyoupi', 'gyp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (135, 0, '宽粉', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 19, 'kuanfen', 'kf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (136, 0, '土豆粉(宽)', 3, '斤', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 20, 'tudoufenkuan', 'tdfk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (137, 0, '千层片', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 21, 'qiancengpian', 'qcp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (138, 0, '盒豆腐', 3, '盒', '盒', '盒', 1, 1, 2, 0, 0, '0.0', 22, 'hedoufu', 'hdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (139, 0, '孜然羊肉', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 23, 'ziranyangrou', 'zryr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (140, 0, '熏干', 3, '袋', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 24, 'xungan', 'xg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (141, 0, '猪血', 3, '斤', '包', '斤', 1, 1, 2, 0, 0, '0.0', 25, 'zhuxue', 'zx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (142, 0, '京酱肉丝', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 26, 'jingjiangrousi', 'jjrs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (143, 0, '千叶豆腐', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 27, 'qianyedoufu', 'qydf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (144, 0, '魔芋丝', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 28, 'moyusi', 'mys', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (145, 0, '鸭血', 3, '盒', '盒', '盒', 1, 1, 2, 0, 0, '0.0', 29, 'yaxue', 'yx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (146, 0, '拉皮', 3, '袋', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 30, 'lapi', 'lp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (147, 0, '魔芋块', 3, '斤', '块', '斤', 1, 1, 2, 0, 0, '0.0', 31, 'moyukuai', 'myk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (148, 0, '魔芋毛肚', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 32, 'moyumaodu', 'mymd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (149, 0, '魔芋黑块', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 33, 'moyuheikuai', 'myhk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (150, 0, '面筋球', 3, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 34, 'mianjinqiu', 'mjq', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (151, 0, '炸三角', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 35, 'zhasanjiao', 'zsj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (152, 0, '豆腐', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 36, 'doufu', 'df', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (153, 0, '脆皮豆腐', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 37, 'cuipidoufu', 'cpdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (154, 0, '白玉内脂豆腐', 3, '斤', '盒', '斤', 1, 1, 2, 0, 0, '0.0', 38, 'baiyuneizhidoufu', 'bynzdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (155, 0, '白玉北豆腐', 3, '斤', '盒', '斤', 1, 1, 2, 0, 0, '0.0', 39, 'baiyubeidoufu', 'bybdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (156, 0, '白玉韧豆腐', 3, '斤', '盒', '斤', 1, 1, 2, 0, 0, '0.0', 40, 'baiyurendoufu', 'byrdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (157, 0, '黄豆', 3, '斤', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 41, 'huangdou', 'hd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (158, 0, '花生米', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 1, 'huashengmi', 'hsm', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (159, 0, '银耳', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 2, 'yiner', 'ye', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (160, 0, '木耳', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 3, 'muer', 'me', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (161, 0, '海带丝', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 4, 'haidaisi', 'hds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (162, 0, '芹菜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 5, 'qincai', 'qc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (163, 0, '藕片', 4, '斤', '袋', '斤', 1, 1, 3, 0, 0, '0.0', 6, 'oupian', 'op', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (164, 0, '面筋', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 7, 'mianjin', 'mj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (165, 0, '油皮', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 8, 'youpi', 'yp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (166, 0, '心里美', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 9, 'xinlimei', 'xlm', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (167, 0, '魔芋丝', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 10, 'moyusi', 'mys', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (168, 0, '白毛肚', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 11, 'baimaodu', 'bmd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (169, 0, '穿心莲', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 12, 'chuanxinlian', 'cxl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (170, 0, '豆角', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 13, 'doujiao', 'dj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (171, 0, '笋尖', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 14, 'sunjian', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (172, 0, '粉皮', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 15, 'fenpi', 'fp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (173, 0, '厥根粉', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 16, 'juegenfen', 'jgf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (174, 0, '腐竹', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 17, 'fuzhu', 'fz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (175, 0, '西兰花', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 18, 'xilanhua', 'xlh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (176, 0, '紫甘蓝', 4, '斤', '个', '斤', 1, 1, 3, 0, 0, '0.0', 19, 'ziganlan', 'zgl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (177, 0, '生菜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 20, 'shengcai', 'sc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (178, 0, '苦菊', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 21, 'kuju', 'kj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (179, 0, '苦瓜', 4, '斤', '根', '斤', 1, 1, 3, 0, 0, '0.0', 22, 'kugua', 'kg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (180, 0, '黄瓜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 23, 'huanggua', 'hg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (181, 0, '黄花菜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 24, 'huanghuacai', 'hhc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (182, 0, '黄毛肚', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 25, 'huangmaodu', 'hmd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (183, 0, '厥菜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 26, 'juecai', 'jc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (184, 0, '龙须菜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 27, 'longxucai', 'lxc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (185, 0, '洋葱', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 28, 'yangcong', 'yc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (186, 0, '小蘑菇', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 29, 'xiaomogu', 'xmg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (187, 0, '金针菇(凉菜)', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 30, 'jinzhengu', 'jzg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (188, 0, '小白菇', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 31, 'xiaobaigu', 'xbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (189, 0, '胡萝卜', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 32, 'huluobu', 'hlb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (190, 0, '土豆丝', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 33, 'tudousi', 'tds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (191, 0, '料水', 4, '件', '袋', '斤', 1, 1, 3, 0, 0, '0.0', 34, 'liaoshui', 'ls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (192, 0, '酱料', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 35, 'jiangliao', 'jl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (193, 0, '鲅鱼汁', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'bayuzhi', 'byz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (194, 0, '老汤', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'laotang', 'lt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (195, 0, '大蒜', 1, '斤', '份', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'dasuan', 'ds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (196, 0, '厥根粉料水', 1, '袋', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'juegenfenliaoshui', 'jgfls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (197, 0, '豆皮', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 12, 'doupi', 'dp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (198, 0, '半片盐水鸭', 1, '斤', '片', '斤', 1, 1, 1, 0, 0, '0.0', 17, 'banpianyanshuiya', 'bpysy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (199, 0, '土豆粉(细)', 3, '斤', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 20, 'tudoufenxi', 'tdfx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (200, 0, '啤酒火腿', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'pijiuhuotui', 'pjht', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (201, 0, '盘肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'panchang', 'pc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (202, 0, '牙签肉', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'yaqianrou', 'yqr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (203, 0, '干银耳', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 31, 'ganyiner', 'gye', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (204, 0, '干腐竹', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 31, 'ganfuzhu', 'gfz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (205, 0, '酒鬼花生', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 68, 'jiuguihuasheng', 'jghs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (206, 0, '干木耳', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 31, 'ganmuer', 'gme', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (207, 0, '干厥根粉', 4, '斤', '斤', '斤', 1, 1, 3, 0, 0, '0.0', 31, 'ganjuegenfen', 'gjgf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (208, 0, '辣白菜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 35, 'labaicai', 'lbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (209, 0, '猪蹄', 1, '袋', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 11, 'zhuti', 'zt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (210, 0, '黑粉肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 58, 'heifenchang', 'hfc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (211, 0, '鳕鱼条', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'xueyutiao', 'xyt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (212, 0, '买一送一广式香肠', 1, '袋', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'maiyisongyiguangshixiangchang', 'mysygsxc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (213, 0, '猪皮', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 10, 'zhupi', 'zp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (214, 0, '酸辣萝卜条', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 5, 'suanlaluobotiao', 'sllbt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (215, 0, '河虾', 1, '袋', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 40, 'hexia', 'hx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (216, 0, '青岛火腿', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 41, 'qingdaohuotui', 'qdht', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (217, 0, '草原鸭血', 3, '盒', '盒', '盒', 1, 1, 2, 0, 0, '0.0', 29, 'caoyuanyaxue', 'cyyx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (218, 0, '干粉皮', 4, '袋', '袋', '斤', 1, 1, 3, 0, 0, '0.0', 15, 'ganfenpi', 'gfp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (219, 0, '牛肝', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'niugan', 'ng', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (220, 0, '羊杂', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'yangza', 'yz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (221, 0, '麻辣肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'malachang', 'mlc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (222, 0, '香甜脆瓜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 33, 'xiangtiancuigua', 'xtcg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (223, 0, '百味鲜', 2, '箱', '箱', '斤', 1, 1, 2, 0, 0, '0.0', 33, 'baiweixian', 'bwx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (224, 0, '熏豆干', 3, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 16, 'xundougan', 'xdg', '0.0', '0.0', '0.0');
COMMIT;

-- ----------------------------
-- Table structure for ck_in_bill
-- ----------------------------
DROP TABLE IF EXISTS `ck_in_bill`;
CREATE TABLE `ck_in_bill` (
  `in_bill_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '入库单据id',
  `in_supplier_id` int(10) DEFAULT NULL COMMENT '入库供货商id',
  `in_datetime` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '入库时间',
  `in_dep_id` int(20) DEFAULT NULL COMMENT '入库部门id',
  `in_user_id` int(20) DEFAULT NULL COMMENT '入库操作员id',
  `is_pay` tinyint(2) DEFAULT NULL COMMENT '是否支付',
  `pay_mode` tinyint(2) DEFAULT NULL COMMENT '支付方式：“1:现金”，“2, 记账”“3，微信”',
  PRIMARY KEY (`in_bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

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
INSERT INTO `ck_in_bill` VALUES (9, -1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (10, -1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (11, -1, NULL, 1, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (12, -1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_in_bill` VALUES (13, -1, NULL, NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

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
INSERT INTO `ck_in_sub_bill` VALUES (12, 9, 84, 100.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (13, 10, 84, 9.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (14, 11, 84, 100.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (15, 12, 2, 900.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (16, 12, 24, 10.00, NULL, NULL);
INSERT INTO `ck_in_sub_bill` VALUES (17, 13, 2, 9.00, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_line
-- ----------------------------
DROP TABLE IF EXISTS `ck_line`;
CREATE TABLE `ck_line` (
  `line_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '线路id',
  `line_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '线路名称',
  `origin_point` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '始发地',
  PRIMARY KEY (`line_id`),
  KEY `line_id` (`line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_line
-- ----------------------------
BEGIN;
INSERT INTO `ck_line` VALUES (1, '测试线路1', NULL);
INSERT INTO `ck_line` VALUES (2, '测试线路2', NULL);
INSERT INTO `ck_line` VALUES (3, 'kkk', NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

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
INSERT INTO `ck_line_store` VALUES (14, 3, 11, 1);
COMMIT;

-- ----------------------------
-- Table structure for ck_stock_record
-- ----------------------------
DROP TABLE IF EXISTS `ck_stock_record`;
CREATE TABLE `ck_stock_record` (
  `stock_record_id` int(20) NOT NULL AUTO_INCREMENT,
  `st_apply_id` int(20) DEFAULT NULL COMMENT '申请id',
  `quantity` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '出库数量',
  `out_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '出库时间',
  `pick_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '拣货人员',
  `check_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '检查人员',
  `enter_user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '录入人员',
  `in_out_type` tinyint(2) DEFAULT NULL COMMENT '出库类型“1，入库； 2:出库”',
  `out_dep_id` int(20) DEFAULT NULL COMMENT '出库部门id',
  `st_goods_id` int(20) DEFAULT NULL COMMENT '商品id',
  `in_store_id` int(20) DEFAULT NULL COMMENT '申请店铺id',
  `delivery_status` tinyint(2) DEFAULT NULL COMMENT '出库状态',
  `discount_price` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '出货单价',
  `is_discount` tinyint(2) DEFAULT NULL COMMENT '是否打折',
  PRIMARY KEY (`stock_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_stock_record
-- ----------------------------
BEGIN;
INSERT INTO `ck_stock_record` VALUES (1, 3, '2.5', NULL, NULL, NULL, NULL, 0, 1, 2, 2, 0, '45', NULL);
INSERT INTO `ck_stock_record` VALUES (2, 1, '3', NULL, NULL, NULL, NULL, 0, 1, 2, 1, 0, '45', NULL);
INSERT INTO `ck_stock_record` VALUES (3, 4, '4', NULL, NULL, NULL, NULL, 0, 1, 84, 2, 0, '40.00', NULL);
INSERT INTO `ck_stock_record` VALUES (4, 2, '4.5', NULL, NULL, NULL, NULL, 0, 1, 84, 1, 0, '40.00', NULL);
INSERT INTO `ck_stock_record` VALUES (5, 310, '3.2', NULL, NULL, NULL, NULL, 0, 1, 5, 1, 0, '0.0', NULL);
INSERT INTO `ck_stock_record` VALUES (6, 318, '11', NULL, NULL, NULL, NULL, 0, 1, 5, 1, 0, '0.0', NULL);
INSERT INTO `ck_stock_record` VALUES (7, 319, '4', NULL, NULL, NULL, NULL, 0, 1, 5, 1, 0, '0.0', NULL);
COMMIT;

-- ----------------------------
-- Table structure for ck_store
-- ----------------------------
DROP TABLE IF EXISTS `ck_store`;
CREATE TABLE `ck_store` (
  `store_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '店铺Id',
  `store_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '详细地址',
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '手机号码',
  `lat` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '横坐标',
  `lun` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '纵坐标',
  `district` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '区域',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '城市',
  `wx_nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `wx_openId` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信id',
  `wx_avatar_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信头像',
  `wx_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '微信号码',
  `print_label` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '打印名称',
  `out_label` varchar(30) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL COMMENT '对外名称',
  `join_line` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci COMMENT='零售终端';

-- ----------------------------
-- Records of ck_store
-- ----------------------------
BEGIN;
INSERT INTO `ck_store` VALUES (1, '庞各庄华联超市', '庞各庄', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIH9Tibwka8Z2xH4tU8xhW0f6hXs7ib8aAswStBUoiaPibVVq5icnNBJzbaSMgzbNGcwQe1ib2uVW7d8Byw/132', 'eyeseejoy', '庞各庄', '10号店', 1);
INSERT INTO `ck_store` VALUES (2, '鲜汇', '啊啊啊啊啊', '2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '鲜汇', '燕郊2店', 1);
INSERT INTO `ck_store` VALUES (3, '天丰利', '阿凡达说法是否打算发', '3', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '天丰利', '北京1店', 1);
INSERT INTO `ck_store` VALUES (4, '金鱼池熟食', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '金鱼池', '北京2店', 1);
INSERT INTO `ck_store` VALUES (5, '王贵菊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '王贵菊', '北京1店', 1);
INSERT INTO `ck_store` VALUES (6, '天通苑华联（李金库）', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '天通苑', '北京2店', 1);
INSERT INTO `ck_store` VALUES (7, '良乡家家福', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '良乡', '北京3店', 1);
INSERT INTO `ck_store` VALUES (8, '快乐一生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '快乐一生', '北京4店', 1);
INSERT INTO `ck_store` VALUES (9, '房山', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '房山', '北京5店', 1);
INSERT INTO `ck_store` VALUES (10, '窦店华联', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '窦店', '北京6店', 1);
INSERT INTO `ck_store` VALUES (11, '家和万事兴', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '家和万事兴', '北京7店', 0);
INSERT INTO `ck_store` VALUES (12, '我们不一样', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '我们不一样', '北京8店', 1);
INSERT INTO `ck_store` VALUES (13, '二拨子(时空缘)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '二拨子', '北京9店', 1);
INSERT INTO `ck_store` VALUES (15, '昌平超市发豆腐坊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '昌平超市发豆腐坊', '北京10店', 0);
INSERT INTO `ck_store` VALUES (16, '北七家', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '北七家', '北京11店', 0);
INSERT INTO `ck_store` VALUES (17, '丽文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '丽文', '北京12店', 1);
INSERT INTO `ck_store` VALUES (18, '通州超市发', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '通州超市发', '北京13店', 0);
INSERT INTO `ck_store` VALUES (19, '每天好心情', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '每天好心情', '北京14店', 0);
INSERT INTO `ck_store` VALUES (20, '云岗(张万涛)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '云岗', '北京15店', 0);
INSERT INTO `ck_store` VALUES (21, 'dddd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'f', NULL);
INSERT INTO `ck_store` VALUES (22, 'bbbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_store` VALUES (23, 'qqq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

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
  `ck_user_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  `ck_password` varchar(10) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
  `user_dep_id` int(11) DEFAULT NULL,
  `user_status` tinyint(2) DEFAULT NULL,
  `u_create_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_czech_ci DEFAULT NULL,
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
INSERT INTO `sys_menu` VALUES (41, 40, '员工', 'ckUser', 'ckuser:list, ckuser:info, ckuser:save, ckuser:update, ckuser:delete', 1, NULL, 7);
INSERT INTO `sys_menu` VALUES (42, 40, '硬件设备', '/printer', NULL, 1, NULL, 8);
INSERT INTO `sys_menu` VALUES (51, 37, '集团销售', '/groupSales', NULL, 1, NULL, 0);
INSERT INTO `sys_menu` VALUES (52, 0, '店铺', NULL, NULL, 0, 'fa fa-cog', 0);
INSERT INTO `sys_menu` VALUES (53, 0, '供货商', NULL, NULL, 0, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (56, 52, '经营数据', 'businessData', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (57, 52, '成本控制', 'costControl', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (62, 53, '供货商列表', 'cksupplier/cksupplier.html', 'cksupplier:list, cksupplier:info, cksupplier:save, cksupplier:update, cksupplier:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (63, 40, '店铺', 'storeList', 'ckstore:list, ckstore:info, ckstore:save, ckstore:update, ckstore:delete', 1, 'fa fa-cog', 3);
INSERT INTO `sys_menu` VALUES (64, 40, '送货路线', 'ckLine', 'ckline:list, ckline:info, ckline:save, ckline:update, ckline:delete', 1, 'fa fa-cog', 6);
INSERT INTO `sys_menu` VALUES (65, 40, '商品', 'goods', 'ckgoods:list, ckgoods:info, ckgoods:save, ckgoods:update, ckgoods:delete', 1, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (66, 40, '出货部门', 'outDep', 'ckdep:list, ckdep:info, ckdep:save, ckdep:update, ckdep:delete', 1, NULL, 5);
INSERT INTO `sys_menu` VALUES (67, 65, 'btn1', NULL, 'ckgoods:save', 2, NULL, 0);
INSERT INTO `sys_menu` VALUES (69, 0, '商品管理', NULL, '', 0, 'fa fa-cog', 1);
INSERT INTO `sys_menu` VALUES (71, 69, '产品', 'products', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa', 2);
INSERT INTO `sys_menu` VALUES (72, 69, '采购分析', '/purchase/anlysise', NULL, 1, 'fa', 4);
INSERT INTO `sys_menu` VALUES (73, 52, '销售分析', 'ckStore', NULL, 1, 'fa fa-user', 2);
INSERT INTO `sys_menu` VALUES (74, 69, '采购计划', 'plan', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa', 3);
INSERT INTO `sys_menu` VALUES (75, 69, '原料', 'rawMaterial', 'ckinbill:list, ckinbill:info, ckinbill:save, ckinbill:update, ckinbill:delete', 1, 'fa', 2);
INSERT INTO `sys_menu` VALUES (76, 29, '拣货单录入', 'enterOutStock', 'ckstockrecord:list, ckstockrecord:info, ckstockrecord:save, ckstockrecord:update, ckapplys:delete', 1, NULL, 2);
INSERT INTO `sys_menu` VALUES (77, 52, '今日出货', 'order', NULL, 1, 'fa fa-user', 1);
INSERT INTO `sys_menu` VALUES (78, 52, '今日订货', 'replaceOrder', NULL, 1, 'fa fa-user', 0);
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
