package com.hfsy.module.service;


import com.hfsy.module.dto.UserDto;
import com.hfsy.module.entity.SysUser;

import java.util.Set;

public interface UserService {

	SysUser saveUser(UserDto userDto);

	SysUser updateUser(UserDto userDto);

	SysUser getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

	void updateLoginUserCache(Set<Long> userIds);
}
