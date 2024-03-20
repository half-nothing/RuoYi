-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定', '3', '1', 'rfid', 'system/rfid/index', 1, 0, 'C', '0', '0', 'system:rfid:list', '#', 'admin', sysdate(), '', null, 'RFID绑定菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'system:rfid:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'system:rfid:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'system:rfid:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'system:rfid:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('RFID绑定导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'system:rfid:export',       '#', 'admin', sysdate(), '', null, '');