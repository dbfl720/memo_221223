package com.memo.post;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.memo.post.bo.PostBO;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/post")  // 클라이언트가 요청한 URL path와 일치하는 메소드가 수행된다.
@RestController   // 웹 주소로 요청하면, 웹사이트 View 화면이 아닌 json 같은 데이터를 응답값으로 보내준다.
public class PostRestController {
	
	
	@Autowired private PostBO postBO;
	
	/**
	 * 메모 글쓰기 API
	 * @param subject
	 * @param content
	 * @param file
	 * @param session
	 * @return
	 */
	// ************** 2222222222. AJAX - request를 여기서 수행. (***AJAX에서 파라미터명과 일치해야함)
	// **** 222222222 파라미터가 잘 넘어오고  있는지  check ****
	@PostMapping("/create")
	public Map<String, Object> create(
			@RequestParam("subject") String subject,
			@RequestParam("content") String content, 
			@RequestParam(value="file", required=false) MultipartFile file,  // 비필수
			HttpSession session) {    // 유저정보는 중요하고 파라미터로 주고받으면 안되기 때문에, session통해서 꺼내기! 
		
		
		// **** 3333333 session값이 잘 꺼내지는  check ****
		// 세션에서 유저 정보 꺼내옴
		int userId = (int)session.getAttribute("userId");  // 로그인할때 세팅했던 것  - userId //  **** breakpoint
		String userLoginId = (String)session.getAttribute("userLoginId");  // 이미지업로드할때 필요해서 가져옴 // .getAttribute()는 선택한 요소(element)의 특정 속성(attribute)의 값을 가져옵니다.
		
		// db insert
		int rowCount = postBO.addPost(userId, userLoginId, subject, content, file);
		
		// 응답
		// **** 4444444 응답 내려가서 jsp가 잘 처리가 되는지.  check ****
		Map<String, Object> result = new HashMap<>();
		if(rowCount > 0) {
			result.put("code", 1);
			result.put("result", "성공");		
		} else {
			result.put("code", 500);
			result.put("errorMessage", "메모를 저장하지 못했습니다.");		
		}
		return result;
	}
	
	
	
	@PutMapping("/update")
	public Map<String, Object> update(
			@RequestParam("postId") int postId,
			@RequestParam("subject") String subject,
			@RequestParam("content") String content, 
			@RequestParam(value="file", required=false) MultipartFile file,  // 비필수
			HttpSession session) {
			
		
		// 세션 정보 꺼내옴
		int userId = (int)session.getAttribute("userId");  // ** breakpoint
		String userLoginId = (String)session.getAttribute("userLoginId");
		
		
		// update db
		postBO.updatePost(userId, userLoginId, postId, subject, content, file);
		
		
		// 응답
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1);
		result.put("result", "성공");
		
		return result;
	}
}
