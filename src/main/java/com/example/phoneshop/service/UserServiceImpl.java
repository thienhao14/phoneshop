package com.example.phoneshop.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.phoneshop.dao.UserDAO;
import com.example.phoneshop.model.LoginModel;
import com.example.phoneshop.model.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	@Transactional
	@Override
	public List<User> get() {
		System.out.println(userDAO.get());
		return userDAO.get();
	}

	@Transactional
	@Override
	public User get(int id) {
		return userDAO.get(id);
	}

	@Transactional
	@Override
	public void save(User user) {
		userDAO.save(user);
		
	}

	@Transactional
	@Override
	public void delete(int id) {
		userDAO.delete(id);
		
	}

	@Override
	public User checkLogin(User userObj) {
		return userDAO.checkLogin(userObj);
	}
	

	@Override
	public User signUp(User userObj) {
		return userDAO.signUp(userObj);
	}
	
	

}
