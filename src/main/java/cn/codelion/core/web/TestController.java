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
				System.out.println("object是空的,设置object");
				request.getSession().setAttribute("12345", "保存进去123456");
			}else {
				System.out.println("显示出来的object为:"+object);
			}
			return ok("123");
		} catch (Exception e) {
			e.printStackTrace();
			return failed("哈哈", e.getMessage());
		}
	}
}
