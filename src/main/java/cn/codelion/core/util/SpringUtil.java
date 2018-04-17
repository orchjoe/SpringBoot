/**
 * @Title: SpringUtil.java
 * @Package com.ccpws.util
 * @Description: 获取Spring上下文环境
 * @author Changling Jiang
 * @date 2014-2-13 下午12:01:51
 * @version V1.0
 */
package cn.codelion.core.util;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.ContextLoader;

/**
 * @ClassName: SpringUtil
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author Changling Jiang
 * @date 2014-2-13 下午12:01:51
 * 
 */
public class SpringUtil {

	public static ApplicationContext ctx;

	public static ApplicationContext getCtx() {
		if (ctx == null) {
			ctx = ContextLoader.getCurrentWebApplicationContext();
		}
		return ctx;
	}

	public static void setCtx(ApplicationContext ctx) {
		SpringUtil.ctx = ctx;
	}

	public static final Object getBean(String beanName) {
		return getCtx().getBean(beanName);
	}

}
