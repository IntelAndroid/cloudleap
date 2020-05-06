#商家管理员表
CREATE TABLE `yun_admin_user` (
`admin_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
`user_name` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
`password` varchar(255) NOT NULL DEFAULT '' COMMENT '登录密码',
`create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
`update_time` int(11) NOT NULL COMMENT '更新时间',
PRIMARY KEY (`admin_user_id`),
KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='商家管理员表';

# 商家用户权限表
CREATE TABLE `yun_store_access` (
`access_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
`name` varchar(255) NOT NULL DEFAULT '' COMMENT '权限名称',
`url` varchar(255) NOT NULL DEFAULT '' COMMENT '权限url',
`parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
`sort` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT '排序(数字越小越靠前)',
`create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
`update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
PRIMARY KEY (`access_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='商家用户权限表';

# 商家用户角色表
CREATE TABLE `yun_store_role` (
`role_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
`role_name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名称',
`parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级角色id',
`sort` tinyint(3) unsigned NOT NULL DEFAULT '100' COMMENT '排序(数字越小越靠前)',
`app_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '应用id',
`create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
`update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='商家用户角色表';

# 商家用户角色权限关系表
CREATE TABLE `yun_store_role_access` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
`role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
`access_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '权限id',
`app_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '应用id',
`create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
PRIMARY KEY (`id`),
KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='商家用户角色权限关系表';

# 商家用户角色记录表
CREATE TABLE `yun_store_user_role` (
`id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
`store_user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '超管用户id',
`role_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色id',
`app_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '应用id',
`create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
PRIMARY KEY (`id`),
KEY `admin_user_id` (`store_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='商家用户角色记录表';