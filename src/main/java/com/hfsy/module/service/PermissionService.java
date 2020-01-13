package com.hfsy.module.service;


import com.hfsy.module.entity.Permission;

public interface PermissionService {

	void save(Permission permission);

	void update(Permission permission);

	void delete(Long id);
}
