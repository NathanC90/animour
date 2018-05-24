package org.iii.ee100.animour;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.support.SpringBootServletInitializer;


@ServletComponentScan
@SpringBootApplication
public class AnimourApp extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(AnimourApp.class);
	}

	public static void main(String[] args) throws Exception{
		SpringApplication.run(AnimourApp.class, args);
	}

}
