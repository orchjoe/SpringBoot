/**
 * @fileName:  ExceptionCode.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu 
 * @CreateDate:  2018年1月15日 上午10:01:31
 */
package cn.codelion.core.contents;

/**
 * @author QiaoYu
 */
public class ExceptionContent {
	/** 成功 **/
	public static final String SUCCESS_CODE = "00-00-00";

	//--------------------------------------------------用户异常------------------------------------------------------------//
	/** 用户未登陆或者登陆异常 **/
	public static final String USER_NOLOGIN = "01-00-01";
	
	//--------------------------------------------------请求异常------------------------------------------------------------//
	/** 参数异常 **/
	public static final String PARAMETER_ERROR = "90-00-01";
	/** 请求类型错误 **/
	public static final String REQUEST_ERROR = "90-00-02";
	/** 请求没有找到 **/
	public static final String PAGENOTFOND_ERROR = "90-00-03";
	
	
	
	
	//--------------------------------------------------数据库异常------------------------------------------------------------//
	/** 数据库异常 **/
	public static final String DB_ERROR = "91-00-01";
	
	
	//--------------------------------------------------其他异常------------------------------------------------------------//
	/** 其他异常  **/
	public static final String OTHER_ERROR_01 = "99-00-01";
	
	
}
