package com.memo.post;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/post")
@RestController
public class PostRestController {
	
	@PostMapping("/create")
	public Map<String, Object> create(
			@RequestParam("subject") String subject,
			@RequestParam(value="content", required=false) String content,
			@RequestParam(value="file", required=false) MultipartFile file,
			HttpSession session) {
		
		// 세션에서 유저 정보 꺼내옴
		int userId = (int)session.getAttribute("userId");  // 로그인할때 세팅했던 것  - userId //  breakpoint
		String userloginId = (String)session.getAttribute("userLoginId");
		
		// db insert
		
		
		// 응답
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1);
		result.put("result", "성공");
		return result;
	}
}
