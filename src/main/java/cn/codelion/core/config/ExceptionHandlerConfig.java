package cn.codelion.core.config;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.validation.ObjectError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.ModelAndView;

import cn.codelion.core.contents.ExceptionContent;
import cn.codelion.core.exception.ServiceException;
import cn.codelion.core.web.bean.RestResult;
import cn.codelion.core.web.bean.ResultUtils;

/**
 * 异常处理器
 * 
 */
@RestControllerAdvice
public class ExceptionHandlerConfig {
	private Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * 自定义异常
	 */
	@ExceptionHandler(ServiceException.class)
	public RestResult<String> handleBDException(ServiceException e) {
		logger.error(e.getMessage(), e);
		return ResultUtils.error(e.getCode(), e.getLocalizedMessage());
	}

	@ExceptionHandler(MethodArgumentNotValidException.class)
	public RestResult<String> handleIllegalParamException(MethodArgumentNotValidException e) {
		List<ObjectError> errors = e.getBindingResult().getAllErrors();
		String tips = "参数不合法";
		if (errors.size() > 0) {
			tips = errors.get(0).getDefaultMessage();
		}
		return ResultUtils.error(ExceptionContent.PARAMETER_ERROR, tips);
	}

	@ExceptionHandler(RuntimeException.class)
	public ModelAndView handleRuntimeException(RuntimeException e) {
		logger.error(e.getMessage(), e);
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("msg", e.getMessage());
		return mv;
	}

	@ExceptionHandler(DuplicateKeyException.class)
	public RestResult<String> handleDuplicateKeyException(DuplicateKeyException e) {
		logger.error(e.getMessage(), e);
		return ResultUtils.error(ExceptionContent.DB_ERROR, "数据库中已存在该记录");
	}

	@ExceptionHandler(org.springframework.web.servlet.NoHandlerFoundException.class)
	public RestResult<String> noHandlerFoundException(org.springframework.web.servlet.NoHandlerFoundException e) {
		logger.error(e.getMessage(), e);
		return ResultUtils.error(ExceptionContent.PAGENOTFOND_ERROR, "没找找到页面");
	}

	@ExceptionHandler(Exception.class)
	public RestResult<String> handleException(Exception e) {
		logger.error(e.getMessage(), e);
		return ResultUtils.error(ExceptionContent.OTHER_ERROR_01, "服务器错误，请联系管理员");
	}

	@ExceptionHandler(HttpRequestMethodNotSupportedException.class)
	public RestResult<String> handleException(HttpRequestMethodNotSupportedException e) {
		logger.error(e.getMessage(), e);
		return ResultUtils.error(ExceptionContent.REQUEST_ERROR, "请求类型不支持!");
	}

}
