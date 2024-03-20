CREATE TABLE IF NOT EXISTS `ry-vue`.`sys_rfid`
(
    `id`        int          NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
    `rfid_id`   char(32)     NOT NULL COMMENT 'RFID的ID',
    `bind_name` varchar(255) NOT NULL COMMENT '绑定到此RFID的物品名称',
    PRIMARY KEY (`id`, `rfid_id`),
    INDEX `rfid` (`rfid_id`, `bind_name`) USING BTREE COMMENT 'rfid索引'
);

CREATE TABLE IF NOT EXISTS `ry-vue`.`sys_teacher`
(
    `id`           int          NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
    `teacher_id`   char(32)     NOT NULL COMMENT '教师号',
    `teacher_name` varchar(255) NOT NULL COMMENT '教师姓名',
    PRIMARY KEY (`id`, `teacher_id`),
    INDEX `teacher` (`teacher_id`, `teacher_name`) USING BTREE COMMENT '教师索引'
);

CREATE TABLE IF NOT EXISTS `ry-vue`.`sys_borrow_list`
(
    `id`           int          NOT NULL AUTO_INCREMENT COMMENT '自增主键ID',
    `rfid_id`      char(32)     NOT NULL COMMENT 'RFID的ID',
    `bind_name`    varchar(255) NOT NULL COMMENT '绑定到此RFID的物品名称',
    `teacher_id`   char(32)     NOT NULL COMMENT '教师号',
    `teacher_name` varchar(255) NOT NULL COMMENT '教师姓名',
    `returned`     tinyint      NOT NULL COMMENT '是否归还',
    `borrow_time`  datetime     NOT NULL COMMENT '借出时间',
    `return_time`  datetime     NULL COMMENT '归还时间',
    PRIMARY KEY (`id`, `rfid_id`, `teacher_id`),
    CONSTRAINT `rfid_key` FOREIGN KEY (`rfid_id`, `bind_name`) REFERENCES `ry-vue`.`sys_rfid` (`rfid_id`, `bind_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT `teacher_key` FOREIGN KEY (`teacher_id`, `teacher_name`) REFERENCES `ry-vue`.`sys_teacher` (`teacher_id`, `teacher_name`) ON DELETE RESTRICT ON UPDATE CASCADE
);
