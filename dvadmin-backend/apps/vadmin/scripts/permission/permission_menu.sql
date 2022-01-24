-- ----------------------------
-- 菜单管理初始化sql
-- Table structure for permission_menu
-- ----------------------------
-- DROP TABLE IF EXISTS `permission_menu`;
-- CREATE TABLE `permission_menu` (
--   `id` int(11) NOT NULL AUTO_INCREMENT,
--   `description` longtext,
--   `creator` varchar(255) DEFAULT NULL,
--   `modifier` varchar(255) DEFAULT NULL,
--   `update_datetime` datetime(6) DEFAULT NULL,
--   `create_datetime` datetime(6) DEFAULT NULL,
--   `menuType` varchar(8) NOT NULL,
--   `icon` varchar(64) DEFAULT NULL,
--   `name` varchar(64) NOT NULL,
--   `orderNum` int(11) NOT NULL,
--   `isFrame` varchar(8) NOT NULL,
--   `web_path` varchar(128) DEFAULT NULL,
--   `component_path` varchar(128) DEFAULT NULL,
--   `interface_path` varchar(256) DEFAULT NULL,
--   `interface_method` varchar(16) NOT NULL,
--   `perms` varchar(256) DEFAULT NULL,
--   `status` varchar(8) NOT NULL,
--   `visible` varchar(8) NOT NULL,
--   `isCache` varchar(8) NOT NULL,
--   `parentId_id` int(11) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   KEY `permission_menu_parentId_id_df49c7ef_fk_permission_menu_id` (`parentId_id`),
--   CONSTRAINT `permission_menu_parentId_id_df49c7ef_fk_permission_menu_id` FOREIGN KEY (`parentId_id`) REFERENCES `permission_menu` (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES (1, '', 'admin', '2021-02-27 07:50:00.410101', '2021-02-27 07:41:28.660364', '0', 'system', '系统管理', 1, '1', '/system', '', '', 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (2, '', 'admin', '2021-02-27 07:51:14.500722', '2021-02-27 07:51:14.500768', '0', 'peoples', '权限管理', 2, '1', '/permission', '', '', 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (3, '', 'admin', '2021-03-16 14:50:55.740451', '2021-02-27 07:54:38.630670', '1', 'dict', '字典管理', 1, '1', 'dict', 'vadmin/system/dict/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (4, '', 'admin', '2021-03-16 14:51:07.813189', '2021-02-27 08:06:51.019173', '1', 'edit', '参数管理', 2, '1', '/system/config', 'vadmin/system/config/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (5, '', 'admin', '2021-03-16 14:51:36.950198', '2021-02-27 08:25:37.339270', '1', 'post', '岗位管理', 1, '1', '/permission/post', 'vadmin/permission/post/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (6, '', 'admin', '2021-03-16 14:52:06.412883', '2021-02-27 08:26:48.454553', '1', 'tree', '部门管理', 2, '1', '/permission/dept', 'vadmin/permission/dept/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (7, '', 'admin', '2021-03-16 14:52:12.835100', '2021-02-27 08:28:20.411164', '1', 'tree-table', '菜单管理', 3, '1', '/permission/menu', 'vadmin/permission/menu/index', '', 'GET', '', '1', '1', '0', 1, 2);
INSERT INTO `permission_menu` VALUES (8, '', 'admin', '2021-03-16 14:52:31.046775', '2021-02-27 08:29:30.153361', '1', 'peoples', '角色管理', 4, '1', '/permission/role', 'vadmin/permission/role/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (9, '', 'admin', '2021-03-16 14:52:39.106512', '2021-02-27 08:30:14.030888', '1', 'user', '用户管理', 5, '1', '/permission/user', 'vadmin/permission/user/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (10, '', 'admin', '2021-02-27 08:37:24.948235', '2021-02-27 08:36:04.824117', '0', 'guide', 'dvAdmin官网', 9, '0', 'https://django-vue-admin.com', '', NULL, 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (11, '', 'admin', '2021-03-16 14:51:15.042512', '2021-02-27 16:17:36.685174', '1', 'job', '文件管理', 3, '1', '/system/savefile', 'vadmin/system/savefile/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (13, '', 'admin', '2021-03-03 14:41:08.227821', '2021-03-03 14:18:52.530449', '2', NULL, '用户新增', 1, '1', NULL, NULL, '/admin/permission/user/', 'POST', 'permission:user:post', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (14, '', 'admin', '2021-03-03 14:43:34.207938', '2021-03-03 14:43:34.208093', '2', NULL, '用户修改', 2, '1', NULL, NULL, '/admin/permission/user/{id}/', 'PUT', 'permission:user:{id}:put', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (15, '', 'admin', '2021-03-03 14:44:58.006289', '2021-03-03 14:44:58.006338', '2', NULL, '用户删除', 3, '1', '', NULL, '/admin/permission/user/{id}/', 'DELETE', 'permission:user:{id}:delete', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (16, '', 'admin', '2021-03-03 14:45:50.575443', '2021-03-03 14:45:50.575507', '2', NULL, '用户导出', 4, '1', NULL, NULL, '/admin/permission/user/export/', 'GET', 'permission:user:export:get', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (17, '', 'admin', '2021-03-03 14:51:14.157310', '2021-03-03 14:51:14.157447', '2', NULL, '用户导入', 5, '1', NULL, NULL, '/admin/permission/user/import/', 'POST', 'permission:user:import:post', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (18, '', 'admin', '2021-03-03 14:51:51.220886', '2021-03-03 14:51:51.220933', '2', NULL, '重置密码', 6, '1', NULL, NULL, '/admin/permission/user/resetPwd/', 'PUT', 'permission:user:resetpwd:put', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (19, '', 'admin', '2021-03-03 14:53:47.877063', '2021-03-03 14:53:47.877116', '2', NULL, '角色新增', 1, '1', NULL, NULL, '/admin/permission/role/', 'POST', 'permission:role:post', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (20, '', 'admin', '2021-03-03 14:54:28.794968', '2021-03-03 14:54:28.795015', '2', NULL, '角色修改', 2, '1', NULL, NULL, '/admin/permission/role/{id}/', 'PUT', 'permission:role:{id}:put', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (21, '', 'admin', '2021-03-03 14:58:00.798718', '2021-03-03 14:58:00.798813', '2', NULL, '删除角色', 3, '1', NULL, NULL, '/admin/permission/role/{id}/', 'DELETE', 'permission:role:{id}:delete', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (22, '', 'admin', '2021-03-03 14:58:28.940577', '2021-03-03 14:58:28.940625', '2', NULL, '角色导出', 4, '1', NULL, NULL, '/admin/permission/role/export/', 'GET', 'permission:role:export:get', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (23, '', 'admin', '2021-03-03 15:00:41.081771', '2021-03-03 15:00:41.081832', '2', NULL, '菜单新增', 1, '1', NULL, NULL, '/admin/permission/menus/', 'POST', 'permission:menus:post', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (24, '', 'admin', '2021-03-03 15:01:03.178824', '2021-03-03 15:01:03.178874', '2', NULL, '菜单修改', 2, '1', NULL, NULL, '/admin/permission/menus/{id}/', 'PUT', 'permission:menus:{id}:put', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (25, '', 'admin', '2021-03-03 15:02:56.123525', '2021-03-03 15:02:56.123571', '2', NULL, '菜单删除', 3, '1', NULL, NULL, '/admin/permission/menus/{id}/', 'DELETE', 'permission:menus:{id}:delete', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (26, '', 'admin', '2021-03-03 15:04:35.191774', '2021-03-03 15:04:35.191856', '2', NULL, '部门新增', 1, '1', NULL, NULL, '/admin/permission/dept/', 'POST', 'permission:dept:post', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (27, '', 'admin', '2021-03-03 15:04:56.963168', '2021-03-03 15:04:56.963214', '2', NULL, '部门修改', 2, '1', NULL, NULL, '/admin/permission/dept/{id}/', 'PUT', 'permission:dept:{id}:put', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (28, '', 'admin', '2021-03-03 15:05:39.602577', '2021-03-03 15:05:39.602622', '2', NULL, '部门删除', 3, '1', NULL, NULL, '/admin/permission/dept/{id}/', 'DELETE', 'permission:dept:{id}:delete', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (29, '', 'admin', '2021-03-03 15:06:50.095341', '2021-03-03 15:06:50.095388', '2', NULL, '岗位新增', 1, '1', NULL, NULL, '/admin/permission/post/', 'POST', 'permission:post:post', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (30, '', 'admin', '2021-03-03 15:07:36.013313', '2021-03-03 15:07:36.013358', '2', NULL, '岗位修改', 2, '1', NULL, NULL, '/admin/permission/post/{id}/', 'PUT', 'permission:post:{id}:put', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (31, '', 'admin', '2021-03-03 15:08:10.371530', '2021-03-03 15:08:10.371575', '2', NULL, '岗位删除', 3, '1', NULL, NULL, '/admin/permission/post/{id}/', 'DELETE', 'permission:post:{id}:delete', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (32, '', 'admin', '2021-03-03 15:09:02.213084', '2021-03-03 15:09:02.213131', '2', NULL, '岗位导出', 4, '1', NULL, NULL, '/admin/permission/post/export/', 'GET', 'permission:post:export:get', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (33, '', 'admin', '2021-03-03 15:11:37.616329', '2021-03-03 15:11:37.616415', '2', NULL, '字典新增', 1, '1', NULL, NULL, '/admin/system/dict/type/', 'POST', 'system:dict:type:post', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (34, '', 'admin', '2021-03-03 15:12:47.237658', '2021-03-03 15:12:47.237713', '2', NULL, '字典修改', 2, '1', NULL, NULL, '/admin/system/dict/type/{id}/', 'PUT', 'system:dict:type:{id}:put', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (35, '', 'admin', '2021-03-03 15:13:40.185174', '2021-03-03 15:13:40.185230', '2', NULL, '字典删除', 3, '1', NULL, NULL, '/admin/system/dict/type/{id}/', 'DELETE', 'system:dict:type:{id}:delete', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (36, '', 'admin', '2021-03-03 15:15:12.950584', '2021-03-03 15:15:12.950684', '2', NULL, '字典导出', 4, '1', NULL, NULL, '/admin/system/dict/type/export/', 'GET', 'system:dict:type:export:get', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (37, '', 'admin', '2021-03-03 15:16:54.709780', '2021-03-03 15:16:20.868146', '2', NULL, '清理缓存', 5, '1', NULL, NULL, '/admin/system/dict/type/clearCache/', 'DELETE', 'system:dict:type:clearcache:delete', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (38, '', 'admin', '2021-03-03 15:17:54.232085', '2021-03-03 15:17:54.232166', '2', NULL, '参数新增', 1, '1', NULL, NULL, '/admin/system/config/', 'POST', 'system:config:post', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (39, '', 'admin', '2021-03-03 15:18:37.088187', '2021-03-03 15:18:37.088237', '2', NULL, '参数修改', 2, '1', NULL, NULL, '/admin/system/config/{id}/', 'PUT', 'system:config:{id}:put', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (40, '', 'admin', '2021-03-03 15:19:05.532556', '2021-03-03 15:19:05.532616', '2', NULL, '参数删除', 3, '1', NULL, NULL, '/admin/system/config/{id}/', 'DELETE', 'system:config:{id}:delete', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (41, '', 'admin', '2021-03-03 15:19:49.576174', '2021-03-03 15:19:49.576221', '2', NULL, '参数导出', 4, '1', NULL, NULL, '/admin/system/config/export/', 'GET', 'system:config:export:get', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (42, '', 'admin', '2021-03-03 15:21:20.098250', '2021-03-03 15:21:20.098345', '2', NULL, '清理缓存', 5, '1', NULL, NULL, '/admin/system/config/clearCache/', 'DELETE', 'system:config:clearcache:delete', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (43, '', 'admin', '2021-03-03 15:22:48.492613', '2021-03-03 15:22:48.492666', '2', NULL, '文件上传', 1, '1', NULL, NULL, '/admin/system/savefile/', 'POST', 'system:savefile:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (44, '', 'admin', '2021-03-03 15:23:58.219105', '2021-03-03 15:23:58.219155', '2', NULL, '文件删除', 2, '1', NULL, NULL, '/admin/system/savefile/{id}/', 'DELETE', 'system:savefile:{id}:delete', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (45, '', 'admin', '2021-03-03 15:25:15.224971', '2021-03-03 15:25:15.225018', '2', NULL, '清理废弃文件', 3, '1', NULL, NULL, '/admin/system/clearsavefile/', 'POST', 'system:clearsavefile:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (46, '', 'admin', '2021-03-03 15:28:30.061632', '2021-03-03 15:27:19.945663', '2', NULL, '文件下载', 4, '1', NULL, NULL, NULL, 'GET', 'system:clearsavefile:download:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (47, '', 'admin', '2021-03-16 14:51:22.015400', '2021-03-07 14:32:06.754815', '1', 'message', '通知公告', 4, '1', 'system/message', 'vadmin/system/message/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (48, '', 'admin', '2021-03-07 14:35:06.718432', '2021-03-07 14:35:06.718463', '2', NULL, '发布公告', 1, '1', NULL, NULL, '/admin/system/message/', 'POST', 'system:message:post', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (49, '', 'admin', '2021-03-08 13:04:32.158707', '2021-03-07 14:36:47.675837', '2', NULL, '修改公告', 2, '1', NULL, NULL, '/admin/system/message/{id}/', 'PUT', 'system:message:{id}:put', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (50, '', 'admin', '2021-03-08 13:04:58.206693', '2021-03-07 14:37:52.130567', '2', NULL, '删除公告', 3, '1', NULL, NULL, '/admin/permission/menu/{id}/', 'DELETE', 'permission:menu:{id}:delete', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (51, '', 'admin', '2021-03-07 14:42:37.410336', '2021-03-07 14:42:37.410366', '2', NULL, '公告导出', 4, '1', NULL, NULL, '/admin/system/message/export/', 'GET', 'system:message:export:get', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (52, '', 'admin', '2021-03-09 17:19:13.828166', '2021-03-09 17:18:14.976783', '2', NULL, '字典查询', 0, '1', NULL, NULL, '/admin/system/dict/type/', 'GET', 'system:dict:type:get', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (53, '', 'admin', '2021-03-09 17:19:46.963317', '2021-03-09 17:19:33.953559', '2', NULL, '参数查询', 0, '1', NULL, NULL, '/admin/system/config/', 'GET', 'system:config:get', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (54, '', 'admin', '2021-03-09 17:20:14.749627', '2021-03-09 17:20:02.783389', '2', NULL, '文件查询', 0, '1', NULL, NULL, '/admin/system/savefile/', 'GET', 'system:savefile:get', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (55, '', 'admin', '2021-03-09 17:20:44.604824', '2021-03-09 17:20:36.025364', '2', NULL, '公告查询', 0, '1', NULL, NULL, '/admin/system/message/', 'GET', 'system:message:get', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (56, '', 'admin', '2021-03-09 17:21:06.429585', '2021-03-09 17:21:06.429629', '2', NULL, '岗位查询', 0, '1', NULL, NULL, '/admin/permission/post/', 'GET', 'permission:post:get', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (57, '', 'admin', '2021-03-09 17:21:29.013165', '2021-03-09 17:21:29.013210', '2', NULL, '部门查询', 0, '1', NULL, NULL, '/admin/permission/dept/', 'GET', 'permission:dept:get', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (58, '', 'admin', '2021-03-09 17:21:56.243957', '2021-03-09 17:21:47.358360', '2', NULL, '菜单查询', 0, '1', NULL, NULL, '/admin/permission/menus/', 'GET', 'permission:menus:get', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (59, '', 'admin', '2021-03-09 17:22:20.140143', '2021-03-09 17:22:20.140189', '2', NULL, '角色查询', 0, '1', '', NULL, '/admin/permission/role/', 'GET', 'permission:role:get', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (60, '', 'admin', '2021-03-09 17:22:38.595706', '2021-03-09 17:22:38.595751', '2', NULL, '用户查询', 0, '1', NULL, NULL, '/admin/permission/user/', 'GET', 'permission:user:get', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (61, '', 'admin', '2021-03-21 11:34:17.635680', '2021-03-16 13:34:04.148728', '0', 'log', '日志管理', 5, '1', 'log', 'ParentView', NULL, 'GET', NULL, '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (62, '', 'admin', '2021-03-16 15:09:30.396752', '2021-03-16 13:36:00.114652', '1', 'logininfor', '登录日志', 1, '1', 'logininfor', 'vadmin/monitor/logininfor/index', '', 'GET', '', '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (63, '', 'admin', '2021-03-16 15:09:38.015636', '2021-03-16 14:28:10.395273', '1', 'log', '操作日志', 2, '1', 'operlog', 'vadmin/monitor/operlog/index', '', 'GET', '', '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (64, '', 'admin', '2021-03-16 14:31:27.618230', '2021-03-16 14:31:01.026470', '2', NULL, '登录日志查询', 1, '1', NULL, NULL, '/admin/system/logininfor/', 'GET', 'admin:system:logininfor:get', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (65, '', 'admin', '2021-03-16 14:31:44.112525', '2021-03-16 14:31:44.112572', '2', NULL, '操作日志查询', 1, '1', NULL, NULL, '/admin/system/operlog/', 'GET', 'admin:system:operlog:get', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (66, '', 'admin', '2021-03-16 14:33:05.482942', '2021-03-16 14:33:05.483003', '0', 'monitor', '系统监控', 3, '1', 'monitor', NULL, NULL, 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (67, '', 'admin', '2021-03-16 14:49:59.260322', '2021-03-16 14:34:59.165065', '1', 'online', '在线用户', 1, '1', 'online', 'vadmin/monitor/online/index', '', 'GET', '', '1', '1', '1', 1, 66);
INSERT INTO `permission_menu` VALUES (68, '', 'admin', '2021-03-16 14:36:00.989981', '2021-03-16 14:35:50.894454', '2', NULL, '在线用户查询', 1, '1', NULL, NULL, '/admin/monitor/online/', 'GET', 'admin:monitor:online:get', '1', '1', '1', 1, 67);
INSERT INTO `permission_menu` VALUES (69, '', 'admin', '2021-03-16 14:37:10.577186', '2021-03-16 14:37:10.577231', '2', NULL, '用户强退', 2, '1', NULL, NULL, '/admin/monitor/online/{id}/', 'PUT', 'admin:monitor:online:{id}:put', '1', '1', '1', 1, 67);
INSERT INTO `permission_menu` VALUES (70, '', 'admin', '2021-03-16 15:04:21.404578', '2021-03-16 14:45:51.507961', '1', 'job', '定时任务', 2, '1', 'celery', 'vadmin/monitor/celery/index', '', 'GET', NULL, '1', '1', '1', 1, 66);
INSERT INTO `permission_menu` VALUES (71, '', 'admin', '2021-03-16 15:04:11.799260', '2021-03-16 14:59:53.619219', '2', NULL, '任务查询', 1, '1', NULL, NULL, '/admin/monitor/celery/', 'GET', 'admin:monitor:celery:get', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (72, '', 'admin', '2021-03-16 15:04:06.645135', '2021-03-16 15:00:21.809600', '2', NULL, '任务新增', 2, '1', NULL, NULL, '/admin/monitor/celery/', 'POST', 'admin:monitor:celery:post', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (73, '', 'admin', '2021-03-16 15:04:00.041701', '2021-03-16 15:00:45.994228', '2', NULL, '任务修改', 3, '1', NULL, NULL, '/admin/monitor/celery/{id}/', 'PUT', 'admin:monitor:celery:{id}:put', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (74, '', 'admin', '2021-03-16 15:03:54.891216', '2021-03-16 15:01:19.624182', '2', NULL, '任务删除', 4, '1', NULL, NULL, '/admin/monitor/celery/{id}/', 'DELETE', 'admin:monitor:celery:{id}:delete', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (75, '', 'admin', '2021-03-16 15:07:03.505007', '2021-03-16 15:03:35.796596', '2', NULL, '任务单次执行', 6, '1', NULL, NULL, '/admin/monitor/celery/run/', 'PUT', 'admin:monitor:celery:run:put', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (76, '', 'admin', '2021-03-16 15:08:09.768588', '2021-03-16 15:07:45.064547', '2', NULL, '任务导出', 5, '1', NULL, NULL, '/admin/monitor/celery/export/', 'GET', 'admin:monitor:celery:export:get', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (77, '', 'admin', '2021-03-16 15:09:09.928480', '2021-03-16 15:08:46.299829', '2', NULL, '登录日志导出', 2, '1', NULL, NULL, '/admin/system/logininfor/export/', 'GET', 'admin:system:logininfor:export:get', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (78, '', 'admin', '2021-03-16 15:09:59.500271', '2021-03-16 15:09:59.500333', '2', NULL, '操作日志导出', 2, '1', NULL, NULL, '/admin/system/operlog/export/', 'GET', 'admin:system:operlog:export:get', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (79, '', 'admin', '2021-03-16 15:13:41.377208', '2021-03-16 15:11:05.675729', '1', 'job', '定时日志', 3, '1', 'celerylog', 'vadmin/monitor/celerylog/index', NULL, 'GET', NULL, '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (80, '', 'admin', '2021-03-16 15:16:29.349992', '2021-03-16 15:12:19.707979', '2', NULL, '定时日志查询', 1, '1', NULL, NULL, '/admin/monitor/celerylog/', 'GET', 'admin:monitor:celerylog:get', '1', '1', '1', 1, 79);
INSERT INTO `permission_menu` VALUES (81, '', 'admin', '2021-03-16 15:16:34.419420', '2021-03-16 15:12:51.090410', '2', NULL, '定时日志导出', 2, '1', NULL, NULL, '/admin/monitor/celerylog/export/', 'GET', 'admin:monitor:celerylog:export:get', '1', '1', '1', 1, 79);
INSERT INTO `permission_menu` VALUES (82, '', 'admin', '2021-03-16 15:15:21.397132', '2021-03-16 15:15:21.397186', '0', 'tool', '系统工具', 4, '1', 'tool', NULL, NULL, 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (83, '', 'admin', '2021-03-16 15:16:10.318380', '2021-03-16 15:16:10.318426', '1', 'build', '表单构建', 1, '1', 'build', 'vadmin/tool/build/index', NULL, 'GET', NULL, '1', '1', '1', 1, 82);
INSERT INTO `permission_menu` VALUES (84, '', 'admin', '2021-03-16 15:19:24.228395', '2021-03-16 15:17:23.507732', '1', 'swagger', '系统接口', 2, '1', 'swagger', 'vadmin/tool/swagger/index', '/admin/docs/', 'GET', 'admin:docs:get', '1', '1', '1', 1, 82);
INSERT INTO `permission_menu` VALUES (85, '', 'admin', '2021-03-21 11:37:06.119591', '2021-03-21 11:37:06.119623', '2', NULL, '操作日志批量删除', 3, '1', NULL, NULL, '/admin/system/operation_log/{id}/', 'DELETE', 'admin:system:operation_log:{id}:delete', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (86, '', 'admin', '2021-03-21 11:39:07.579469', '2021-03-21 11:39:07.579517', '2', NULL, '操作日志清空', 4, '1', NULL, NULL, '/admin/system/operation_log/clean/', 'DELETE', 'admin:system:operation_log:clean:delete', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (87, '', 'admin', '2021-03-21 23:32:44.308857', '2021-03-21 23:32:44.308882', '2', NULL, '登录日志批量删除', 3, '1', NULL, NULL, '/admin/system/logininfor/{id}/', 'DELETE', 'admin:system:logininfor:{id}:delete', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (88, '', 'admin', '2021-03-21 23:33:30.888568', '2021-03-21 23:33:30.888593', '2', NULL, '登录日志清空', 4, '1', NULL, NULL, '/admin/system/logininfor/clean/', 'DELETE', 'admin:system:logininfor:clean:delete', '1', '1', '1', 1, 62);
