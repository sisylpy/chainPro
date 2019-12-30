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

 Date: 13/12/2019 19:17:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- ----------------------------
-- Records of ck_goods
-- ----------------------------
BEGIN;
INSERT INTO `ck_goods` VALUES (1, 0, '熟食', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (2, 0, '咸菜', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (3, 0, '豆制品', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (4, 0, '凉菜', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ck_goods` VALUES (5, 0, '精品牛肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 1, 'jingpinniurou', 'jpnr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (6, 0, '牛腱子', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 2, 'niujianzi', 'njz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (7, 0, '牛肚', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 3, 'niudu', 'nd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (8, 0, '牛筋', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'niujin', 'nj', '0.0', '0.0', '0.0');
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
INSERT INTO `ck_goods` VALUES (25, 0, '酱肘子', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 21, 'jiangzhouzi', 'jzz', '0.0', '0.0', '0.0');
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
INSERT INTO `ck_goods` VALUES (36, 0, '腊肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 32, 'larou', 'lr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (37, 0, '腊肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 33, 'lachang', 'lc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (38, 0, '小福贵', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 34, 'xiaofugui', 'xfg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (39, 0, '五香肉肚', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'wuxiangroudu', 'wxrd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (40, 0, '广式腊肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 36, 'guangshilachang', 'gslc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (41, 0, '荷叶鸡', 1, '斤', '只', '斤', 1, 1, 1, 0, 0, '0.0', 37, 'heyeji', 'hyj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (42, 0, '鳕鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'xueyu', 'xy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (43, 0, '带鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 39, 'daiyu', 'dy', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (44, 0, '红头鱼', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 40, 'hongtouyu', 'hty', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (45, 0, '青岛灌肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 41, 'qingdaoguanchang', 'qdgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (46, 0, '米粉肉', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 42, 'mifenrou', 'mfr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (47, 0, '美式火腿', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 43, 'meishihuotui', 'msht', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (48, 0, '四根蒜肠', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 44, 'sigensuanchang', 'sgsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (49, 0, '京味蒜肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 45, 'jingweisuanchang', 'jwsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (50, 0, '单根蒜肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 46, 'dangensuanchang', 'dgsc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (51, 0, '排骨肠', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 47, 'paiguchang', 'pgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (52, 0, '哈尔滨红肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 48, 'haerbinhongchang', 'hebhc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (53, 0, '精品红肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 49, 'jingpinhongchang', 'jphc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (54, 0, '地方肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 50, 'difangchang', 'dfc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (55, 0, '蛋清肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 51, 'danqingchang', 'dqc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (56, 0, '儿童肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 52, 'ertongchang', 'etc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (57, 0, '风干肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 53, 'fengganchang', 'fgc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (58, 0, '丹麦肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 54, 'danmaichang', 'dmc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (59, 0, '手掰肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 55, 'shoubaichang', 'sbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (60, 0, '排骨王', 1, '斤', '根', '斤', 1, 1, 1, 0, 0, '0.0', 56, 'paiguwang', 'pgw', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (61, 0, '茶肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 57, 'chachang', 'cc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (62, 0, '粉肠', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 58, 'fenchang', 'fc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (63, 0, '松花鸡腿', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 59, 'songhuajitui', 'shjt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (64, 0, '开花豆', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 60, 'kaihuadou', 'khd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (65, 0, '鹌鹑蛋', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 61, 'anchundan', 'acd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (66, 0, '鲅鱼', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'bayu', 'by', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (67, 0, '皮冻', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 63, 'pidong', 'pd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (68, 0, '口条', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 64, 'koutiao', 'kt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (69, 0, '五香花生', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 65, 'wuxianghuasheng', 'wxhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (70, 0, '芝麻花生', 1, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 66, 'zhimahuasheng', 'zmhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (71, 0, '香辣酥', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 67, 'xianglasu', 'xls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (72, 0, '炸花生', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 68, 'zhahuasheng', 'zhs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (73, 0, '酒鬼花生', 1, '斤', '袋', '斤', 1, 1, 1, 0, 0, '0.0', 69, 'jiuguihuasheng', 'jghs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (74, 0, '酸菜(颗)', 2, '斤', '颗', '斤', 1, 1, 1, 0, 0, '0.0', 1, 'suancai(ke)', 'sc(k)', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (75, 0, '酸菜丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 2, 'suancaisi', 'scs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (76, 0, '水芥', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 3, 'shuijie', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (77, 0, '熟芥', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'shujie', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (78, 0, '鱼酸菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 5, 'yusuancai', 'ysc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (79, 0, '菜谱王', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 6, 'caipuwang', 'cpw', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (80, 0, '金针菇', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 7, 'jinzhengu', 'jzg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (81, 0, '酱地环', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 8, 'jiangdihuan', 'jdh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (82, 0, '酱八宝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 9, 'jiangbabao', 'jbb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (83, 0, '下酒菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 10, 'xiajiucai', 'xjc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (84, 0, '一品丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 11, 'yipinsi', 'yps', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (85, 0, '杏鲍菇', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 12, 'xingbaogu', 'xbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (86, 0, '紫香菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 13, 'zixiangcai', 'zxc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (87, 0, '海白菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 14, 'haibaicai', 'hbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (88, 0, '黄金椒', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 15, 'huangjinjiao', 'hjj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (89, 0, '酸豆角', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 16, 'suandoujiao', 'sdj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (90, 0, '歪歪丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 17, 'waiwaisi', 'wws', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (91, 0, '雪里红', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 18, 'xuelihong', 'xlh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (92, 0, '酸白菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 19, 'suanbaicai', 'sbc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (93, 0, '油焖港椒', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 20, 'youmengangjiao', 'ymgj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (94, 0, '五香金丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 21, 'wuxiangjinsi', 'wxjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (95, 0, '红油甘露', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 22, 'hongyouganlu', 'hygl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (96, 0, '宫廷黄瓜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 23, 'gongtinghuanggua', 'gthg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (97, 0, '红油绿笋', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 24, 'hongyoulüsun', 'hyls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (98, 0, '湖泊金斯', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 25, 'hubojinsi', 'hbjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (99, 0, '小米椒', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 26, 'xiaomijiao', 'xmj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (100, 0, '五仁酱丁', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 27, 'wurenjiangding', 'wrjd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (101, 0, '麻仁黄瓜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 28, 'marenhuanggua', 'mrhg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (102, 0, '什锦黄瓜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 29, 'shenjinhuanggua', 'sjhg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (103, 0, '白玉糖酸', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 30, 'baiyutangsuan', 'byts', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (104, 0, '腊八蒜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 31, 'labasuan', 'lbs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (105, 0, '油芥丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 32, 'youjiesi', 'yjs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (106, 0, '玫瑰大头菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 33, 'meiguidatoucai', 'mgdtc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (107, 0, '红油榨菜丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 34, 'hongyouzhacaisi', 'hyzcs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (108, 0, '辣白菜切颗', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'labaicaiqieke', 'lbcqk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (109, 0, '全形豆角', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 36, 'quanxingdoujiao', 'qxdj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (110, 0, '麻辣海底丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 37, 'malahaidisi', 'mlhds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (111, 0, '麻辣萝卜干', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'malaluobugan', 'mllbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (112, 0, '满口香', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 39, 'mankouxiang', 'mkx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (113, 0, '全形榨菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 40, 'quanxingzhacai', 'qxzc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (114, 0, '五香风干榨菜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 41, 'wuxiangfengganzhacai', 'wxfgzc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (115, 0, '油淋笋丝', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 42, 'youlinsunsi', 'ylss', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (116, 0, '酱萝卜', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 43, 'jiangluobu', 'jlb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (117, 0, '杂拌', 2, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 1, 'zaban', 'zb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (118, 0, '麻豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 2, 'madoufu', 'mdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (119, 0, '干尖', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 3, 'ganjian', 'gj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (120, 0, '辣块', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 4, 'lakuai', 'lk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (121, 0, '辣条', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 5, 'latiao', 'lt', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (122, 0, '灌肠', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 6, 'guanchang', 'gc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (123, 0, '豆泡', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 7, 'doupao', 'dp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (124, 0, '川辣干', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 8, 'chuanlagan', 'clg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (125, 0, '香辣丝', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 9, 'xianglasi', 'xls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (126, 0, '素鸡', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 10, 'suji', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (127, 0, '熏油皮', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 11, 'xunyoupi', 'xyp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (128, 0, '熏豆皮', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 12, 'xundoupi', 'xdp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (129, 0, '豆腐丝', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 13, 'doufusi', 'dfs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (130, 0, '素鸡卷', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 14, 'sujijuan', 'sjj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (131, 0, '五香干', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 15, 'wuxianggan', 'wxg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (132, 0, '白豆干', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 16, 'baidougan', 'bdg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (133, 0, '千层丝', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 17, 'qiancengsi', 'qcs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (134, 0, '干油皮', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 18, 'ganyoupi', 'gyp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (135, 0, '宽粉', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 19, 'kuanfen', 'kf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (136, 0, '土豆粉', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 20, 'tudoufen', 'tdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (137, 0, '千层片', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 21, 'qiancengpian', 'qcp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (138, 0, '盒豆腐', 3, '盒', '盒', '盒', 1, 1, 1, 0, 0, '0.0', 22, 'hedoufu', 'hdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (139, 0, '孜然羊肉', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 23, 'ziranyangrou', 'zryr', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (140, 0, '香香熏干', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 24, 'xiangxiangxungan', 'xxxg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (141, 0, '猪血', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 25, 'zhuxue', 'zx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (142, 0, '京酱肉丝', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 26, 'jingjiangrousi', 'jjrs', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (143, 0, '千叶豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 27, 'qianyedoufu', 'qydf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (144, 0, '魔芋丝', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 28, 'moyusi', 'mys', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (145, 0, '鸭血', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 29, 'yaxue', 'yx', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (146, 0, '拉皮', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 30, 'lapi', 'lp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (147, 0, '魔芋块', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 31, 'moyukuai', 'myk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (148, 0, '魔芋毛肚', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 32, 'moyumaodu', 'mymd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (149, 0, '魔芋黑块', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 33, 'moyuheikuai', 'myhk', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (150, 0, '面筋球', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 34, 'mianjinqiu', 'mjq', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (151, 0, '炸三角', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 35, 'zhasanjiao', 'zsj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (152, 0, '豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 36, 'doufu', 'df', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (153, 0, '脆皮豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 37, 'cuipidoufu', 'cpdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (154, 0, '白玉内脂', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 38, 'baiyuneizhi', 'bynz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (155, 0, '白玉北豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 39, 'baiyubeidoufu', 'bybdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (156, 0, '白玉韧豆腐', 3, '斤', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 40, 'baiyurendoufu', 'byrdf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (157, 0, '黄豆', 3, '袋', '斤', '斤', 1, 1, 1, 0, 0, '0.0', 41, 'huangdou', 'hd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (158, 0, '花生米', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 1, 'huashengmi', 'hsm', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (159, 0, '银耳', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 2, 'yiner', 'ye', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (160, 0, '木耳', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 3, 'muer', 'me', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (161, 0, '海带丝', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 4, 'haidaisi', 'hds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (162, 0, '芹菜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 5, 'qincai', 'qc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (163, 0, '藕片', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 6, 'oupian', 'op', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (164, 0, '面筋', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 7, 'mianjin', 'mj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (165, 0, '油皮', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 8, 'youpi', 'yp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (166, 0, '心里美', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 9, 'xinlimei', 'xlm', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (167, 0, '魔芋丝', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 10, 'moyusi', 'mys', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (168, 0, '白毛肚', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 11, 'baimaodu', 'bmd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (169, 0, '穿心莲', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 12, 'chuanxinlian', 'cxl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (170, 0, '豆角', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 13, 'doujiao', 'dj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (171, 0, '笋尖', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 14, 'sunjian', 'sj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (172, 0, '粉皮', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 15, 'fenpi', 'fp', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (173, 0, '厥根粉', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 16, 'juegenfen', 'jgf', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (174, 0, '腐竹', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 17, 'fuzhu', 'fz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (175, 0, '西兰花', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 18, 'xilanhua', 'xlh', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (176, 0, '紫甘蓝', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 19, 'ziganlan', 'zgl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (177, 0, '生菜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 20, 'shengcai', 'sc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (178, 0, '苦苣', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 21, 'kuju', 'kj', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (179, 0, '苦瓜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 22, 'kugua', 'kg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (180, 0, '黄瓜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 23, 'huanggua', 'hg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (181, 0, '黄花菜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 24, 'huanghuacai', 'hhc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (182, 0, '黄毛肚', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 25, 'huangmaodu', 'hmd', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (183, 0, '厥菜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 26, 'juecai', 'jc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (184, 0, '龙须菜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 27, 'longxucai', 'lxc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (185, 0, '洋葱', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 28, 'yangcong', 'yc', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (186, 0, '小蘑菇', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 29, 'xiaomogu', 'xmg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (187, 0, '金针菇', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 30, 'jinzhengu', 'jzg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (188, 0, '小白菇', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 31, 'xiaobaigu', 'xbg', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (189, 0, '胡萝卜', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 32, 'huluobu', 'hlb', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (190, 0, '土豆丝', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 33, 'tudousi', 'tds', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (191, 0, '料水', 4, '件', '袋', '斤', 1, 1, 2, 0, 0, '0.0', 34, 'liaoshui', 'ls', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (192, 0, '酱料', 4, '斤', '斤', '斤', 1, 1, 2, 0, 0, '0.0', 35, 'jiangliao', 'jl', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (193, 0, '鲅鱼汁', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'bayuzhi', 'byz', '0.0', '0.0', '0.0');
INSERT INTO `ck_goods` VALUES (194, 0, '老汤', 1, '斤', '包', '斤', 1, 1, 1, 0, 0, '0.0', 62, 'laotang', 'lt', '0.0', '0.0', '0.0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
