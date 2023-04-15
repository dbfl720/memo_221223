package com.memo.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.memo.post.dao.PostMapper;

@Controller
public class TestController {

	
	@Autowired
	PostMapper postMapper;
	
	@ResponseBody
	@RequestMapping("/test1")
	public String test1() {
		return "Hello World";
	}
	
	
	@ResponseBody
	@RequestMapping("/test2")
	public Map<String, Object> test2() {
		Map<String, Object> map = new HashMap<>();
		map.put("a", 1);
		map.put("b", 1);
		map.put("c", 4);
		map.put("d", 3);
		return map;
	}
	
	
	 @RequestMapping("/test3")
	 public String test3() {
		 return "/test";
	 }
	
	
//	@ResponseBody //웹 주소로 요청하면, 웹사이트 View 화면이 아닌 json 같은 데이터를 응답값으로 보내준다. 
//	@RequestMapping("/test4")
//	public List<Map<String, Object>> test4() {
//		return postMapper.selectPostList();
//	}
	
	
}
