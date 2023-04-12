package com.memo.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.memo.user.bo.UserBO;
import com.memo.user.model.User;


@RequestMapping("/user") // 클라이언트가 요청한 URL path와 일치하는 메소드가 수행된다.
@RestController // 웹 주소로 요청하면, 웹사이트 View 화면이 아닌 json 같은 데이터를 응답값으로 보내준다. 이러한 요청을 API(Application Programming Interface) 라고 한다.
				// @Controller + @ResponseBody가 합쳐진 어노테이션이다. @ResponseBody를 생략해도 메소드에서 리턴된 데이터가 response body 영역에 넣어 보내진다.
public class UserRestController {

	
	
	@Autowired
	private UserBO userBO;
	
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
	
}
