package com.memo.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.memo.post.dao.PostMapper;
import com.memo.post.model.Post;

@Service
public class PostBO {
	
	@Autowired private PostMapper postMapper;
	
	// *** 질문 : loginId는 RestController에 있는 userLoginId와 이름이 같지 않아도 되나요????????????
	// insert
	public int addPost(
			int userId, String loginId,
			String subject, String content,
			MultipartFile file) {
		
			String imagePath = null;
			// TODO 서버에 이미지 업로드 후 image 받아옴
			if (file != null) {
				
			}
		
		return postMapper.insertPost(userId, subject, content, imagePath);  // mapper에게 insert 정보 넘기기
	}
	
	
	
	// select
	public List<Post> getPostList(Integer userId) {
			return postMapper.selectPostList(userId);
	}
}
