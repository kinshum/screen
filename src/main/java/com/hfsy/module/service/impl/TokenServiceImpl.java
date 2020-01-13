package com.hfsy.module.service.impl;

import com.hfsy.module.dto.LoginUser;
import com.hfsy.module.dto.Token;
import com.hfsy.module.service.SysLogService;
import com.hfsy.module.service.TokenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

@Service
public class TokenServiceImpl implements TokenService {

	/**
	 * token过期秒数
	 */
	@Value("${token.expire.seconds}")
	private Integer expireSeconds;
	@Autowired
	private RedisTemplate<String, LoginUser> redisTemplate;
	@Autowired
	private RedisTemplate<String, String> idTokenRedisTemplate;
	@Autowired
	private SysLogService logService;

	@Override
	public Token saveToken(LoginUser loginUser) {
		String token = getTokenByUserId(loginUser.getId());
		if (StringUtils.isEmpty(token)) {
			token = UUID.randomUUID().toString();
		}

		loginUser.setToken(token);
		updateLoginUser(loginUser);
		logService.save(loginUser.getId(), "登陆", true, null);

		return new Token(token);
	}

	/**
	 * 更新缓存的用户信息
	 */
	@Override
	public void updateLoginUser(LoginUser loginUser) {
		redisTemplate.boundValueOps(getTokenKey(loginUser.getToken())).set(loginUser, expireSeconds, TimeUnit.SECONDS);
		idTokenRedisTemplate.boundValueOps(getUserIdKey(loginUser.getId())).set(loginUser.getToken(), expireSeconds,
				TimeUnit.SECONDS);
	}

	@Override
	public LoginUser getLoginUser(String token) {
		return redisTemplate.boundValueOps(getTokenKey(token)).get();
	}

	@Override
	public boolean deleteToken(String token) {
		String key = getTokenKey(token);
		LoginUser loginUser = redisTemplate.opsForValue().get(key);
		if (loginUser != null) {
			redisTemplate.delete(key);
			redisTemplate.delete(getUserIdKey(loginUser.getId()));
			logService.save(loginUser.getId(), "退出", true, null);

			return true;
		}

		return false;
	}

	private String getTokenKey(String token) {
		return "tokens:" + token;
	}

	private String getUserIdKey(Long userId) {
		return "users:id:" + userId;
	}

	/**
	 * 根据userId获取token
	 */
	@Override
	public String getTokenByUserId(Long userId) {
		return idTokenRedisTemplate.opsForValue().get(getUserIdKey(userId));
	}

}
