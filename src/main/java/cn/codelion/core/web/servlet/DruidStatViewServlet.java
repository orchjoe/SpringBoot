/**
 * @fileName:  DruidStatViewServlet.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年5月21日 下午4:35:16
 */
package cn.codelion.core.web.servlet;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

import com.alibaba.druid.support.http.StatViewServlet;

/**
 * @author QiaoYu[www.codelion.cn]
 */
@WebServlet(urlPatterns = "/druid/*", initParams = { @WebInitParam(name = "allow", value = "127.0.0.1"), // IP白名单(没有配置或者为空，则允许所有访问)
		@WebInitParam(name = "deny", value = ""), // IP黑名单(存在共同时，deny优先于allow)
		@WebInitParam(name = "loginUsername", value = "admin"), // 用户名
		@WebInitParam(name = "loginPassword", value = "admin"), // 密码
		@WebInitParam(name = "resetEnable", value = "true")// 禁用HTML页面上的“ResetAll”功能
})
public class DruidStatViewServlet extends StatViewServlet {
	private static final long serialVersionUID = 1L;

}