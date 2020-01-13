package com.hfsy.module.service;


import com.hfsy.module.entity.JobModel;
import org.quartz.JobDataMap;
import org.quartz.SchedulerException;

public interface JobService {

	void saveJob(JobModel jobModel);

	void doJob(JobDataMap jobDataMap);

	void deleteJob(Long id) throws SchedulerException;
}
