-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询', '3', '1', 'list', 'rfid/list/index', 1, 0, 'C', '0', '0', 'rfid:list:list', '#', 'admin', sysdate(), '', null, '借阅查询菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'rfid:list:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'rfid:list:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'rfid:list:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'rfid:list:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('借阅查询导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'rfid:list:export',       '#', 'admin', sysdate(), '', null, '');