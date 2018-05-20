package cn.codelion.plugins.quartz.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.codelion.plugins.quartz.dao.JobAndTriggerMapper;
import cn.codelion.plugins.quartz.entity.JobAndTrigger;
import cn.codelion.plugins.quartz.service.IJobAndTriggerService;


@Service
public class JobAndTriggerImpl implements IJobAndTriggerService{

	@Autowired
	private JobAndTriggerMapper jobAndTriggerMapper;
	
	@Override
	public List<JobAndTrigger> getJobAndTriggerDetails() {
		List<JobAndTrigger> list = jobAndTriggerMapper.getJobAndTriggerDetails();
		return list;
	}

}