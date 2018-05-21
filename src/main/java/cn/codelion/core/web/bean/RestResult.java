package cn.codelion.core.web.bean;

public class RestResult<T> {
	/**状态*/
    private String code;
    /**对应状态的消息*/
    private String msg;
	/**具体业务数据*/
    private T result;
    
	/** 
	 * @return 返回 code 
	 */
	public String getCode() {
		return code;
	}

	/** 
	 * @setParam 设置code
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/** 
	 * @return 返回 msg 
	 */
	public String getMsg() {
		return msg;
	}

	/** 
	 * @setParam 设置msg
	 */
	public void setMsg(String msg) {
		this.msg = msg;
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
