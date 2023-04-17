package com.memo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.memo.common.FileManagerService;

@Configuration  //  설정을 위한 spring bean
public class WebMvcConfig implements WebMvcConfigurer {
	
	// 서버에 업로드 된 이미지와 웹 이미지 주소와의 맵핑 설정
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry
		.addResourceHandler("/images/**") // 웹 이미지 주소  http://localhost/images/yuri_1681728082266/amsterdam-7917858_1280.jpg
		.addResourceLocations("file://" + FileManagerService.FILE_UPLOAD_PATH);  // 실제 파일 위치  - mac은 // 슬래시 2개 . - 개수 틀리면 404 // **과 연동 되면서 되는 것임.
		
	
	
	}
}
