package com.memo.post.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PostMapper {

	public List<Map<String, Object>> selectPostList();
	
	
	
	public int insertPost(
			@Param("userId") int userId,
			@Param("subject") String subject,
			@Param("content") String content,
			@Param("image")String image);  // 컬럼명과 일치해야하서 바꿔라.
}
