package cn.codelion.plugins.quartz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import cn.codelion.plugins.quartz.entity.JobAndTrigger;
@Mapper
public interface JobAndTriggerMapper {
	public List<JobAndTrigger> getJobAndTriggerDetails();
}
