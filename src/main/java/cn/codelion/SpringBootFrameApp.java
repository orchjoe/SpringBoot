package cn.codelion;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@SpringBootApplication
@ImportResource(locations = { "classpath:/config/kaptcha.xml" })
@ServletComponentScan
public class SpringBootFrameApp extends WebMvcConfigurationSupport {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFrameApp.class, args);
	}

}
