/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50740 (5.7.40)
 Source Host           : localhost:3306
 Source Schema         : springboot-vue

 Target Server Type    : MySQL
 Target Server Version : 50740 (5.7.40)
 File Encoding         : 65001

 Date: 14/06/2023 22:29:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (5, '人类简史', 45.99, '尤瓦尔·赫拉利', '历史', '中文', '中信出版社', '2015-8-1', '十万年前，我们的祖先还是一些乱跑、乱吃东西的猴子，到底是什么事件让人类强势崛起，主宰整个地球？’');
INSERT INTO `book` VALUES (6, '百年孤独', 28.99, '加西亚·马尔克斯', '小说', '中文', '作家出版社', '2011-7-1', '这个世界从来没有什么永恒的东西，只有转瞬即逝的时光，铭刻在我们灵魂深处的记忆将会是你永恒用力又绝望回望的寻找。');
INSERT INTO `book` VALUES (7, '三体', 46.99, '刘慈欣', '科幻', '中文', '重庆出版社', '2008-1-1', '在遥远的未来，地球文明何去何从？若真有外星文明，人类是否曾感知？人类命运究竟操纵在谁手中？');
INSERT INTO `book` VALUES (8, '平凡的世界', 36.99, '路遥', '小说', '中文', '人民文学出版社', '2017-9-1', '这是一个发生在乡村的故事，故事中的主人公叫做孙少安，讲述了他同样平凡的成长历程。');
INSERT INTO `book` VALUES (9, '围城', 32.99, '钱钟书', '小说', '中文', '人民文学出版社', '2014-3-1', '一个有素养的人在错误的时间，错误的地点，面对错误的人，所做出的错误的妥协，就是对人生最大的浪费。');
INSERT INTO `book` VALUES (10, '水浒传', 28.99, '施耐庵', '小说', '中文', '人民文学出版社', '2016-4-1', '《水浒传》是元末明初的长篇小说之一，以宋江起义为历史背景。小说刻画了宋江等梁山好汉的形象，塑造了一批忠勇义烈的人物，成为中国文学史上不朽的经典之作。');
INSERT INTO `book` VALUES (11, '笑傲江湖', 42.99, '金庸', '武侠', '中文', '生活·读书·新知三联书店', '2013-4-1', '《笑傲江湖》是金庸先生的四大武侠小说之一，更是他的代表作之一，以武林争霸为故事的主线，以尉迟老怪物般的武林人士为引子，讲述了人在江湖颠沛流离，披荆斩棘的故事。');
INSERT INTO `book` VALUES (12, '活着', 24.99, '余华', '小说', '中文', '作家出版社', '2012-3-1', '《活着》是余华的小说之一，讲述了在历史的洪流中，一个在的草根小人物爱国富庶、家破人亡、痛苦失落，最终走向佛门的一生。');
INSERT INTO `book` VALUES (13, '红楼梦', 49.99, '曹雪芹', '小说', '中文', '人民文学出版社', '2016-8-1', '《红楼梦》是中国古典小说的巅峰之作，是中国古代章回体长篇小说的代表作，描绘了贾宝玉、林黛玉、薛宝钗等人的一生波折，同时展现了封建末期贵族社会的昏暗黑暗。');
INSERT INTO `book` VALUES (14, '围城', 32.99, '钱钟书', '小说', '中文', '人民文学出版社', '2014-3-1', '一个有素养的人在错误的时间，错误的地点，面对错误的人，所做出的错误的妥协，就是对人生最大的浪费。');
INSERT INTO `book` VALUES (15, '聊斋志异', 18.99, '蒲松龄', '小说', '中文', '人民文学出版社', '2010-12-1', '《聊斋志异》是清朝伟大的小说家蒲松龄创作的短篇小说，主要描写晚清时期的超自然现象、魔幻故事、神怪传说，并以此反映社会现实。');
INSERT INTO `book` VALUES (16, '呼啸山庄', 29.99, '艾米莉·勃朗特', '小说', '中文', '南海出版公司', '2009-2-1', '这是一篇充满爱与仇的故事，讲的是一个深爱着个人却无法在一起的男女之间所发生的一系列仇恨。');
INSERT INTO `book` VALUES (17, '活着', 24.99, '余华', '小说', '中文', '作家出版社', '2012-3-1', '《活着》是余华的小说之一，讲述了在历史的洪流中，一个在的草根小人物爱国富庶、家破人亡、痛苦失落，最终走向佛门的一生。');
INSERT INTO `book` VALUES (18, '傲慢与偏见', 26.99, '简·奥斯汀', '小说', '中文', '中信出版社', '2010-6-1', '这是一部描写爱情与婚姻的小说，小说揭示了人性中的傲慢、偏见、虚伪等负面情感，它展示了英国乡绅生活的风貌。');
INSERT INTO `book` VALUES (19, '花田错', 38.99, '张爱玲', '小说', '中文', '上海译文出版社', '2001-5-1', '《花田错》是张爱玲的代表作之一，小说中表达了张爱玲对时代的感叹，对爱情的执着和追求。');
INSERT INTO `book` VALUES (20, '海底两万里', 44.99, '儒勒·凡尔纳', '小说', '中文', '江苏凤凰文艺出版社', '2016-6-1', '《海底两万里》是儒勒·凡尔纳的代表作之一，讲述了三个人在海底旅行的经历，充满了科幻和想象。');
INSERT INTO `book` VALUES (21, '霍乱时期的爱情', 35.99, '加西亚·马尔克斯', '小说', '中文', '南海出版公司', '2008-6-1', '《霍乱时期的爱情》是哥伦比亚文学作家马尔克斯的代表作之一，讲述了一段让人扣人心弦的爱情故事。');
INSERT INTO `book` VALUES (22, '月亮与六便士', 33.99, '毛姆', '小说', '中文', '译林出版社', '2010-8-1', '《月亮和六便士》是英国小说家毛姆的代表作之一，讲述了哲学家洛克与画家古内西亚之间的故事，引人深思。');
INSERT INTO `book` VALUES (23, '人类简史', 45.99, '尤瓦尔·赫拉利', '历史', '中文', '中信出版社', '2015-8-1', '十万年前，我们的祖先还是一些乱跑、乱吃东西的猴子，到底是什么事件让人类强势崛起，主宰整个地球？’');
INSERT INTO `book` VALUES (24, '百年孤独', 28.99, '加西亚·马尔克斯', '小说', '中文', '作家出版社', '2011-7-1', '这个世界从来没有什么永恒的东西，只有转瞬即逝的时光，铭刻在我们灵魂深处的记忆将会是你永恒用力又绝望回望的寻找。');
INSERT INTO `book` VALUES (25, '三体', 46.99, '刘慈欣', '科幻', '中文', '重庆出版社', '2008-1-1', '在遥远的未来，地球文明何去何从？若真有外星文明，人类是否曾感知？人类命运究竟操纵在谁手中？');
INSERT INTO `book` VALUES (26, '平凡的世界', 36.99, '路遥', '小说', '中文', '人民文学出版社', '2017-9-1', '这是一个发生在乡村的故事，故事中的主人公叫做孙少安，讲述了他同样平凡的成长历程。');
INSERT INTO `book` VALUES (27, '围城', 32.99, '钱钟书', '小说', '中文', '人民文学出版社', '2014-3-1', '一个有素养的人在错误的时间，错误的地点，面对错误的人，所做出的错误的妥协，就是对人生最大的浪费。');
INSERT INTO `book` VALUES (28, '水浒传', 28.99, '施耐庵', '小说', '中文', '人民文学出版社', '2016-4-1', '《水浒传》是元末明初的长篇小说之一，以宋江起义为历史背景。小说刻画了宋江等梁山好汉的形象，塑造了一批忠勇义烈的人物，成为中国文学史上不朽的经典之作。');
INSERT INTO `book` VALUES (29, '笑傲江湖', 42.99, '金庸', '武侠', '中文', '生活·读书·新知三联书店', '2013-4-1', '《笑傲江湖》是金庸先生的四大武侠小说之一，更是他的代表作之一，以武林争霸为故事的主线，以尉迟老怪物般的武林人士为引子，讲述了人在江湖颠沛流离，披荆斩棘的故事。');
INSERT INTO `book` VALUES (30, '活着', 24.99, '余华', '小说', '中文', '作家出版社', '2012-3-1', '《活着》是余华的小说之一，讲述了在历史的洪流中，一个在的草根小人物爱国富庶、家破人亡、痛苦失落，最终走向佛门的一生。');
INSERT INTO `book` VALUES (31, '红楼梦', 49.99, '曹雪芹', '小说', '中文', '人民文学出版社', '2016-8-1', '《红楼梦》是中国古典小说的巅峰之作，是中国古代章回体长篇小说的代表作，描绘了贾宝玉、林黛玉、薛宝钗等人的一生波折，同时展现了封建末期贵族社会的昏暗黑暗。');
INSERT INTO `book` VALUES (32, '围城', 32.99, '钱钟书', '小说', '中文', '人民文学出版社', '2014-3-1', '一个有素养的人在错误的时间，错误的地点，面对错误的人，所做出的错误的妥协，就是对人生最大的浪费。');
INSERT INTO `book` VALUES (33, '聊斋志异', 18.99, '蒲松龄', '小说', '中文', '人民文学出版社', '2010-12-1', '《聊斋志异》是清朝伟大的小说家蒲松龄创作的短篇小说，主要描写晚清时期的超自然现象、魔幻故事、神怪传说，并以此反映社会现实。');
INSERT INTO `book` VALUES (34, '呼啸山庄', 29.99, '艾米莉·勃朗特', '小说', '中文', '南海出版公司', '2009-2-1', '这是一篇充满爱与仇的故事，讲的是一个深爱着个人却无法在一起的男女之间所发生的一系列仇恨。');
INSERT INTO `book` VALUES (35, '活着', 24.99, '余华', '小说', '中文', '作家出版社', '2012-3-1', '《活着》是余华的小说之一，讲述了在历史的洪流中，一个在的草根小人物爱国富庶、家破人亡、痛苦失落，最终走向佛门的一生。');
INSERT INTO `book` VALUES (36, '傲慢与偏见', 26.99, '简·奥斯汀', '小说', '中文', '中信出版社', '2010-6-1', '这是一部描写爱情与婚姻的小说，小说揭示了人性中的傲慢、偏见、虚伪等负面情感，它展示了英国乡绅生活的风貌。');
INSERT INTO `book` VALUES (37, '花田错', 38.99, '张爱玲', '小说', '中文', '上海译文出版社', '2001-5-1', '《花田错》是张爱玲的代表作之一，小说中表达了张爱玲对时代的感叹，对爱情的执着和追求。');
INSERT INTO `book` VALUES (38, '海底两万里', 44.99, '儒勒·凡尔纳', '小说', '中文', '江苏凤凰文艺出版社', '2016-6-1', '《海底两万里》是儒勒·凡尔纳的代表作之一，讲述了三个人在海底旅行的经历，充满了科幻和想象。');
INSERT INTO `book` VALUES (39, '霍乱时期的爱情', 35.99, '加西亚·马尔克斯', '小说', '中文', '南海出版公司', '2008-6-1', '《霍乱时期的爱情》是哥伦比亚文学作家马尔克斯的代表作之一，讲述了一段让人扣人心弦的爱情故事。');
INSERT INTO `book` VALUES (40, '月亮与六便士', 33.99, '毛姆', '小说', '中文', '译林出版社', '2010-8-1', '《月亮和六便士》是英国小说家毛姆的代表作之一，讲述了哲学家洛克与画家古内西亚之间的故事，引人深思。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(8) NULL DEFAULT NULL,
  `sex` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '老张', NULL, NULL, 22, '未知');
INSERT INTO `user` VALUES (9, '老大', '123456', NULL, 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
