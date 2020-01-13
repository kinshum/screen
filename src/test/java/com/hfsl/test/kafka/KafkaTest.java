package com.hfsl.test.kafka;

import com.alibaba.druid.support.json.JSONUtils;
import com.alibaba.fastjson.JSON;
import com.hfsy.ScreenApplication;
import com.hfsy.module.dao.SysLogsDao;
import com.hfsy.module.entity.SysLogs;
import com.hfsy.module.entity.SysUser;
import com.hfsy.module.service.KafkaService;
import com.hfsy.module.service.SysLogService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * @author jensen
 * @description
 * @date 2020/1/13 19:16
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = ScreenApplication.class)
public class KafkaTest {


    @Autowired
    KafkaService kafkaService;

    @Autowired
    SysLogService sysLogService;


    /**
     * kafka消费日志存入sys_logs表
     */
    @Test
    public void kafkaTest() {
        for (int i = 0; i < 10; i++) {
            SysLogs sysLogs = new SysLogs(1l, "登陆", true, "kafka消费第" + i + "次");
            SysUser user = new SysUser();
            user.setId(1l);
            sysLogs.setUser(user);
            String string = JSON.toJSONString(sysLogs);
            kafkaService.send("log_topic", string);
        }
    }


}
