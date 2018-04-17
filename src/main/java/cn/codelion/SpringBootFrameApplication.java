package cn.codelion;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource(locations = { "classpath:/config/kaptcha.xml" })
@ServletComponentScan
public class SpringBootFrameApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFrameApplication.class, args);
	}
	
	
//	@Bean
//	public HandlerInterceptor handlerInterceptor() {
//		return new LoggerInterceptor();
//	}
//	@Bean
//	public AfterReturningAdvice afterReturningAdvice() {
//		return new LoggerInterceptor();
//	}
}
