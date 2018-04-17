/**
 * @fileName:  ActiveMqConfig.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年3月28日 下午12:01:22
 */
package cn.codelion.plugins.activemq.config;

import javax.jms.ConnectionFactory;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jms.config.JmsListenerContainerFactory;
import org.springframework.jms.config.SimpleJmsListenerContainerFactory;

import cn.codelion.plugins.activemq.handler.JmsErrorHandler;

/**
 * @author QiaoYu[www.codelion.cn]
 */
@Configuration
public class ActiveMqConfig {
	private static final Logger logger = LoggerFactory.getLogger(ActiveMqConfig.class);
	@Bean
	public JmsListenerContainerFactory<?> myJmsContainerFactory(ConnectionFactory connectionFactory) {
		SimpleJmsListenerContainerFactory factory = new SimpleJmsListenerContainerFactory();
		factory.setConnectionFactory(connectionFactory);
		factory.setPubSubDomain(true);
//		AUTO_ACKNOWLEDGE = 1 ：自动确认
//		CLIENT_ACKNOWLEDGE = 2：客户端手动确认 
//		DUPS_OK_ACKNOWLEDGE = 3： 自动批量确认
//		SESSION_TRANSACTED = 0：事务提交并确认
//		但是在activemq补充了一个自定义的ACK模式:
//		INDIVIDUAL_ACKNOWLEDGE = 4：单条消息确认
		
		logger.debug("ActiveMQ使用客户端手动确认模式.........");
		factory.setSessionAcknowledgeMode(2);
		//就是当设置sessionAcknowledgeMode为2时，虽然是客户端手动确认，但是却被spring自动确认了，造成设置无效。这时只需要把sessionAcknowledgeMode的值设置成activemq自定义的类型INDIVIDUAL_ACKNOWLEDGE = 4即可。
		//factory.setSessionAcknowledgeMode(2);'
		logger.debug("ActiveMQ使用错误JMSErrorHandler.........");
		factory.setErrorHandler(new JmsErrorHandler());
		logger.debug("初始化ActiveMQ的订阅模式.........");
		return factory;
	}
}
