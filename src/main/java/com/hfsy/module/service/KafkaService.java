package com.hfsy.module.service;

import com.hfsy.common.result.Result;

/**
 * @author jensen
 * @description
 * @date 2020/1/13 19:13
 */
public interface KafkaService {


    Result send(String topic,String msg);
}
