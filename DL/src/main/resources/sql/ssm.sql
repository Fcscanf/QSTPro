/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 14/08/2019 15:44:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, 'class_a', 1);
INSERT INTO `class` VALUES (2, 'class_b', 2);

-- ----------------------------
-- Table structure for m_users
-- ----------------------------
DROP TABLE IF EXISTS `m_users`;
CREATE TABLE `m_users`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_users
-- ----------------------------
INSERT INTO `m_users` VALUES (1, '张三', 28);
INSERT INTO `m_users` VALUES (2, '李四', 26);
INSERT INTO `m_users` VALUES (3, 'test001', 22);
INSERT INTO `m_users` VALUES (4, 'test001', 22);
INSERT INTO `m_users` VALUES (5, 'test001', 22);
INSERT INTO `m_users` VALUES (6, 'test001', 22);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `order_price` float DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'aaaa', 23);
INSERT INTO `orders` VALUES (2, 'bbbb', 33);
INSERT INTO `orders` VALUES (3, 'cccc', 22);

-- ----------------------------
-- Table structure for ss_product
-- ----------------------------
DROP TABLE IF EXISTS `ss_product`;
CREATE TABLE `ss_product`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `p_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `p_address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_product
-- ----------------------------
INSERT INTO `ss_product` VALUES (1, '惠普电脑', 'HP-ENVY', '北京太和');
INSERT INTO `ss_product` VALUES (2, '惠普电脑', 'HP-ENVY', '北京太和');
INSERT INTO `ss_product` VALUES (3, '惠普电脑', 'HP-ENVY', '北京太和');

-- ----------------------------
-- Table structure for ssm_course
-- ----------------------------
DROP TABLE IF EXISTS `ssm_course`;
CREATE TABLE `ssm_course`  (
  `c_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `c_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程名',
  `num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程号',
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '上课地点',
  `start_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '上课时间',
  `end_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '结束时间',
  `t_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '教师号',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 245 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ssm_course
-- ----------------------------
INSERT INTO `ssm_course` VALUES (119, '音乐鉴赏 　', '9000000315', '南校区博学楼1J1A406', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (120, '摄影基础 　', '9000000001', '南校区博学楼1J1A303', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (121, '影视鉴赏 　', '9000000021', '南校区博学楼1J1B304', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (122, '大学书法', '9000000030', '南校区博学楼1J1D315', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (123, '大学生创新创业导论 　', '9000000002', '南校区博学楼1J1C203', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (124, '大学生创新创业导论 　', '9000000003', '南校区博学楼1J1C205', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (125, '总经理学 　', '9000000004', '南校区博学楼1J1B403', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (126, '生态环境材料 　', '9000000005', '南校区博学楼1J1D505', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (127, '合唱艺术实践（下） 　', '9000000006', '南校区博学楼1J1A207', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (128, '歌唱艺术（下）', '9000000086', '南校区博学楼1J1D504', '2019.9.1', '2019.11.30', '1610701120');
INSERT INTO `ssm_course` VALUES (129, '绿色建材与人居环境', '9000000100', '南校区博学楼1J1D317', '2019.9.1', '2019.11.30', '1610701121');
INSERT INTO `ssm_course` VALUES (130, '现代食品营养与安全', '9000000108', '南校区博学楼1J1A404', '2019.9.1', '2019.11.30', '1610701122');
INSERT INTO `ssm_course` VALUES (132, '影视制作与编辑', '9000000112', '南校区博学楼1J1C313(三机房)', '2019.9.1', '2019.11.30', '1610701124');
INSERT INTO `ssm_course` VALUES (133, '影视制作与编辑', '9000000107', '南校区博学楼1J1D113', '2019.9.1', '2019.11.30', '1610701125');
INSERT INTO `ssm_course` VALUES (134, '知识产权管理', '9000000124', '南校区博学楼1J1B304', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (137, 'MATLAB程序设计', '9000000131', '南校区博学楼1J1C203', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (138, '企业战略与营销管理', '9000000139', '南校区博学楼1J1A204', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (139, '围棋入门', '9000000142', '南校区博学楼1J1D410', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (140, '电子商务创业导论(网上创业)', '9000000155', '南校区博学楼1J1D405', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (141, '数学发展史', '9000000164', '南校区博学楼1J1B405', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (142, '大学生生活与心理应对', '9000000168', '南校区博学楼1J1D505', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (143, '生活中的科学', '9000000170', '南校区博学楼1J1D507', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (150, '西方文化概论', '9000000208', '南校区博学楼1J1C203/南校区博学楼1J1D407', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (152, '秘书常用实务', '9000000215', '南校区博学楼1J1D410', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (154, '中国现代文学名篇鉴赏', '9000000221', '南校区博学楼1J1D317', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (156, '公共韩语', '9000000223', '南校区博学楼1J1A304/南校区博学楼1J1D417', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (157, '中国古代建筑园林', '9000000227', '南校区博学楼1J1C205', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (158, '演讲艺术', '9000000228', '南校区博学楼1J1B204', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (159, '太极拳与中国传统文化', '9000000230', '南校区博学楼1J1D509', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (160, '美学常识', '9000000232', '南校区博学楼1J1A404', '2019.9.1', '2019.11.30', '1610701120');
INSERT INTO `ssm_course` VALUES (161, '当代建筑思潮', '9000000233', '南校区博学楼1J1A202', '2019.9.1', '2019.11.30', '1610701121');
INSERT INTO `ssm_course` VALUES (162, '人工智能', '9000000235', '南校区博学楼1J1D509/南校区博学楼1J1A304', '2019.9.1', '2019.11.30', '1610701122');
INSERT INTO `ssm_course` VALUES (163, '汉字的传统文化解读', '9000000236', '南校区博学楼1J1D509', '2019.9.1', '2019.11.30', '1610701123');
INSERT INTO `ssm_course` VALUES (164, '服装流行分析', '9000000237', '南校区博学楼1J1D507', '2019.9.1', '2019.11.30', '1610701124');
INSERT INTO `ssm_course` VALUES (165, '国画入门', '9000000239', '南校区润美楼B410', '2019.9.1', '2019.11.30', '1610701125');
INSERT INTO `ssm_course` VALUES (166, '现代制造技术', '9000000240', '南校区博学楼1J1A307/南校区博学楼1J1D404', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (167, '当代世界经济与政治', '9000000241', '南校区博学楼1J1B304', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (168, '新能源技术概论', '9000000242', '南校区博学楼1J1B403', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (169, '机器人', '9000000245', '南校区博学楼1J1D405', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (170, '云计算与大数据', '9000000246', '南校区博学楼1J1A302/南校区博学楼1J1D508', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (171, '西方美术鉴赏', '9000000249', '南校区博学楼1J1A204', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (172, '计算机网络管理', '9000000252', '南校区博学楼1J1A306/南校区博学楼1J1D508', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (183, '音乐鉴赏 　', '9000000015', '北校区行远楼3S2A101', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (184, '美术鉴赏 　', '9000000016', '北校区知达楼3J2C206', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (185, '摄影基础 　', '9000000020', '北校区知达楼3J2C105', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (186, '大学书法', '9000000030', '北校区体知楼S105', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (187, '大学生创新创业导论 　', '9000000037', '北校区体知楼S101', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (188, '总经理学 　', '9000000049', '北校区体知楼S101', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (189, '数学文化　', '9000000073', '北校区体知楼S105', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (190, '生态环境材料 　', '9000000074', '北校区知行楼601', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (191, '合唱艺术实践（下） 　', '9000000084', '北校区知行楼401', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (192, '戏剧鉴赏', '9000000123', '北校区知行楼411', '2019.9.1', '2019.11.30', '1610701120');
INSERT INTO `ssm_course` VALUES (193, '网页设计制作与发布', '9000000130', '北校区知行楼411', '2019.9.1', '2019.11.30', '1610701121');
INSERT INTO `ssm_course` VALUES (194, '纳米材料', '9000000134', '北校区知行楼602', '2019.9.1', '2019.11.30', '1610701122');
INSERT INTO `ssm_course` VALUES (195, '世界文学名著导读', '9000000147', '北校区知行楼603', '2019.9.1', '2019.11.30', '1610701123');
INSERT INTO `ssm_course` VALUES (197, '大学生心理调适和情绪管理技术', '9000000176', '北校区知行楼109', '2019.9.1', '2019.11.30', '1610701125');
INSERT INTO `ssm_course` VALUES (198, '新能源材料', '9000000178', '北校区知行楼604', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (199, '观赏鱼养殖与鉴赏', '9000000180', '北校区知行楼602', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (200, '雾霾、环境与新能源', '9000000182', '北校区体知楼S201', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (201, '化学与社会', '9000000183', '北校区体知楼S105', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (202, '舌尖上的健康', '9000000184', '北校区知达楼3J2C107', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (203, '能源与环境', '9000000185', '北校区知达楼3J2C304', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (204, '跨文化交际', '9000000206', '北校区知达楼3J2C306', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (205, '交际英语口语', '9000000209', '北校区知行楼613', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (206, '化学与现代生活', '9000000210', '北校区知达楼3J2C104/北校区体知楼S105', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (207, '解码生命的奥秘', '9000000211', '北校区知达楼3J2C205/北校区体知楼S201', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (208, '汽车文化', '9000000212', '北校区知达楼3J2C205', '2019.9.1', '2019.11.30', '1610701120');
INSERT INTO `ssm_course` VALUES (209, '高分子世界', '9000000213', '北校区知达楼3J2C107/北校区知达楼3J2A115', '2019.9.1', '2019.11.30', '1610701121');
INSERT INTO `ssm_course` VALUES (210, '趣味生物学', '9000000214', '北校区体知楼S103', '2019.9.1', '2019.11.30', '1610701122');
INSERT INTO `ssm_course` VALUES (211, '现代物流管理', '9000000216', '北校区体知楼S101', '2019.9.1', '2019.11.30', '1610701123');
INSERT INTO `ssm_course` VALUES (212, '跨文化管理概论', '9000000217', '北校区知行楼202', '2019.9.1', '2019.11.30', '1610701124');
INSERT INTO `ssm_course` VALUES (213, '企业人力资源管理概论', '9000000218', '北校区知行楼109', '2019.9.1', '2019.11.30', '1610701125');
INSERT INTO `ssm_course` VALUES (214, '中国当代文学名篇鉴赏', '9000000220', '北校区知行楼604', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (215, '古代山水诗鉴赏', '9000000222', '北校区知行楼602', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (216, '趣味汉语', '9000000224', '北校区知达楼3J2C109/北校区知行楼414', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (217, '旅游常识', '9000000229', '北校区知行楼601', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (218, '中国建筑史', '9000000231', '北校区知行楼410/北校区知行楼301', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (219, '服装色彩学', '9000000234', '北校区知行楼201', '2019.9.1', '2019.11.30', '1610701115');
INSERT INTO `ssm_course` VALUES (220, '中国饮食文化', '9000000238', '北校区知行楼102/北校区知行楼110', '2019.9.1', '2019.11.30', '1610701116');
INSERT INTO `ssm_course` VALUES (221, '外国建筑史', '9000000243', '北校区知行楼110/北校区知行楼603', '2019.9.1', '2019.11.30', '1610701117');
INSERT INTO `ssm_course` VALUES (222, '生态学', '9000000244', '北校区知达楼3J2C105', '2019.9.1', '2019.11.30', '1610701118');
INSERT INTO `ssm_course` VALUES (223, '西方哲学史专题', '9000000250', '北校区知行楼601', '2019.9.1', '2019.11.30', '1610701119');
INSERT INTO `ssm_course` VALUES (224, '多媒体技术', '9000000251', '北校区体知楼S101/北校区知行楼411', '2019.9.1', '2019.11.30', '1610701120');
INSERT INTO `ssm_course` VALUES (225, '环境保护概论', '9000000253', '北校区知行楼503', '2019.9.1', '2019.11.30', '1610701121');
INSERT INTO `ssm_course` VALUES (226, '税收与企业经营管理', '9000000254', '北校区知达楼3J2C102', '2019.9.1', '2019.11.30', '1610701122');
INSERT INTO `ssm_course` VALUES (227, '用经济学智慧解读中国', '9000000308', '', '2019.9.1', '2019.11.30', '1610701123');
INSERT INTO `ssm_course` VALUES (228, '项目管理学', '9000000313', '', '2019.9.1', '2019.11.30', '1610701124');
INSERT INTO `ssm_course` VALUES (229, '传统文化与现代经营管理', '9000000314', '', '2019.9.1', '2019.11.30', '1610701125');
INSERT INTO `ssm_course` VALUES (230, '中国古代礼仪文明', '9000000317', '', '2019.9.1', '2019.11.30', '1610701110');
INSERT INTO `ssm_course` VALUES (231, '舞蹈鉴赏', '9000000323', '', '2019.9.1', '2019.11.30', '1610701111');
INSERT INTO `ssm_course` VALUES (232, '口才艺术与社交礼仪', '9000000324', '', '2019.9.1', '2019.11.30', '1610701112');
INSERT INTO `ssm_course` VALUES (233, '逻辑和批判性思维', '9000000325', '', '2019.9.1', '2019.11.30', '1610701113');
INSERT INTO `ssm_course` VALUES (234, '辩论修养', '9000000326', '', '2019.9.1', '2019.11.30', '1610701114');
INSERT INTO `ssm_course` VALUES (235, '西方美术欣赏', '9000000327', '', '2019.9.1', '2019.11.30', '1610701115');

-- ----------------------------
-- Table structure for ssm_role
-- ----------------------------
DROP TABLE IF EXISTS `ssm_role`;
CREATE TABLE `ssm_role`  (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `a_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ssm_role
-- ----------------------------
INSERT INTO `ssm_role` VALUES (1, '学生', NULL);
INSERT INTO `ssm_role` VALUES (2, '教师', NULL);
INSERT INTO `ssm_role` VALUES (3, '管理员', NULL);

-- ----------------------------
-- Table structure for ssm_score
-- ----------------------------
DROP TABLE IF EXISTS `ssm_score`;
CREATE TABLE `ssm_score`  (
  `sc_id` int(10) NOT NULL AUTO_INCREMENT COMMENT ' id',
  `stu_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '学号',
  `course_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '课程号',
  `select_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '选课的时间',
  `score` int(10) DEFAULT NULL COMMENT '成绩',
  PRIMARY KEY (`sc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ssm_score
-- ----------------------------
INSERT INTO `ssm_score` VALUES (2, '121', '9000000021', NULL, NULL);
INSERT INTO `ssm_score` VALUES (5, '1610701104', '9000000037', NULL, 80);
INSERT INTO `ssm_score` VALUES (6, '1610701126', '9000000049', NULL, NULL);
INSERT INTO `ssm_score` VALUES (7, '1610701127', '9000000074', NULL, NULL);
INSERT INTO `ssm_score` VALUES (8, '1610701128', '9000000084', NULL, NULL);
INSERT INTO `ssm_score` VALUES (9, '1610701129', '9000000086', NULL, NULL);
INSERT INTO `ssm_score` VALUES (10, '1610701130', '9000000100', NULL, NULL);
INSERT INTO `ssm_score` VALUES (11, '1610701131', '9000000108', NULL, NULL);
INSERT INTO `ssm_score` VALUES (12, '1610701132', '9000000112', NULL, NULL);
INSERT INTO `ssm_score` VALUES (13, '1610701134', '9000000112', NULL, NULL);
INSERT INTO `ssm_score` VALUES (14, '1610701135', '9000000112', NULL, NULL);
INSERT INTO `ssm_score` VALUES (15, '1610701133', '9000000124', NULL, 89);
INSERT INTO `ssm_score` VALUES (17, '1610701177', '9000000130', NULL, NULL);
INSERT INTO `ssm_score` VALUES (18, '121', '9000000131', NULL, NULL);
INSERT INTO `ssm_score` VALUES (20, '1610701103', '9000000142', NULL, 78);
INSERT INTO `ssm_score` VALUES (21, '1610701104', '9000000155', NULL, NULL);
INSERT INTO `ssm_score` VALUES (22, '1610701126', '9000000164', NULL, NULL);
INSERT INTO `ssm_score` VALUES (23, '1610701127', '9000000168', NULL, NULL);
INSERT INTO `ssm_score` VALUES (24, '1610701128', '9000000170', NULL, NULL);
INSERT INTO `ssm_score` VALUES (25, '1610701129', '9000000180', NULL, NULL);
INSERT INTO `ssm_score` VALUES (26, '1610701130', '9000000182', NULL, NULL);
INSERT INTO `ssm_score` VALUES (27, '1610701131', '9000000183', NULL, NULL);
INSERT INTO `ssm_score` VALUES (28, '1610701132', '9000000184', NULL, NULL);
INSERT INTO `ssm_score` VALUES (29, '1610701134', '9000000186', NULL, NULL);
INSERT INTO `ssm_score` VALUES (30, '1610701135', '9000000206', NULL, NULL);
INSERT INTO `ssm_score` VALUES (31, '1610701133', '9000000208', NULL, NULL);
INSERT INTO `ssm_score` VALUES (32, '1610701106', '9000000211', NULL, NULL);
INSERT INTO `ssm_score` VALUES (33, '1610701177', '9000000215', NULL, NULL);
INSERT INTO `ssm_score` VALUES (34, '121', '9000000216', NULL, NULL);
INSERT INTO `ssm_score` VALUES (36, '1610701103', '9000000222', NULL, NULL);
INSERT INTO `ssm_score` VALUES (37, '1610701104', '9000000223', NULL, NULL);
INSERT INTO `ssm_score` VALUES (38, '1610701126', '9000000227', NULL, NULL);
INSERT INTO `ssm_score` VALUES (39, '1610701127', '9000000228', NULL, NULL);
INSERT INTO `ssm_score` VALUES (40, '1610701128', '9000000230', NULL, NULL);
INSERT INTO `ssm_score` VALUES (41, '1610701129', '9000000232', NULL, NULL);
INSERT INTO `ssm_score` VALUES (42, '1610701130', '9000000233', NULL, NULL);
INSERT INTO `ssm_score` VALUES (43, '1610701131', '9000000235', NULL, NULL);
INSERT INTO `ssm_score` VALUES (44, '1610701132', '9000000236', NULL, NULL);
INSERT INTO `ssm_score` VALUES (45, '1610701134', '9000000237', NULL, NULL);
INSERT INTO `ssm_score` VALUES (46, '1610701135', '9000000239', NULL, NULL);
INSERT INTO `ssm_score` VALUES (47, '1610701133', '9000000240', NULL, NULL);
INSERT INTO `ssm_score` VALUES (48, '1610701106', '9000000241', NULL, NULL);
INSERT INTO `ssm_score` VALUES (49, '1610701177', '9000000242', NULL, NULL);
INSERT INTO `ssm_score` VALUES (50, '121', '9000000245', NULL, NULL);
INSERT INTO `ssm_score` VALUES (51, '1610701102', '9000000246', NULL, NULL);
INSERT INTO `ssm_score` VALUES (52, '1610701103', '9000000249', NULL, NULL);
INSERT INTO `ssm_score` VALUES (53, '1610701104', '9000000252', NULL, NULL);
INSERT INTO `ssm_score` VALUES (54, '1610701126', '9000000254', NULL, NULL);
INSERT INTO `ssm_score` VALUES (55, '1610701127', '9000000308', NULL, NULL);
INSERT INTO `ssm_score` VALUES (56, '1610701128', '9000000313', NULL, NULL);
INSERT INTO `ssm_score` VALUES (57, '1610701129', '9000000314', NULL, NULL);
INSERT INTO `ssm_score` VALUES (58, '1610701130', '9000000317', NULL, NULL);
INSERT INTO `ssm_score` VALUES (59, '1610701131', '9000000323', NULL, NULL);
INSERT INTO `ssm_score` VALUES (60, '1610701132', '9000000324', NULL, NULL);
INSERT INTO `ssm_score` VALUES (61, '1610701134', '9000000325', NULL, NULL);
INSERT INTO `ssm_score` VALUES (62, '1610701135', '9000000326', NULL, NULL);
INSERT INTO `ssm_score` VALUES (63, '1610701133', '9000000327', NULL, NULL);
INSERT INTO `ssm_score` VALUES (65, '1610701177', '9000000016', NULL, NULL);
INSERT INTO `ssm_score` VALUES (66, '121', '9000000020', NULL, NULL);
INSERT INTO `ssm_score` VALUES (68, '1610701103', '9000000037', NULL, 90);
INSERT INTO `ssm_score` VALUES (69, '1610701104', '9000000049', NULL, NULL);
INSERT INTO `ssm_score` VALUES (70, '1610701126', '9000000073', NULL, NULL);
INSERT INTO `ssm_score` VALUES (71, '1610701127', '9000000074', NULL, NULL);
INSERT INTO `ssm_score` VALUES (72, '1610701128', '9000000084', NULL, NULL);
INSERT INTO `ssm_score` VALUES (73, '1610701129', '9000000123', NULL, NULL);
INSERT INTO `ssm_score` VALUES (74, '1610701130', '9000000130', NULL, NULL);
INSERT INTO `ssm_score` VALUES (75, '1610701131', '9000000134', NULL, NULL);
INSERT INTO `ssm_score` VALUES (76, '1610701132', '9000000147', NULL, NULL);
INSERT INTO `ssm_score` VALUES (77, '1610701134', '9000000170', NULL, NULL);
INSERT INTO `ssm_score` VALUES (78, '1610701135', '9000000176', NULL, NULL);
INSERT INTO `ssm_score` VALUES (79, '1610701133', '9000000178', NULL, NULL);
INSERT INTO `ssm_score` VALUES (81, '1610701177', '9000000182', NULL, NULL);
INSERT INTO `ssm_score` VALUES (82, '121', '9000000183', NULL, NULL);
INSERT INTO `ssm_score` VALUES (84, '1610701103', '9000000186', NULL, NULL);
INSERT INTO `ssm_score` VALUES (85, '1610701104', '9000000206', NULL, NULL);
INSERT INTO `ssm_score` VALUES (86, '1610701126', '9000000209', NULL, NULL);
INSERT INTO `ssm_score` VALUES (87, '1610701127', '9000000210', NULL, NULL);
INSERT INTO `ssm_score` VALUES (88, '1610701128', '9000000211', NULL, NULL);
INSERT INTO `ssm_score` VALUES (89, '1610701129', '9000000212', NULL, NULL);
INSERT INTO `ssm_score` VALUES (90, '1610701130', '9000000213', NULL, NULL);
INSERT INTO `ssm_score` VALUES (91, '1610701131', '9000000214', NULL, NULL);
INSERT INTO `ssm_score` VALUES (92, '1610701132', '9000000216', NULL, NULL);
INSERT INTO `ssm_score` VALUES (93, '1610701134', '9000000217', NULL, NULL);
INSERT INTO `ssm_score` VALUES (94, '1610701135', '9000000218', NULL, NULL);
INSERT INTO `ssm_score` VALUES (95, '1610701133', '9000000220', NULL, NULL);
INSERT INTO `ssm_score` VALUES (96, '1610701106', '9000000222', NULL, NULL);
INSERT INTO `ssm_score` VALUES (97, '1610701177', '9000000224', NULL, NULL);
INSERT INTO `ssm_score` VALUES (98, '121', '9000000229', NULL, NULL);
INSERT INTO `ssm_score` VALUES (99, '1610701102', '9000000231', NULL, NULL);
INSERT INTO `ssm_score` VALUES (100, '1610701103', '9000000234', NULL, NULL);
INSERT INTO `ssm_score` VALUES (101, '1610701104', '9000000238', NULL, NULL);
INSERT INTO `ssm_score` VALUES (102, '1610701126', '9000000243', NULL, NULL);
INSERT INTO `ssm_score` VALUES (103, '1610701127', '9000000244', NULL, NULL);
INSERT INTO `ssm_score` VALUES (104, '1610701128', '9000000250', NULL, NULL);
INSERT INTO `ssm_score` VALUES (105, '1610701129', '9000000251', NULL, NULL);
INSERT INTO `ssm_score` VALUES (106, '1610701130', '9000000253', NULL, NULL);
INSERT INTO `ssm_score` VALUES (107, '1610701131', '9000000254', NULL, NULL);
INSERT INTO `ssm_score` VALUES (108, '1610701132', '9000000308', NULL, NULL);
INSERT INTO `ssm_score` VALUES (109, '1610701134', '9000000313', NULL, NULL);
INSERT INTO `ssm_score` VALUES (110, '1610701135', '9000000314', NULL, NULL);
INSERT INTO `ssm_score` VALUES (111, '1610701133', '9000000317', NULL, NULL);
INSERT INTO `ssm_score` VALUES (112, '1610701106', '9000000323', NULL, NULL);
INSERT INTO `ssm_score` VALUES (113, '1610701177', '9000000324', NULL, NULL);
INSERT INTO `ssm_score` VALUES (114, '121', '9000000325', NULL, NULL);
INSERT INTO `ssm_score` VALUES (115, '1610701102', '9000000326', NULL, NULL);
INSERT INTO `ssm_score` VALUES (116, '1610701103', '9000000327', NULL, NULL);
INSERT INTO `ssm_score` VALUES (117, '1610701106', '9000000015', '2019-08-10 13:08:51', NULL);
INSERT INTO `ssm_score` VALUES (118, '1610701106', '9000000308', '2019-08-11 07:51:07', NULL);
INSERT INTO `ssm_score` VALUES (119, '1610701106', '9000000315', '2019-08-11 08:07:48', NULL);
INSERT INTO `ssm_score` VALUES (120, '1610701106', '9000000005', '2019-08-11 08:14:30', NULL);
INSERT INTO `ssm_score` VALUES (121, '1610701106', '9000000233', '2019-08-11 10:39:36', NULL);
INSERT INTO `ssm_score` VALUES (128, '1610701102', '9000000001', '2019-08-12 00:01:17', NULL);
INSERT INTO `ssm_score` VALUES (129, '1610701102', '9000000021', '2019-08-12 00:02:40', NULL);
INSERT INTO `ssm_score` VALUES (130, '1610701102', '9000000003', '2019-08-12 00:03:15', NULL);
INSERT INTO `ssm_score` VALUES (131, '1610701102', '9000000004', '2019-08-12 00:03:51', NULL);
INSERT INTO `ssm_score` VALUES (132, '1610701102', '9000000315', '2019-08-13 18:36:08', NULL);

-- ----------------------------
-- Table structure for ssm_user
-- ----------------------------
DROP TABLE IF EXISTS `ssm_user`;
CREATE TABLE `ssm_user`  (
  `u_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `u_number` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tel` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `college` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `isValid` int(11) DEFAULT NULL,
  `r_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ssm_user
-- ----------------------------
INSERT INTO `ssm_user` VALUES (1, 'Fcant', '1610701106', '17826260016', 'fcscanf@126.com', '123', '上海虹桥', '信息学院', 1, 1);
INSERT INTO `ssm_user` VALUES (2, '樊乘乘', '1610701177', '17826260016', 'fcscanf@outlook.com', '111', '北京市太和区', '信息学院', 1, 1);
INSERT INTO `ssm_user` VALUES (5, '蔡云晨', '1610701158', '17826260017', '309219094@qq.com', '111', '江苏省盐城市', '信息学院', 1, 2);
INSERT INTO `ssm_user` VALUES (6, '樊乘乘', '121', '17826260016', 'fcscanf@gmail.com', '111', '北京市朝阳区', '信息学院', 1, 1);
INSERT INTO `ssm_user` VALUES (7, '蔡祺耀', '1610701102', '17826260737', '937058016@qq.com', '111', '江苏盐城', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (8, '陈凯', '1610701103', '15961099720', '1737990299@qq.com', '111', '江苏泰州', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (9, '仇舒豪', '1610701104', '15358260375', '810863161@qq.com', '111', '江苏南京', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (10, '戴维超', '1610701105', '18360497748', '721471801@qq.com', '111', '江苏盐城', '信息工程学院', 1, 3);
INSERT INTO `ssm_user` VALUES (11, '樊乘乘', '1610701316', '17826260016', '309219094@qq.com', '111', '甘肃平凉', '信息工程学院', 1, 3);
INSERT INTO `ssm_user` VALUES (12, '冯彬彬', '1610701107', '17826260836', '308988340@qq.com', '111', '江苏沐县', '信息工程学院', 1, 3);
INSERT INTO `ssm_user` VALUES (13, '明池', '1610701108', '17715942063', '1592100982@qq.com', '111', '安徽安庆', '信息工程学院', 1, 3);
INSERT INTO `ssm_user` VALUES (14, '龚柄瑞', '1610701109', '17826260232', '2322538677@qq.com', '111', '河南信阳', '信息工程学院', 1, 3);
INSERT INTO `ssm_user` VALUES (15, '古赛昆', '1610701110', '17826261291', '1339982411@qq.com', '111', '河南柘城', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (16, '黄淑君', '1610701111', '15295308982', '943626862@qq.com', '111', '江苏无锡', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (17, '蒋楠楠', '1610701112', '17826263390', '2416544808@qq.com', '111', '江苏南通', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (18, '李层层', '1610701113', '17826260327', '2047954711@qq.com', '111', '江苏丰县', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (19, '刘斓', '1610701114', '15161991227', '2495812446@qq.com', '111', '江苏海安', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (20, 'Kris', '1610701115', '17826263582', '1219302769@qq.com', '111', '江苏淮安', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (21, '陆嘉良', '1610701116', '17826261206', '1098335908@qq.com', '111', '江苏南通', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (22, '倪大洋', '1610701117', '15051342307', '1782055745@qq.com', '111', '江苏盐城', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (23, '倪奇', '1610701118', '17826263561', '1290346330@qq.com', '111', '江苏射阳', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (24, '祁凯明', '1610701119', '15751233148', '1248382652@qq.com', '111', '江苏赣榆', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (25, '宋金程', '1610701120', '17749598136', '528424355@qq.com', '111', '江苏南京', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (26, '王鑫', '1610701121', '17826261061', '1907298000@qq.com', '111', '江苏张家港', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (27, '王学臣', '1610701122', '13862685285', '1581839619@qq.com', '111', '江苏常州', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (28, '王震', '1610701123', '13912363796', '1173375190@qq.com', '111', '江苏淮安', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (29, '徐诚豪', '1610701124', '18896564491', '1913899707@qq.com', '111', '江苏苏州', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (30, '徐梦麟', '1610701125', '17826265706', '917897434@qq.com', '111', '江苏张家港', '信息工程学院', 1, 2);
INSERT INTO `ssm_user` VALUES (31, '徐正媛', '1610701126', '17826263531', '1650426875@qq.com', '111', '江苏盐城', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (32, '虞育涛', '1610701127', '13771453831', '2549326724@qq.com', '111', '江苏无锡', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (33, '张旭东', '1610701128', '17826263701', '1130923412@qq.com', '111', '甘肃玉门', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (34, '张逸轩', '1610701129', '18352889192', '705681912@qq.com', '111', '江苏句容', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (35, '赵乾坤', '1610701130', '17826263609', '373020024@qq.com', '111', '江苏邳州', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (36, '周乃涛', '1610701131', '15161771097', '1367278852@qq.com', '111', '江苏盱眙', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (37, '周宇', '1610701132', '13912852257', '1297799065@qq.com', '111', '江苏海安', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (38, '朱江涛', '1610701134', '13305108109', '741666642@qq.com', '111', '江苏盐城', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (39, '朱宇清', '1610701135', '17826260105', '1825791715@qq.com', '111', '江苏如皋', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (40, '朱建成', '1610701133', '17826260930', '2560164477@qq.com', '111', '江苏潥阳', '信息工程学院', 1, 1);
INSERT INTO `ssm_user` VALUES (41, 'Fcant', '1610701140', '17826260016', 'fcscanf@outlook.com', NULL, NULL, '化工学院', NULL, 1);
INSERT INTO `ssm_user` VALUES (42, 'Fcant', '1610701176', '17826260016', 'fcscanf@126.com', NULL, NULL, '化工学院', 1, 1);
INSERT INTO `ssm_user` VALUES (43, 'Fcscanf', '1610701178', '17826260066', 'fcscanf@outlook.com', NULL, NULL, '材料学院', 1, 1);
INSERT INTO `ssm_user` VALUES (44, '樊乘乘', '1610701188', '17826260016', 'fcscanf@gmail.com', NULL, NULL, '材料学院', 1, 1);
INSERT INTO `ssm_user` VALUES (45, 'Fcant', '1610701195', '17826260016', '3091219094@qq.com', NULL, NULL, '明德学院', 1, 2);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'student_A', 1);
INSERT INTO `student` VALUES (2, 'student_B', 1);
INSERT INTO `student` VALUES (3, 'student_C', 1);
INSERT INTO `student` VALUES (4, 'student_D', 2);
INSERT INTO `student` VALUES (5, 'student_E', 2);
INSERT INTO `student` VALUES (6, 'student_F', 2);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES (3, '赵乾坤', '309219094@qq.com', '17826263680', '30239480');
INSERT INTO `t_student` VALUES (7, '古赛昆', '348945073@qq.com', '17837286777', '542389754');
INSERT INTO `t_student` VALUES (8, '戴维超', '918437501@qq.com', '2398743278', '945397');
INSERT INTO `t_student` VALUES (9, '龚柄瑞', '498075439@fox.com', '4879524395', '984573297');
INSERT INTO `t_student` VALUES (10, '王震', '8908435@qq.com', '17843260432', '8917955');
INSERT INTO `t_student` VALUES (11, '宋金程', '528424355@qq.com', '17749598136', '15366109706');
INSERT INTO `t_student` VALUES (12, '赵乾坤', '373020024@qq.com', '13814519076', '54382');
INSERT INTO `t_student` VALUES (16, '刘庆', 'lq@qq.com', '17824032401', '4532987543');
INSERT INTO `t_student` VALUES (19, 'Tom', 'fdsfl@fox.com', '19234892345', '435908435');
INSERT INTO `t_student` VALUES (22, 'ChengCheng Fan', 'fcscanf@126.com', '17826260016', '435943598');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'Fcant', '123456');
INSERT INTO `t_user` VALUES (2, 'Fc', '123456');

-- ----------------------------
-- Table structure for tb_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info_type` int(20) DEFAULT NULL,
  `info_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_linkman` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_data` timestamp(0) DEFAULT NULL,
  `info_check` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_payfor` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `info_status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type`  (
  `type_sign` int(20) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type_intro` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`type_sign`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_statue` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, 'teacher1');
INSERT INTO `teacher` VALUES (2, 'teacher2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, '小诗', '女');
INSERT INTO `users` VALUES (3, '小月', '女');
INSERT INTO `users` VALUES (4, '小依', '女');
INSERT INTO `users` VALUES (5, '小泽', '男');
INSERT INTO `users` VALUES (6, '张起灵', '男');

SET FOREIGN_KEY_CHECKS = 1;
