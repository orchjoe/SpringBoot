package cn.codelion.core.exception;

/**
 * 统一异常
 * @author  codelion[QiaoYu]
 */
public class ServiceException extends RuntimeException {
	private static final long serialVersionUID = 1L;
	
    private String msg;
    private String code = "500";
    
    public ServiceException(String msg) {
		super(msg);
		this.msg = msg;
	}
	
	public ServiceException(String msg, Throwable e) {
		super(msg, e);
		this.msg = msg;
	}
	
	public ServiceException(String msg, String code) {
		super(msg);
		this.msg = msg;
		this.code = code;
	}
	
	public ServiceException(String msg, String code, Throwable e) {
		super(msg, e);
		this.msg = msg;
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
	
	
}
