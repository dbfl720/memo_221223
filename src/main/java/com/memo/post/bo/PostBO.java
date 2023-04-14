package com.memo.post.bo;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class PostBO {
	
	public int addPost(int userId, String loginId,
			String subject, String content,
			MultipartFile file) {
		
		String imagePath = null;
		// TODO 서버에 이미지 업로드 후 imagePath 받아옴
		if (file != null) {
			
		}
		
		return postMapper.
		
	}
}
