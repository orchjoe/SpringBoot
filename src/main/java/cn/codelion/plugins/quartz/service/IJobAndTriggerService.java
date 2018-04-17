package cn.codelion.plugins.quartz.service;


import java.util.List;

import cn.codelion.plugins.quartz.entity.JobAndTrigger;

public interface IJobAndTriggerService {
	public List<JobAndTrigger> getJobAndTriggerDetails();
}
