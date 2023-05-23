package com.example.phoneshop.dao;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.hibernate.*;
import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.phoneshop.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private EntityManager entityManager;

	@Override
	public List<User> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from User");
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list;
	}


	@Override
	public User get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		User userObj = (User) currentSession.get(User.class, id);
		return userObj;
	}

	@Override
	public void save(User user) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(user);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		User userObj = (User) currentSession.get(User.class, id);
		currentSession.delete(userObj);

	}

	@Override
	public User checkLogin(User inputUser) {
		Session currentSession = entityManager.unwrap(Session.class);

		String sql = "from User c where c.username = :username and c.password = :password";
		@SuppressWarnings("unchecked")
		List<User> userDB = currentSession.createQuery(sql)
				.setParameter("username", inputUser.getUsername()).setParameter("password", inputUser.getPassword())
				.list();

		if (!userDB.isEmpty()) {
			System.out.println("User Login Successfully !!!");
			return userDB.get(0);
		} else {
			System.out.println("Incorrect Username or Password !!!");
			return null;
		}

	}

	@Override
	public User signUp(User inputUser) {
		Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());

		Session currentSession = entityManager.unwrap(Session.class);

		User user = new User();
		user.setUsername(inputUser.getUsername());
		user.setPassword(inputUser.getPassword());
		user.setName(inputUser.getUsername());
		user.setActiveFlag(1);
		user.setCreateDate(currentDate);
		user.setUpdatedate(currentDate);

		if (!checkExists(user)) {
			currentSession.saveOrUpdate(user);
			return user;
		} else
			return null;

	}

	@Override
	public boolean checkExists(User inputUser) {

		Session currentSession = entityManager.unwrap(Session.class);

		String sql = "from User c where c.username = :username";
		@SuppressWarnings("unchecked")
		List<User> userDB = currentSession.createQuery(sql)
				.setParameter("username", inputUser.getUsername()).list();
		if (!userDB.isEmpty()) {

			return true;
		} else {

			return false;
		}

	}


	@Override
	public int numberOfUser() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from User");
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size();
	}


	@Override
	public int numberOfBrand() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from Brand");
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size();
	}


	@Override
	public int numberOfProduct() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from Product");
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size();
	}


	@Override
	public int numberOfOrder() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from Invoice");
		@SuppressWarnings("unchecked")
		List<User> list = query.list();
		return list.size();
	}


}
