package com.hfsy.module.service;


import com.hfsy.module.entity.SysLogs;

/**
 * 日志service

 */
public interface SysLogService {

	void save(SysLogs sysLogs);

	void save(Long userId, String module, Boolean flag, String remark);

	void deleteLogs();
}
