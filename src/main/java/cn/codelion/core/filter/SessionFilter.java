/**
 * @fileName:  SessionFilter.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu 
 * @CreateDate:  2017年4月25日 下午4:05:40
 */
package cn.codelion.core.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.filter.OncePerRequestFilter;

import com.alibaba.fastjson.JSON;

import cn.codelion.core.contents.ExceptionContent;
import cn.codelion.core.util.SessionUtil;
import cn.codelion.core.web.bean.RestResult;

/**
 * @author QiaoYu
 */
public class SessionFilter extends OncePerRequestFilter {
	public static final Logger logger = LoggerFactory.getLogger(SessionFilter.class);
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
		// 不过滤的uri
		String[] notFilter = new String[] { "login.do", "logout.do", "mobile","sysFileController","testController" };
		String uri = request.getRequestURI();
		boolean doFilter = true;
		if (uri.indexOf(".do") != -1) {
			logger.debug("SessionFilter拦截器[URI=" + uri + "]");
			for (String s : notFilter) {
				if (uri.indexOf(s) != -1) {
					doFilter = false;
					break;
				}
			}
			if (doFilter) {
				Object obj = SessionUtil.getSessionUser(request);
				if (null == obj) {
					// ajax请求
					if ("XMLHttpRequest".equalsIgnoreCase(request.getHeader("x-requested-with"))) {
						logger.debug("进入SessionFilter拦截器[Session是空的进入AJAX请求!]");
						PrintWriter printWriter = response.getWriter();
						RestResult<String> result = new RestResult<String>();
						result.setCode(ExceptionContent.USER_NOLOGIN);
						result.setMsg("未登录或者登陆超时");
						printWriter.print(JSON.toJSONString(result));
						printWriter.flush();
						printWriter.close();
					} else {
						logger.debug("进入SessionFilter拦截器[Session是空的进入POST|GET请求!]");
						String contextPath = request.getContextPath();
						request.setCharacterEncoding("UTF-8");
						response.setCharacterEncoding("UTF-8");
						PrintWriter out = response.getWriter();
						String loginPage = contextPath+"/login.jsp";
						StringBuffer builder = new StringBuffer();
						builder.append("<script type=\"text/javascript\">");
						builder.append("alert('网页过期，请重新登录！');");
						builder.append("window.top.location.href='");
						builder.append(loginPage);
						builder.append("';");
						builder.append("</script>");
						out.print(builder.toString());
					}
				}else {
					logger.debug("登陆成功开始进入controller");
					filterChain.doFilter(request, response);
				}
			} else {
				filterChain.doFilter(request, response);
			}
		} else {
			filterChain.doFilter(request, response);
		}
	}
}
