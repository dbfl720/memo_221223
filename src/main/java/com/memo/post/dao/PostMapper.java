package com.memo.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.memo.post.model.Post;

@Repository  // @Repository 어노테이션으로 Spring Bean을 만든다.
public interface PostMapper {
	// test
	// public List<Map<String, Object>> selectPostList();
	
	
	// insert할 값만  남기고 나머지는 지우기 (ex, loginId)
	// ** db와 일치하는 타입과 컬럼명을 적어야 한다. 
	public int insertPost(
			@Param("userId") int userId,
			@Param("subject") String subject,
			@Param("content") String content,
			@Param("imagePath")String imagePath);  // 컬럼명과 일치해야하서 바꿔라.  // MultipartFile 타입으로 넣을 수 없고 db와 일치한 String으로 넣어야 하기 때문에, String으로 쓰기. 




	
	// select
	public List<Post> selectPostList(Integer userId);
	
	
	public Post selectPostByPostIdUserId(
			@Param("postId") int postId,
			@Param("userId") int userId);  // xml 쿼리문에서 "userId" 내려감. #{postId}
	
	
	public void updatePostByPostId(
			@Param("postId") int postId,  // @Param("postId")  애랑 매핑이 되는 거임 ***
			@Param("subject") String subject,
			@Param("content") String content,
			@Param("imagePath") String imagePath);
}
