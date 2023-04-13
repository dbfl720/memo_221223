package com.memo.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/user")
@Controller // view화면을 보여줌, 요청을 받는 어노테이션, 요청이 들어오는 스프링 빈 / Dispatcher Servlet에서 @Controller 들을 스캔하고, @RequestMapping 을 참조하여 주소의 path와 일치하는 메소드가 수행된다.
public class UserController {

	
	/**
	 * 회원가입 화면 -  GNB(Global Navication Bar) 영역이 모든 페이지에서 반복되므로 레이아웃이라는 하나의 jsp를 GNB, View, Footer로 분할한다.
	 * @param model
	 * @return
	 */
	//localhost/user/sign_up_view
	@GetMapping("/sign_up_view")
	public String signUpView(Model model) {
		model.addAttribute("view", "user/signUp");    // 가운데 section 조각페이지 이렇게 세팅해랏 ! 
		return "template/layout";
	}
	

	//localhost/user/sign_in_view
		@GetMapping("/sign_in_view")
		public String signInView(Model model) {
			model.addAttribute("view", "user/signIn");    // 가운데 section 조각페이지 이렇게 세팅해랏 !  //sufix,prefix 제외하고 쓴거임. 
			return "template/layout";
		}
		
		
		@RequestMapping("/sign_out")
		public String signOut(HttpSession session) {
			// 세션에 있는 모든 것을 비운다.
			session.removeAttribute("userId");
			session.removeAttribute("userName");
			session.removeAttribute("userLoginId");
			
			// 로그인 화면으로  이동
			return "redirect:/user/sign_in_view";
		}
}
