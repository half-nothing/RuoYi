-- 菜单 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理', '3', '1', 'teacher', 'system/teacher/index', 1, 0, 'C', '0', '0', 'system:teacher:list', '#', 'admin', sysdate(), '', null, '教师管理菜单');

-- 按钮父菜单ID
SELECT @parentId := LAST_INSERT_ID();

-- 按钮 SQL
insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理查询', @parentId, '1',  '#', '', 1, 0, 'F', '0', '0', 'system:teacher:query',        '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理新增', @parentId, '2',  '#', '', 1, 0, 'F', '0', '0', 'system:teacher:add',          '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理修改', @parentId, '3',  '#', '', 1, 0, 'F', '0', '0', 'system:teacher:edit',         '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理删除', @parentId, '4',  '#', '', 1, 0, 'F', '0', '0', 'system:teacher:remove',       '#', 'admin', sysdate(), '', null, '');

insert into sys_menu (menu_name, parent_id, order_num, path, component, is_frame, is_cache, menu_type, visible, status, perms, icon, create_by, create_time, update_by, update_time, remark)
values('教师管理导出', @parentId, '5',  '#', '', 1, 0, 'F', '0', '0', 'system:teacher:export',       '#', 'admin', sysdate(), '', null, '');