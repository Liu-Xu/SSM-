package com.jw.mapper;

import java.util.List;

import com.jw.bean.User;

public interface UserMapper {
	List<User> list(User user);
	
	void insert(User user);
	
	void update(User user);
	
	void delete(String id);
	
	User get(String id);
	
	Integer count(User user);
}
