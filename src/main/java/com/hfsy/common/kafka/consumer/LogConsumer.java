package com.hfsy.common.kafka.consumer;

import com.alibaba.fastjson.JSON;
import com.hfsy.module.entity.SysLogs;
import com.hfsy.module.service.SysLogService;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

import java.util.Optional;

/**
 * @author jensen
 * @description 日志消费者
 * @date 2020/1/13 19:22
 */
@Component
public class LogConsumer {

    private Logger logger = LoggerFactory.getLogger("adminLogger");

    @Autowired
    private SysLogService sysLogService;

    @KafkaListener(topics = {"log_topic"})
    public void receiveMessage(ConsumerRecord<?, ?> record) {
        Optional<?> kafkaMessage = Optional.ofNullable(record.value());
        if (kafkaMessage.isPresent()) {
            SysLogs sysLogs = JSON.parseObject(kafkaMessage.get().toString(),SysLogs.class);
            logger.info("kafka消费入参{}", JSON.toJSONString(sysLogs));
            sysLogService.save(sysLogs.getId(),sysLogs.getModule(),sysLogs.getFlag(),sysLogs.getRemark());
        }
    }


}
