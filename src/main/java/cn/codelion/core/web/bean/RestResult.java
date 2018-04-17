package cn.codelion.core.web.bean;

import cn.codelion.core.contents.ExceptionCode;

public class RestResult<T> {
	/**状态*/
    private String code;
    /**对应状态的消息*/
    private String message;
	/**具体业务数据*/
    private T result;
    
    public static RestResult<String> okNoResult(String message) {
    	RestResult<String> okResult = new RestResult<String>();
    	okResult.setMessage(message);
    	okResult.setResult("请求成功.");
    	okResult.setCode(ExceptionCode.SUCCESS_CODE);
    	return okResult;
    }
    
    public static <T> RestResult<T> ok(T result) {
        RestResult<T> okResult = new RestResult<T>();
        okResult.setResult(result);
        okResult.setCode(ExceptionCode.SUCCESS_CODE);
        okResult.setMessage("请求成功.");
        return okResult;
    }

    public static <T> RestResult<T> failed(String code, String message) {
        RestResult<T> failedResult = new RestResult<T>();
        failedResult.setCode(code);
        failedResult.setMessage(message);
        return failedResult;
    }

    public static <T> RestResult<T> failed(String code, String message, T result) {
        RestResult<T> failedResult = new RestResult<T>();
        failedResult.setCode(code);
        failedResult.setMessage(message);
        failedResult.setResult(result);
        return failedResult;
    }


	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	/** 
	 * @return 返回 message 
	 */
	public String getMessage() {
		return message;
	}

	/** 
	 * @setParam 设置message
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/** 
	 * @return 返回 result 
	 */
	public T getResult() {
		return result;
	}

	/** 
	 * @setParam 设置result
	 */
	public void setResult(T result) {
		this.result = result;
	}
    
}
