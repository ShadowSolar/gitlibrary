/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lbxt

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/06/2020 22:26:49
*/
CREATE DATABASE if not EXISTS `lbxt` CHARACTER SET utf8mb4;
use lbxt;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_biaozhun
-- ----------------------------
DROP TABLE IF EXISTS `tb_biaozhun`;
CREATE TABLE `tb_biaozhun`  (
  `xuhao` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号',
  `biaozhunname` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发放标准名',
  `lb1` tinyint(1) NOT NULL COMMENT '春秋防护服的发放周期（年），0为不发放',
  `lb2` tinyint(1) NOT NULL COMMENT '夏季防护服的发放周期（年），0为不发放',
  `lb3` tinyint(1) NOT NULL COMMENT '防油鞋的发放周期（年），0为不发放',
  `lb4` tinyint(1) NOT NULL COMMENT '防烫、砸、扎鞋的发放周期（年），0为不发放',
  `lb5` tinyint(1) NOT NULL COMMENT '防水胶靴的发放周期（年），0为不发放',
  `lb6` tinyint(1) NOT NULL COMMENT '防护帽安全帽的发放周期（年），0为不发放',
  `lb7` tinyint(1) NOT NULL COMMENT '分身雨衣的发放周期（年），0为不发放',
  `lb8` tinyint(1) NOT NULL COMMENT '棉短大衣的发放周期（年），0为不发放',
  `lb9` tinyint(1) NOT NULL COMMENT '防寒裤的发放周期（年），0为不发放',
  `lb10` tinyint(1) NOT NULL COMMENT '防寒皮鞋的发放周期（年），0为不发放',
  `lb11` tinyint(1) NOT NULL COMMENT '防寒帽的发放周期（年），0为不发放',
  `lb12` tinyint(1) NOT NULL COMMENT '防寒手套的发放周期（年），0为不发放',
  `lb13` tinyint(1) NOT NULL COMMENT '绝缘手套的发放周期（年），0为不发放',
  `lb14` tinyint(1) NOT NULL COMMENT '单绝缘鞋的发放周期（年），0为不发放',
  `lb15` tinyint(1) NOT NULL COMMENT '棉绝缘鞋的发放周期（年），0为不发放',
  PRIMARY KEY (`xuhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_biaozhun
-- ----------------------------
INSERT INTO `tb_biaozhun` VALUES (1, '车辆钳工', 1, 1, 0, 2, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (2, '制动钳工', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (3, '检车员', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (4, '车电员', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 1, 2, 2);
INSERT INTO `tb_biaozhun` VALUES (5, '发电车乘务员', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 1, 2, 2);
INSERT INTO `tb_biaozhun` VALUES (6, '轮轴装修工、轮镟工', 1, 1, 0, 2, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (7, '电力工、电器钳工', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 1, 2, 2);
INSERT INTO `tb_biaozhun` VALUES (8, '车辆电工', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 1, 2, 2);
INSERT INTO `tb_biaozhun` VALUES (9, '轴承钳工', 1, 1, 0, 0, 0, 2, 3, 3, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (10, '内燃钳工', 1, 1, 2, 0, 0, 2, 3, 3, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (11, '上油工', 1, 1, 2, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (12, '客车乘务检车员', 1, 1, 0, 0, 3, 2, 3, 3, 3, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (13, '客车乘务车电员', 1, 1, 0, 0, 3, 2, 3, 3, 3, 3, 2, 2, 1, 2, 2);
INSERT INTO `tb_biaozhun` VALUES (14, '机械钳工、工具钳工', 1, 1, 0, 0, 0, 2, 3, 3, 0, 3, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (15, '机床工、车轴车工', 1, 1, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (16, '段内调车连结员、轨道车司机', 1, 1, 0, 0, 3, 2, 3, 3, 3, 3, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (17, '调度员、值班员', 1, 0, 0, 0, 0, 2, 3, 3, 0, 0, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (18, '厨师、服务员', 1, 0, 0, 0, 0, 2, 0, 3, 0, 3, 0, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (19, '空压司机', 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (20, '水轮冲洗工、电池检修工', 1, 1, 0, 2, 3, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (21, '电焊工（熔接工）、气焊工', 1, 1, 0, 0, 0, 2, 3, 3, 0, 0, 2, 2, 1, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (22, '运搬工、材料工', 1, 1, 0, 2, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (23, '天车司机', 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (24, '探伤工、计量工', 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (25, '汽车驾驶员', 1, 1, 0, 0, 0, 2, 0, 3, 3, 0, 2, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (26, '巡守员', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (27, '保洁工、上水工、管道工', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (28, '质检员', 1, 1, 0, 0, 3, 2, 3, 3, 2, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (29, '车间安全、技术人员', 1, 1, 0, 0, 3, 2, 3, 3, 0, 3, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (30, '运用车间书记主任', 1, 1, 0, 0, 3, 2, 3, 3, 0, 0, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (31, '检修车间书记主任', 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (32, '车间其他人员', 1, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (33, '段科室人员', 1, 1, 0, 0, 0, 2, 4, 4, 0, 0, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (34, '段班子成员', 1, 1, 0, 0, 0, 2, 4, 4, 0, 0, 2, 2, 0, 0, 0);
INSERT INTO `tb_biaozhun` VALUES (35, '室内人员', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for tb_emp
-- ----------------------------
DROP TABLE IF EXISTS `tb_emp`;
CREATE TABLE `tb_emp`  (
  `no` smallint(5) UNSIGNED NOT NULL COMMENT '工号',
  `name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `cap` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '首字母',
  `bumen` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门',
  `banzu` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '班组',
  `zhiwu` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '职务',
  `biaozhun` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发放标准',
  `state` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '状态',
  `time1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '春秋防护服的记录',
  `time2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '夏季防护服的记录',
  `time3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防油鞋的记录',
  `time4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防烫、砸、扎鞋的记录',
  `time5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防水胶靴的记录',
  `time6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防护帽安全帽的记录',
  `time7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分身雨衣的记录',
  `time8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉短大衣的记录',
  `time9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒裤的记录',
  `time10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒皮鞋的记录',
  `time11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒帽的记录',
  `time12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒手套的记录',
  `time13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '绝缘手套的记录',
  `time14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单绝缘鞋的记录',
  `time15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的记录',
  `style1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '春秋防护服的样式',
  `style2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '夏季防护服的样式',
  `style3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防油鞋的样式',
  `style4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防烫、砸、扎鞋的样式',
  `style5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防水胶靴的样式',
  `style6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防护帽安全帽的样式',
  `style7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分身雨衣的样式',
  `style8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉短大衣的样式',
  `style9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒裤的样式',
  `style10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒皮鞋的样式',
  `style11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒帽的样式',
  `style12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒手套的样式',
  `style13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '绝缘手套的样式',
  `style14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单绝缘鞋的样式',
  `style15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的样式',
  `size1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '春秋防护服的尺码',
  `size2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '夏季防护服的尺码',
  `size3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防油鞋的尺码',
  `size4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防烫、砸、扎鞋的尺码',
  `size5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防水胶靴的尺码',
  `size6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防护帽安全帽的尺码',
  `size7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分身雨衣的尺码',
  `size8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉短大衣的尺码',
  `size9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒裤的尺码',
  `size10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒皮鞋的尺码',
  `size11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒帽的尺码',
  `size12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '防寒手套的尺码',
  `size13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '绝缘手套的尺码',
  `size14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单绝缘鞋的尺码',
  `size15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的尺码',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES (8501, '李会', '123456789123456789', 'LH', '科室', '安全科', '代技术员', '段科室人员', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '175.0', '175.0', '42.0', '42.0', '175.0', '57.0', '175.0', '175.0', '175.0', '42.0', '57.0', NULL, NULL, '42.0', '42.0');
INSERT INTO `tb_emp` VALUES (8502, '李一一', '123456789123456789', 'LYY', '科室', '保卫科', '科长', '段科室人员', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '180.0', '180.0', '41.0', '41.0', '180.0', '58.0', '180.0', '180.0', '180.0', '41.0', '58.0', NULL, NULL, '41.0', '41.0');
INSERT INTO `tb_emp` VALUES (8503, '张三', '123456789123456789', 'ZS', '科室', '安全科', '科长', '段科室人员', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '175.0', '175.0', '42.0', '42.0', '175.0', '57.0', '175.0', '175.0', '175.0', '42.0', '57.0', NULL, NULL, '42.0', '42.0');
INSERT INTO `tb_emp` VALUES (8504, '李四', '123456789123456789', 'LS', '三库检', '一组', '车辆电工', '车辆电工', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '180.0', '180.0', '41.0', '41.0', '180.0', '58.0', '180.0', '180.0', '180.0', '41.0', '58.0', NULL, NULL, '41.0', '41.0');
INSERT INTO `tb_emp` VALUES (8505, '王二麻子', '123456789123456789', 'WEMZ', '三车电', '二组', '车辆电工', '车辆电工', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '175.0', '175.0', '42.0', '42.0', '175.0', '57.0', '175.0', '175.0', '175.0', '42.0', '57.0', NULL, NULL, '42.0', '42.0');
INSERT INTO `tb_emp` VALUES (8506, '张五', '123456789123456789', 'ZW', '三车电', '一组', '车辆电工', '车辆电工', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '180.0', '180.0', '41.0', '41.0', '180.0', '58.0', '180.0', '180.0', '180.0', '41.0', '58.0', NULL, NULL, '41.0', '41.0');
INSERT INTO `tb_emp` VALUES (8507, '赵六', '123456789123456789', 'ZL', '三车电', '综合组', '车辆电工', '车辆电工', '正常', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_size
-- ----------------------------
DROP TABLE IF EXISTS `tb_size`;
CREATE TABLE `tb_size`  (
  `lb_size_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '劳保尺码主键',
  `lb_size1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '春秋防护服的尺码',
  `lb_size2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '夏季防护服的尺码',
  `lb_size3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防油鞋的尺码',
  `lb_size4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防烫、砸、扎鞋的尺码',
  `lb_size5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防水胶靴的尺码',
  `lb_size6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防护帽安全帽的尺码',
  `lb_size7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分身雨衣的尺码',
  `lb_size8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉短大衣的尺码',
  `lb_size9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的尺码',
  `lb_size10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒裤的尺码',
  `lb_size11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒皮鞋的尺码',
  `lb_size12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒帽的尺码',
  `lb_size13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绝缘手套的尺码',
  `lb_size14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单绝缘鞋的尺码',
  `lb_size15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的尺码',
  PRIMARY KEY (`lb_size_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_size
-- ----------------------------
INSERT INTO `tb_size` VALUES (1, '155', '155', '36', '36', '36', '55', '155', '155', '155', '36', '55', NULL, NULL, '36', '36');
INSERT INTO `tb_size` VALUES (2, '160', '160', '37', '37', '37', '56', '160', '160', '160', '37', '56', NULL, NULL, '37', '37');
INSERT INTO `tb_size` VALUES (3, '165', '165', '38', '38', '38', '57', '165', '165', '165', '38', '57', NULL, NULL, '38', '38');
INSERT INTO `tb_size` VALUES (4, '170', '170', '39', '39', '39', '58', '170', '170', '170', '39', '58', NULL, NULL, '39', '39');
INSERT INTO `tb_size` VALUES (5, '175', '175', '40', '40', '40', '59', '175', '175', '175', '40', '59', NULL, NULL, '40', '40');
INSERT INTO `tb_size` VALUES (6, '180', '180', '41', '41', '41', '60', '180', '180', '180', '41', '60', NULL, NULL, '41', '41');
INSERT INTO `tb_size` VALUES (7, '185', '185', '42', '42', '42', '61', '185', '185', '185', '42', '61', NULL, NULL, '42', '42');
INSERT INTO `tb_size` VALUES (8, '190', '190', '43', '43', '43', '62', '190', '190', '190', '43', '62', NULL, NULL, '43', '43');
INSERT INTO `tb_size` VALUES (9, '195', '195', '44', '44', '44', '63', '195', '195', '195', '44', '63', NULL, NULL, '44', '44');
INSERT INTO `tb_size` VALUES (10, NULL, NULL, '45', '45', '45', NULL, NULL, NULL, NULL, '45', NULL, NULL, NULL, '45', '45');
INSERT INTO `tb_size` VALUES (11, NULL, NULL, '46', '46', '46', NULL, NULL, NULL, NULL, '46', NULL, NULL, NULL, '46', '46');
INSERT INTO `tb_size` VALUES (12, NULL, NULL, '47', '47', '47', NULL, NULL, NULL, NULL, '47', NULL, NULL, NULL, '47', '47');

-- ----------------------------
-- Table structure for tb_style
-- ----------------------------
DROP TABLE IF EXISTS `tb_style`;
CREATE TABLE `tb_style`  (
  `lb_style_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '劳保样式主键',
  `lb_style1` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '春秋防护服的样式',
  `lb_style2` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '夏季防护服的样式',
  `lb_style3` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防油鞋的样式',
  `lb_style4` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防烫、砸、扎鞋的样式',
  `lb_style5` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防水胶靴的样式',
  `lb_style6` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防护帽安全帽的样式',
  `lb_style7` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分身雨衣的样式',
  `lb_style8` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉短大衣的样式',
  `lb_style9` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的样式',
  `lb_style10` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒裤的样式',
  `lb_style11` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒皮鞋的样式',
  `lb_style12` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防寒帽的样式',
  `lb_style13` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绝缘手套的样式',
  `lb_style14` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单绝缘鞋的样式',
  `lb_style15` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '棉绝缘鞋的样式',
  PRIMARY KEY (`lb_style_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_style
-- ----------------------------
INSERT INTO `tb_style` VALUES (1, '春秋防护服', '夏季防护服', '防油鞋', '防烫、砸、扎鞋', '防水胶靴', '防护帽安全帽', '分身雨衣', '棉短大衣', '防寒裤', '防寒皮鞋', '防寒帽', '防寒手套', '绝缘手套', '单绝缘鞋', '棉绝缘鞋');
INSERT INTO `tb_style` VALUES (2, '春秋防护服1', '夏季防护服1', '防油鞋1', '防烫、砸、扎鞋1', '防水胶靴1', '防护帽安全帽1', '分身雨衣1', '棉短大衣1', '防寒裤1', '防寒皮鞋1', '防寒帽1', '防寒手套1', '绝缘手套1', '单绝缘鞋1', '棉绝缘鞋1');
INSERT INTO `tb_style` VALUES (3, '春秋防护服2', '夏季防护服2', '防油鞋2', '防烫、砸、扎鞋2', '防水胶靴2', '防护帽安全帽2', '分身雨衣2', '棉短大衣2', '防寒裤2', '防寒皮鞋2', '防寒帽2', '防寒手套2', '绝缘手套2', '单绝缘鞋2', '棉绝缘鞋2');
INSERT INTO `tb_style` VALUES (4, '春秋防护服（男）', '夏季防护服（男）', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_style` VALUES (5, '春秋防护服（女）', '夏季防护服（女）', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_style` VALUES (6, '春秋防护服（男）带标志', '夏季防护服（男）带标志', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_style` VALUES (255, '春秋防护服（女）带标志', '夏季防护服（女）带标志', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
