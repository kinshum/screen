package com.hfsy.module.service;

import com.hfsy.module.dto.RoleDto;

public interface RoleService {

	void saveRole(RoleDto roleDto);

	void deleteRole(Long id);
}
