/**
 * @fileName:  QuartzConfig.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu 
 * @CreateDate:  2018年3月1日 上午10:18:07
 */
package cn.codelion.core.config;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

/**
 * @author QiaoYu
 */
@Component
@PropertySource(value = { "classpath:config/system.properties" }, encoding = "utf-8", ignoreResourceNotFound = true)
public class SystemConfig {
	public static final Logger logger = LoggerFactory.getLogger(SystemConfig.class);
	@Value("${system.name}")
	public String id;

	@PostConstruct
	public void init() {
		logger.debug("欢迎使用:" + id);
	}
}
