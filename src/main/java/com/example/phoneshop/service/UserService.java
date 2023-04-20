package com.example.phoneshop.service;

import java.util.List;

import com.example.phoneshop.model.User;

public interface UserService {
	List<User> get();
	User get(int id);
	void save(User user);
	void delete(int id);
	User checkLogin(User userObj);
	User signUp(User userObj);
}
