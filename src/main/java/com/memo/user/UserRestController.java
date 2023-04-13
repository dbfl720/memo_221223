package com.memo.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.memo.common.EncryptUtils;
import com.memo.user.bo.UserBO;
import com.memo.user.model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@RequestMapping("/user") // 클라이언트가 요청한 URL path와 일치하는 메소드가 수행된다.
@RestController // 웹 주소로 요청하면, 웹사이트 View 화면이 아닌 json 같은 데이터를 응답값으로 보내준다. 이러한 요청을 API(Application Programming Interface) 라고 한다.
				// @Controller + @ResponseBody가 합쳐진 어노테이션이다. @ResponseBody를 생략해도 메소드에서 리턴된 데이터가 response body 영역에 넣어 보내진다.
public class UserRestController {

	
	
	@Autowired
	private UserBO userBO;
	
	
	/**
	 * 아이디 중복확인 API
	 * @param loginId
	 * @return
	 */
	// 중복 체크
	@RequestMapping("/is_duplicated_id")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("loginId") String loginId) {    // @Controller + @ResponseBody (@RestController) 있어서, model 안씀.** 
		
		
		Map<String, Object> result = new HashMap<>();
		// select
		User user = userBO.getUserByLoginId(loginId);
		
		if (user != null) {
			result.put("code", 1);
			result.put("result", true);
		} else {
			result.put("code", 1);
			result.put("result", false);
		}
		return result;
		
	}
	
	
	
	
	/**
	 * 회원가입 API
	 * @param loginId
	 * @param password
	 * @param name
	 * @param email
	 * @return
	 */
	@PostMapping("/sign_up")
	public Map<String, Object> signUp( 
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email) {
			
				
				// 비밀번호 해싱 - md5(해싱 - 글자를 만들어놓고 다시 복호화 못함. //암호화 - 암호화한거는 복호화할 수 있다.) // *** 개인프로젝트때는 다른 암호화를 사용하는게 좋음. // 해싱은 취약하고 요즘 안씀.
				// aaaa => sdkjfjsdfkjsdflkds    
				// aaaa => sdkjfjsdfkjsdflkds    
				String hashedPassword = EncryptUtils.md5(password);
				
				// db insert
				int rowCount = userBO.addUser(loginId, hashedPassword, name, email);
				
				
				Map<String, Object> result = new HashMap<>();
				result.put("code", 1);
				result.put("result", "성공");
				
				return result;
		}
	
	
	
		@PostMapping("/sign_in")
		public Map<String, Object> signIn(
				@RequestParam("loginId") String loginId,
				@RequestParam("password") String password,
				HttpServletRequest request) {
			
			// password hasing
			String hashedPassword = EncryptUtils.md5(password);
			
			
			// select null or 1행   // ** select - hashedPassword로 해야함.
			User user = userBO.getUserByLoginIdPassword(loginId, hashedPassword);
			
			// 로그인 처리
			Map<String, Object> result = new HashMap<>();  // breakpoint
			if (user != null) {  // 로그인
				result.put("code", 1);
				result.put("result", "성공");		
				
				
				// 세션에 유저 정보 담기 (로그인 상태 유지) - 로그인만 담아라.  - 서버에 정보 담는 것.
				HttpSession session = request.getSession();		
				session.setAttribute("userId", user.getId());  // key, value - 내가 지음.
				session.setAttribute("userName", user.getName());
				session.setAttribute("userLoginId", user.getLoginId());
			} else {  // 로그인 불가
				result.put("code", 500);
				result.put("errorMessage", "존재하지 않는 사용자 입니다.");  // 로직상 에러임. 				
			}
					
			return result;
		}
	}

