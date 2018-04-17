package cn.codelion.core.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.codelion.core.web.bean.RestResult;

@Service
public abstract class BaseController {
	@Autowired
	protected HttpServletResponse response;
	@Autowired
	protected HttpServletRequest request;
	
	public final Logger logger = LoggerFactory.getLogger(this.getClass());

	public RestResult<String> okNoResult(String message) {
		return RestResult.okNoResult(message);
	}
	public <T> RestResult<T> ok(T result) {
		return RestResult.ok(result);
	}

	public <T> RestResult<T> failed(String code, String message, T result) {
		return RestResult.failed(code, message, result);
	}

	public <T> RestResult<T> failed(String code, String message) {
		return RestResult.failed(code, message);
	}

}
