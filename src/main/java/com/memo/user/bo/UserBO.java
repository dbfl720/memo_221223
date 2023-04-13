package com.memo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.memo.user.dao.UserMapper;
import com.memo.user.model.User;

@Service
public class UserBO {
		
	@Autowired UserMapper userMapper;
	
	public User getUserByLoginId(String loginId) {
		return userMapper.selectUserById(loginId);
	}

	
	
	// insert
	public int addUser(
			String loginId, String password,
			String name, String email) {
		return userMapper.insertUser(loginId, password, name, email);   // mybatis가 성공된 행의 개수 돌려주는 거임.
		
	}
	
	
	
	// select
	public User getUserByLoginIdPassword(String loginId, String password) {
		return userMapper.selectUserByLoginIdPassword(loginId, password);
	}
	
}
