package com.jw.service;

import java.util.List;

import com.jw.bean.User;

public interface UserService {
	List<User> list(User user);

	void insert(User user);

	void update(User user);

	void delete(String id);

	User get(String id);

}
