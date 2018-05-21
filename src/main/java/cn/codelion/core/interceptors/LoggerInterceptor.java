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
 * @author QiaoYu[www.codelion.cn]
 */
public class LoggerInterceptor implements HandlerInterceptor {
	public static final Logger logger = LoggerFactory.getLogger(LoggerInterceptor.class);
	private NamedThreadLocal<Long> startTimeThreadLocal = new NamedThreadLocal<Long>("Request-StartTime");
	public static String userInfo = "匿名";
	@Override
	public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
		long beginTime = System.currentTimeMillis();// 1、开始时间
		startTimeThreadLocal.set(beginTime);// 线程绑定变量（该数据只有当前请求的线程可见）
		MapUtil.requestParamToMap(httpServletRequest.getParameterMap());
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
		Object o = SessionUtil.getSessionUser(request);
		if (null != o) {
			SysUserBean sysUserBean = (SysUserBean) o;
			userInfo = sysUserBean.getRealName() + "[" + sysUserBean.getRealName() + "](" + sysUserBean.getId().intValue() + ")";
		}
		try {
			if (consumeTime > 5000) {
				logger.error("用户:{},耗时:{}毫秒,URI:{},最大内存:{}m,已分配内存:{}m,已分配内存中的剩余空间:{}m,最大可用内存:{}m", userInfo, consumeTime, uri, convertBToMB(Runtime.getRuntime().maxMemory()),
						convertBToMB(Runtime.getRuntime().totalMemory()), convertBToMB(Runtime.getRuntime().freeMemory()),
						convertBToMB(Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() + Runtime.getRuntime().freeMemory()));
			} else {
				logger.debug("用户:{},耗时:{}毫秒,URI:{},最大内存:{}m,已分配内存:{}m,已分配内存中的剩余空间:{}m,最大可用内存:{}m", userInfo, consumeTime, uri, convertBToMB(Runtime.getRuntime().maxMemory()),
						convertBToMB(Runtime.getRuntime().totalMemory()), convertBToMB(Runtime.getRuntime().freeMemory()),
						convertBToMB(Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() + Runtime.getRuntime().freeMemory()));
			}
		} catch (Exception e2) {
			MapUtil.printRequestMapObjs(request);
			if (consumeTime > 5000) {
				logger.error("用户:{},耗时:{}毫秒,URI:{},最大内存:{}m,已分配内存:{}m,已分配内存中的剩余空间:{}m,最大可用内存:{}m", userInfo, consumeTime, uri, convertBToMB(Runtime.getRuntime().maxMemory()),
						convertBToMB(Runtime.getRuntime().totalMemory()), convertBToMB(Runtime.getRuntime().freeMemory()),
						convertBToMB(Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() + Runtime.getRuntime().freeMemory()));
			} else {
				logger.debug("用户:{},耗时:{}毫秒,URI:{},最大内存:{}m,已分配内存:{}m,已分配内存中的剩余空间:{}m,最大可用内存:{}m", userInfo, consumeTime, uri, convertBToMB(Runtime.getRuntime().maxMemory()),
						convertBToMB(Runtime.getRuntime().totalMemory()), convertBToMB(Runtime.getRuntime().freeMemory()),
						convertBToMB(Runtime.getRuntime().maxMemory() - Runtime.getRuntime().totalMemory() + Runtime.getRuntime().freeMemory()));

			}
			e2.printStackTrace();
		}
	}

	public long convertBToMB(long b) {
		return b / 1024 / 1024;
	}
}
