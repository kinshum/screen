package com.hfsy.module.service;


import com.hfsy.module.dto.LoginUser;
import com.hfsy.module.dto.Token;

/**
 * Token管理器
 *
 */
public interface TokenService {

	Token saveToken(LoginUser loginUser);

	void updateLoginUser(LoginUser loginUser);

	LoginUser getLoginUser(String token);

	boolean deleteToken(String token);

	String getTokenByUserId(Long userId);

}
