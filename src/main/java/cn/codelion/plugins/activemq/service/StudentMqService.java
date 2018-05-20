/**
 * @fileName:  StudentMqService.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年3月28日 下午12:22:02
 */
package cn.codelion.plugins.activemq.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import cn.codelion.plugins.activemq.bean.ActivemqMsgBean;
import cn.codelion.plugins.activemq.publish.MQPublisherServer;

/**
 * @author QiaoYu[www.codelion.cn]
 */
@Service
public class StudentMqService {
	@Autowired
	MQPublisherServer publisherServer;

	public void sendMsg(ActivemqMsgBean activemqMsgBean) {
		publisherServer.publish("student.aienglish.topic", JSON.toJSONString(activemqMsgBean));
	}
}
