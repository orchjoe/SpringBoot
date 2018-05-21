/**
 * @fileName:  TestController.java 
 * @Description:  TODO
 * @CreateName:  codelion[QiaoYu]
 * @CreateDate:  2018年3月1日 下午4:43:18
 */ 
package cn.codelion.core.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import cn.codelion.core.web.bean.RestResult;
import cn.codelion.core.web.bean.ResultUtils;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;

/** 
 * @author  codelion[QiaoYu]
 */
@RestController
@RequestMapping(value="/test/")
public class TestController extends BaseController{
	@ApiOperation(value="测试session", notes="测试session")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "暂无说明", required = true, dataType = "String"),
    })
	@RequestMapping(value = "test.do")
	public RestResult<String> test(){
		try {
			Object object = request.getSession().getAttribute("12345");
			if (null == object) {
				request.getSession().setAttribute("12345", "保存进去123456");
			}else {
			}
			return ResultUtils.success("123");
		} catch (Exception e) {
			e.printStackTrace();
			return ResultUtils.error("哈哈", e.getMessage());
		}
	}
}
