/**
 * @fileName:  WebConfig.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年5月20日 下午3:59:22
 */ 
package cn.codelion.core.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

import cn.codelion.core.interceptors.LoggerInterceptor;

/** 
 * @author  QiaoYu[www.codelion.cn]
 */
@Component
@Configuration
public class WebConfig extends WebMvcConfigurationSupport {
	public static final Logger logger = LoggerFactory.getLogger(WebConfig.class);
	@Bean
	public LoggerInterceptor loggerInterceptor(){
		return new LoggerInterceptor();
	}
	

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(loggerInterceptor()).addPathPatterns("/**");
        super.addInterceptors(registry);
        logger.info("loggerInterceptor日志拦截器启动........");
        
    }

}