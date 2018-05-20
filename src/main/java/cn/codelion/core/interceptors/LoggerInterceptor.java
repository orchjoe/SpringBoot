package cn.codelion.core.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.NamedThreadLocal;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.codelion.core.bean.SysUserBean;
import cn.codelion.core.util.MapUtil;
import cn.codelion.core.util.SessionUtil;

/** 
 * @author  QiaoYu[www.codelion.cn]
 */
public class LoggerInterceptor implements HandlerInterceptor {
	public static final Logger logger = LoggerFactory.getLogger(LoggerInterceptor.class);
	private NamedThreadLocal<Long> startTimeThreadLocal = new NamedThreadLocal<Long>("Request-StartTime");


	@Override
	public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
		long beginTime = System.currentTimeMillis();// 1、开始时间
		startTimeThreadLocal.set(beginTime);// 线程绑定变量（该数据只有当前请求的线程可见）
		return true;// 继续流程
	}

	@Override
	public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception e) throws Exception {
		long endTime = System.currentTimeMillis();// 2、结束时间
		long beginTime = startTimeThreadLocal.get();// 得到线程绑定的局部变量（开始时间）
		long consumeTime = endTime - beginTime;// 3、消耗的时间
		String uri = request.getRequestURI();
		MapUtil.printRequestMapObjs(request);
		try {
			Object o = SessionUtil.getSessionUser(request);
			SysUserBean sysUserBean = (SysUserBean) o;
			String userInfo = sysUserBean.getRealName() + "[" + sysUserBean.getRealName() + "](" + sysUserBean.getId().intValue() + ")";
			if (consumeTime > 5000) {
				logger.error(String.format("@@@%s@@@请求路径[%s] 使用时间 [%d] 毫秒", userInfo, uri, consumeTime));
			} else {
				logger.debug(String.format("@@@%s@@@请求路径[%s] 使用时间 [%d] 毫秒", userInfo, uri, consumeTime));
			}
		} catch (Exception e2) {
			if (consumeTime > 5000) {
				logger.error(String.format("匿名@@@请求路径[%s] 使用时间 [%d] 毫秒", uri, consumeTime));
			} else {
				logger.debug(String.format("匿名@@@请求路径[%s] 使用时间 [%d] 毫秒", uri, consumeTime));
			}
		}
		logger.debug("#####################################################################################################################");
	}

}
