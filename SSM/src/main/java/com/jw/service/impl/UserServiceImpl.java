package com.jw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jw.bean.User;
import com.jw.mapper.UserMapper;
import com.jw.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> list(User user) {
		Integer count = userMapper.count(user);
		user.setCount(count);
		return userMapper.list(user);
	}

	@Override
	public void insert(User user) {
		userMapper.insert(user);
	}

	@Override
	public void update(User user) {
		userMapper.update(user);
	}

	@Override
	public void delete(String id) {
		userMapper.delete(id);
	}

	@Override
	public User get(String id) {
		return userMapper.get(id);
	}

}
