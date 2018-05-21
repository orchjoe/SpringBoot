/**
 * @fileName:  ResultUtil.java 
 * @Description:  TODO
 * @CreateName:  QiaoYu[www.codelion.cn]
 * @CreateDate:  2018年5月21日 下午3:32:06
 */
package cn.codelion.core.web.bean;

import cn.codelion.core.contents.ExceptionContent;

/**
 * @author QiaoYu[www.codelion.cn]
 */
public class ResultUtils {
	/**
	 * 请求成功无参数
	 * @CreateName:  QiaoYu[www.codelion.cn]
	 * @CreateDate:  2018年5月21日 下午3:36:50
	 */
	public static RestResult<String> success() {
		RestResult<String> okResult = new RestResult<String>();
		okResult.setMsg("请求成功.");
		okResult.setCode(ExceptionContent.SUCCESS_CODE);
		return okResult;
	}
	/**
	 * 请求成功有参数
	 * @CreateName:  QiaoYu[www.codelion.cn]
	 * @CreateDate:  2018年5月21日 下午3:32:51
	 */
	public static <T> RestResult<T> success(T result) {
		RestResult<T> okResult = new RestResult<T>();
		okResult.setResult(result);
		okResult.setCode(ExceptionContent.SUCCESS_CODE);
		okResult.setMsg("请求成功.");
		return okResult;
	}
	/**
	 * 请求失败
	 * @CreateName:  QiaoYu[www.codelion.cn]
	 * @CreateDate:  2018年5月21日 下午3:32:53
	 */
	public static RestResult<String> error(String code, String message) {
		RestResult<String> failedResult = new RestResult<String>();
		failedResult.setCode(code);
		failedResult.setMsg(message);
		return failedResult;
	}
	/**
	 * 请求失败
	 * @CreateName:  QiaoYu[www.codelion.cn]
	 * @CreateDate:  2018年5月21日 下午3:32:53
	 */
	public static <T> RestResult<T> error(String code, String message , T result) {
		RestResult<T> failedResult = new RestResult<T>();
		failedResult.setCode(code);
		failedResult.setMsg(message);
		failedResult.setResult(result);
		return failedResult;
	}
}
