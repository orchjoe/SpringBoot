package cn.codelion.plugins.quartz.job;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.codelion.core.util.DateUtils;

public class NewJob implements BaseJob {

	private static Logger logger = LoggerFactory.getLogger(NewJob.class);

	public NewJob() {

	}

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		logger.error("New Job执行时间: " + DateUtils.toDateStringYMDHMSSSS(new Date()));

	}
}