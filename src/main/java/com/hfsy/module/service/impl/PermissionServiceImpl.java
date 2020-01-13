package com.hfsy.module.service.impl;


import com.hfsy.module.dao.PermissionDao;
import com.hfsy.module.entity.Permission;
import com.hfsy.module.service.PermissionService;
import com.hfsy.module.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;

@Service
public class PermissionServiceImpl implements PermissionService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private PermissionDao permissionDao;
	@Autowired
	private UserService userService;

	@Override
	public void save(Permission permission) {
		permissionDao.save(permission);

		log.debug("新增菜单{}", permission.getName());
	}

	@Override
	public void update(Permission permission) {
		Set<Long> userIds = listUserIds(permission.getId());
		permissionDao.update(permission);
		userService.updateLoginUserCache(userIds);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		Set<Long> userIds = listUserIds(id);
		permissionDao.deleteRolePermission(id);
		permissionDao.delete(id);
		permissionDao.deleteByParentId(id);

		log.debug("删除菜单id:{}", id);
		userService.updateLoginUserCache(userIds);
	}

	private Set<Long> listUserIds(Long permissionId) {
		return permissionDao.listUserIds(permissionId);
	}

}
