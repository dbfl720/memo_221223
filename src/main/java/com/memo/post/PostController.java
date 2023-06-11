package com.memo.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.memo.post.bo.PostBO;
import com.memo.post.model.Post;

import jakarta.servlet.http.HttpSession;

@RequestMapping("/post")
@Controller  // view화면을 보여줌, 요청을 받는 어노테이션, 요청이 들어오는 스프링 빈 / Dispatcher Servlet에서 @Controller 들을 스캔하고, @RequestMapping 을 참조하여 주소의 path와 일치하는 메소드가 수행된다.
public class PostController {

	
	@Autowired
	private PostBO postBO;
	
	/**
	 * 글 목록 화면
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("/post_list_view")
	public String postListView(
			@RequestParam(value="prevId", required=false) Integer prevIdParam, // 비필수
			@RequestParam(value="nextId", required=false) Integer nextIdParam, // 비필수
			Model model, HttpSession session) { // 권한 검사 : HttpSession session
		// **** null일 수 있어서 Integer 
		Integer userId = (Integer)session.getAttribute("userId"); //"userId"는 UserRestController에서 적은 key를 꺼내온다.    // getAttribute로 꺼내오기. 
		// 비로그인이면 로그인 페이지로 이동
		if (userId == null) {			
			return "redirect:/user/sign_in_view";
		}
		
		
		// select DB
		int prevId = 0;
		int nextId = 0;
		List<Post> postList = postBO.getPostListByUserId(userId, prevIdParam, nextIdParam);
		if (postList.isEmpty() == false) {  // postList가 비어있을 때 에러 방지
			// 리스트가 비어있지 않으면 처리
			prevId = postList.get(0).getId();   // 가져온 리스트의 가장 맨 앞 (큰 id)  // order by로 정렬 되어 있어서...
			nextId = postList.get(postList.size() - 1).getId();   // 가져온 리스트의 가장 끝 값(작은 id)
			
			// 이전 방향의 끝인가? 
			// prevId와 post 테이블의 가장 큰 id와 같다면 이전 페이지 없음.
			if (postBO.isPrevLastPage(userId, prevId)) {
				prevId = 0;
				
			}
			// 다음 방향의 끝인가?
			// nextId와 post 테이블의 가장 작은 id와 같다면 다음 페이지 없음.
			if (postBO.isNextLastPage(userId, nextId)) {
				nextId = 0;
			}
		}
		
		
		model.addAttribute("prevId", prevId);		
		model.addAttribute("nextId", nextId);		
		// 로그인 되면 이동
		model.addAttribute("postList", postList);
		model.addAttribute("view", "post/postList");   // "post/postList" - jps 경로
		return "template/layout";
	}
	
	
	
	
	
	/**
	 * 글쓰기 화면
	 * @param model
	 * @return
	 */
	@GetMapping("/post_create_view")
	public String postCreateView(Model model) {
		model.addAttribute("view", "post/postCreate");  //   "post/postCreate" -  jsp경로
		return "template/layout";
	}
	
	
	
	
	/**
	 * 글 디테일 화면
	 * @param postId
	 * @param session
	 * @param model
	 * @return
	 */
	@GetMapping("/post_detail_view")
	public String postDetailView(
			@RequestParam("postId") int postId,
			HttpSession session,
			Model model) {
		
		// db select by postId , userId  - 내 글만 가져오기.
		int userId = (int)session.getAttribute("userId");  // 비로그인에서 이걸 하면 에러.null 이라서..
		Post post = postBO.getPostByPostIdUserId(postId, userId);
		
		model.addAttribute("post", post);
		model.addAttribute("view", "post/postDetail");  // "post/postDetail" 여기 페이지로 보낸다. 
		return "template/layout";
	}
	
	
	
}
