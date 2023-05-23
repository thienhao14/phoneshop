package com.example.phoneshop.dao;

import java.util.List;

import com.example.phoneshop.model.User;

public interface UserDAO {
	List<User> get();
	User get(int id);
	void save(User user);
	void delete(int id);
	User checkLogin(User userObj);
	User signUp(User userObj);
	boolean checkExists(User userObj);
	int numberOfUser();
	int numberOfBrand();
	int numberOfProduct();
	int numberOfOrder();
	
}
