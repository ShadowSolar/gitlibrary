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

 Date: 17/06/2020 16:13:48
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
  `xuhao` tinyint(2) NOT NULL COMMENT '序号',
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
  `no` smallint(255) NOT NULL COMMENT '工号',
  `name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `id` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '身份证号',
  `cap` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '首字母',
  `bumen` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门',
  `banzu` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '班组',
  `zhiwu` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '职务',
  `biaozhun` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '发放标准',
  `state` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `male` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
  `sign` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '带反光条？',
  `size_lb1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '春秋防护服的尺码',
  `size_lb2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '夏季防护服的尺码',
  `size_lb3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防油鞋的尺码',
  `size_lb4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防烫、砸、扎鞋的尺码',
  `size_lb5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防水胶靴的尺码',
  `size_lb6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防护帽安全帽的尺码',
  `size_lb7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分身雨衣的尺码',
  `size_lb8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '棉短大衣的尺码',
  `size_lb9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒裤的尺码',
  `size_lb10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒皮鞋的尺码',
  `size_lb11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒帽的尺码',
  `size_lb12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒手套的尺码',
  `size_lb13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '绝缘手套的尺码',
  `size_lb14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单绝缘鞋的尺码',
  `size_lb15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '棉绝缘鞋的尺码',
  `lb1` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '春秋防护服的记录',
  `lb2` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '夏季防护服的记录',
  `lb3` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防油鞋的记录',
  `lb4` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防烫、砸、扎鞋的记录',
  `lb5` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防水胶靴的记录',
  `lb6` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防护帽安全帽的记录',
  `lb7` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '分身雨衣的记录',
  `lb8` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '棉短大衣的记录',
  `lb9` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒裤的记录',
  `lb10` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒皮鞋的记录',
  `lb11` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒帽的记录',
  `lb12` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '防寒手套的记录',
  `lb13` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '绝缘手套的记录',
  `lb14` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '单绝缘鞋的记录',
  `lb15` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '棉绝缘鞋的记录',
  PRIMARY KEY (`no`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_emp
-- ----------------------------
INSERT INTO `tb_emp` VALUES (1, '李会明', '123456789123456789', 'LHM', '科室', '安全科', '代技术员', '段科室人员', '正常', '男', '普通', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放');
INSERT INTO `tb_emp` VALUES (2, '李鲲鹏', '123456789123456789', 'LKP', '科室', '安全科', '科长', '段科室人员', '正常', '正常', '带标志', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未上报', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '2020-05-06', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放', '未发放');

SET FOREIGN_KEY_CHECKS = 1;
