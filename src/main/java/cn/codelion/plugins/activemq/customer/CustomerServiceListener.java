/**
 * @fileName:  CustomerService.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年3月28日 下午12:02:28
 */
package cn.codelion.plugins.activemq.customer;

import javax.jms.JMSException;
import javax.jms.TextMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import cn.codelion.core.util.StringUtils;
import cn.codelion.plugins.activemq.bean.ActivemqMsgBean;
import cn.codelion.plugins.websocket.handler.StudentWebSocketHandler;

/**
 * @author QiaoYu[www.codelion.cn]
 */
@Component
public class CustomerServiceListener {
	private static final Logger logger = LoggerFactory.getLogger(CustomerServiceListener.class);
	@Autowired
	StudentWebSocketHandler studentWebSocketHandler;

	@JmsListener(destination = "student.aienglish.topic", containerFactory = "myJmsContainerFactory")
	public void subscribe(TextMessage message) {
		try {
			String text = message.getText();
			ActivemqMsgBean activemqMsgBean = JSON.parseObject(text, ActivemqMsgBean.class);
			logger.debug("客户端接收到topic为[student.aienglish.topic]内容为:" + text);
			if (StringUtils.isEmpty(activemqMsgBean.getType()) || activemqMsgBean.getType().equals("1")) {
				logger.debug("作业考试推送");
				studentWebSocketHandler.sendMessageToUsers(activemqMsgBean.getUsers(), activemqMsgBean.getMsg());
			} else {
				logger.debug("模拟考试推送");
			}
			message.acknowledge();
		} catch (JMSException e) {
			e.printStackTrace();
		}

	}
}
