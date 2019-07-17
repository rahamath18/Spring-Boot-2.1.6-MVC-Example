package com.test.springboot216;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.server.WebServerFactoryCustomizer;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

//@EnableAutoConfiguration //  enable Spring Boot’s auto-configuration mechanism
@SpringBootApplication     //  enables all 3 [@EnableAutoConfiguration,  @ComponentScan, @Configuration]
//@ComponentScan({"com.test.springboot216", "web"})
public class UserMgtApplication extends SpringBootServletInitializer {
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(UserMgtApplication.class, args);
	}
	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(UserMgtApplication.class);
	}
	
//	@Bean
//	public WebServerFactoryCustomizer<ConfigurableServletWebServerFactory>
//	  webServerFactoryCustomizer() {
//	    return factory -> factory.setContextPath("/user");
//	}

}
