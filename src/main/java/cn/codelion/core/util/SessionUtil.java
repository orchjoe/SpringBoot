/**
 * @fileName:  SessionUtil.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu 
 * @CreateDate:  2017年8月1日 上午11:18:08
 */ 
package cn.codelion.core.util; 

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import cn.codelion.core.bean.SysUserBean;
import cn.codelion.core.contents.SystemContent;

/** 
 * @author  QiaoYu 
 */
public class SessionUtil {
	public static final Logger logger = LoggerFactory.getLogger(SessionUtil.class);
	public static Object getSessionUser(HttpServletRequest request){
		Object obj = request.getSession().getAttribute(SystemContent.CURRENT_SESSION);
		return obj;
	}
	
	public static void setSessionUser(HttpServletRequest request,SysUserBean userBean){
		request.getSession().setAttribute(SystemContent.CURRENT_SESSION, userBean);
	}
	
	public static void setSchoolInfo(HttpServletRequest request,String schoolName) {
		request.getSession().setAttribute(SystemContent.SCHOOL_SESSION, schoolName);
	}
	
	
	public static void removeSession(HttpServletRequest request){
		request.getSession().removeAttribute(SystemContent.CURRENT_SESSION);
		request.getSession().removeAttribute(SystemContent.SCHOOL_SESSION);
	}
	public static String getValidateCode(HttpServletRequest request){
		try {
			String sessionKey = (String) request.getSession().getAttribute("KAPTCHA_SESSION_KEY");
			return sessionKey;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("获取validateKey出现错误",e);
			return "";
		}
	}
	
	
	
}
