package cn.codelion.plugins.quartz.config;

import java.io.IOException;
import java.util.Properties;

import org.quartz.Scheduler;
import org.quartz.ee.servlet.QuartzInitializerListener;
import org.springframework.beans.factory.config.PropertiesFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.core.io.ClassPathResource;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;

import cn.codelion.core.util.YMLUtil;
@Order(100)
@Configuration
public class SchedulerConfig {
	@Bean(name = "SchedulerFactory")
	public SchedulerFactoryBean schedulerFactoryBean() throws IOException {
		SchedulerFactoryBean factory = new SchedulerFactoryBean();
		factory.setQuartzProperties(quartzProperties());
		return factory;
	}

	@Bean
	public Properties quartzProperties() throws IOException {
		PropertiesFactoryBean propertiesFactoryBean = new PropertiesFactoryBean();
		String env = YMLUtil.getSpringEnv();
		propertiesFactoryBean.setLocation(new ClassPathResource("/config/quartz-"+env+".properties"));
		// 在quartz.properties中的属性被读取并注入后再初始化对象
		propertiesFactoryBean.afterPropertiesSet();
		return propertiesFactoryBean.getObject();
	}

	/*
	 * quartz初始化监听器
	 */
	@Bean
	public QuartzInitializerListener executorListener() {
		return new QuartzInitializerListener();
	}

	/*
	 * 通过SchedulerFactoryBean获取Scheduler的实例
	 */
	@Bean(name = "scheduler")
	public Scheduler scheduler() throws IOException {
		return schedulerFactoryBean().getScheduler();
	}

}
