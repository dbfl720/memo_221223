package com.memo.post.bo;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.memo.common.FileManagerService;
import com.memo.post.dao.PostMapper;
import com.memo.post.model.Post;


// 복잡한 로직은 BO에 다 넣기.
@Service
public class PostBO {
	
	//private Logger logger = LoggerFactory.getLogger(PostBO.class);
	//import org.mybatis.logging.LoggerFactory; -- logger 만들 때 맨날 나오기 때문에 제거! 
	private Logger logger = LoggerFactory.getLogger(this.getClass());  // import문 안쓸 수 있음. // ** 개인프로젝트 때 꼭 넣기! 실무자들이 이걸 보고 logger 사용하는지 알 수 있어서 흔적 남기기.
	
	@Autowired
	private PostMapper postMapper;
	
	@Autowired 
	private FileManagerService fileManager;
	
	
	//  매개변수 타입은 일치해야 하나 변수이름은 아무거나 해도 상관 없음.
	// insert
	public int addPost(
			int userId, String loginId,
			String subject, String content,
			MultipartFile file) {
		
			String imagePath = null;
			if (file != null) {
				// 서버에 이미지 업로드 후 imagePath 받아옴
				imagePath = fileManager.saveFile(loginId, file);  // **breakpoint
			}
		
		return postMapper.insertPost(userId, subject, content, imagePath);  // mapper에게 insert 정보 넘기기
	}
	
	
	
	
	
	public void updatePost(int userId, String loginId,
			int postId, String subject, String content,
			MultipartFile file) {
		
		
		// 기존글 가져온다.(이미지가 교체될 때 기존 이미지 제거를 위해) // BO에 메소드를 부르는게 좋음. (1.이유 : cash에다가 저장해서 파라미터 key,value Dao로 안가고 바로  BO에서 부를 수 있음. 2.실무에서는 가공된걸  가져와서 하기 때문에 , BO에서 가공이 이루어졌다면 BO에서 바로가져와서 쓰는게 좋음. 확장성 생각하면 안전하다. Mapper보다..)
		// ** 무조건 null체크 해야함. ** 실무에서 많이 씀.
		Post post = getPostByPostIdUserId(postId, userId);  // ** breakpoint // 코드가 길어질 경우 초반 부분에 breakpoint 찍는ㄱ ㅔ좋음.
		// logger.warn("[update post] post is null. postId:{}, userId:{}", postId, userId);  // ** 습관적으로 많이 찍기 *** 에러 빨리 찾을 수 있다.
		
		if (post == null) {  // **실무에서는 null체크 필수임..
			logger.warn("[update post] post is null. postId:{}, userId:{}", postId, userId); // 에러 메시지 쌓아둬서 에러사이트에서 보는 방법. 와일드 카드.
			return; // 메소드 종료.
		}
		
		
		// 업로드한 이미지가 있으면 서버 업로드 => imagePath 받아옴 => 업로드 성공하면 기존 이미지 제거 
		String imagePath = null;
		if (file != null) {
			// 업로드
			imagePath = fileManager.saveFile(loginId, file);
			
			
			// 성공여부 체크 후 기존 이미지 제거 
			// -- imagePath가 null이 아닐 때 (성공) 그리고 기존 이미지가 있을 때 => 기존 이미지 삭제
			if (imagePath != null && post.getImagePath() != null) {
				// 이미지 제거
				fileManager.deleteFile(post.getImagePath()); // ** 기존 이미지  - post.getImagePaht() // x - imagePath (새로운 이미지)
			}
			
		}
		
		// DB update
		postMapper.updatePostByPostId(postId, subject, content, imagePath);
	}
	
	
	
	
	
	
	
	// output : 삭제된 행 개수(int)            input: postId, (userId)
	// delete
	public int deletePostByPostIdUserId (
			int postId, int userId) {
		
			// 기존 글 가져오기 (이미지 확인을 위해)
			Post post = getPostByPostIdUserId(postId, userId);	
			if (post == null) {  // **실무에서는 null체크 필수임..
				logger.warn("[글 삭제] post is null. postId:{}, userId:{}", postId, userId); // 에러 메시지 쌓아둬서 에러사이트에서 보는 방법. 와일드 카드.
				return 0; // 메소드 종료.
			}

			// 기존 이미지가 있으면 삭제. 
			if (post.getImagePath() != null) {
				fileManager.deleteFile(post.getImagePath());
			}
			
			
			// DB delete
			return postMapper.deletePostByPostIdUserId(postId, userId); 
		
	}
	
	
	
	
	
	
	
	// select
	public List<Post> getPostList(Integer userId) {
			return postMapper.selectPostList(userId);
	}
	
	
	// output:Post(하나의 행)       input:postId, userId
	public Post getPostByPostIdUserId(int postId, int userId) {
		return postMapper.selectPostByPostIdUserId(postId, userId); // 순서 맞는지 체크 .
	}
}
