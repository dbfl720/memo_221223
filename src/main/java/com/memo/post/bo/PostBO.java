package com.memo.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.memo.common.FileManagerService;
import com.memo.post.dao.PostMapper;
import com.memo.post.model.Post;

@Service
public class PostBO {
	
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
	
	
	
	// select
	public List<Post> getPostList(Integer userId) {
			return postMapper.selectPostList(userId);
	}
}
