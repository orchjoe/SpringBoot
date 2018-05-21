package cn.codelion.core.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public abstract class BaseController {
	@Autowired
	protected HttpServletResponse response;
	@Autowired
	protected HttpServletRequest request;
	
	public Logger logger = LoggerFactory.getLogger(this.getClass());

}
