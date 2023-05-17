package com.example.phoneshop.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.phoneshop.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private EntityManager entityManager;

	@Override
	public List<Product> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from Product");
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}

	@Override
	public Product get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Product productObj = (Product) currentSession.get(Product.class, id);
		return productObj;
	}

	@Override
	public void save(Product product) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(product);

	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Product productObj = (Product) currentSession.get(Product.class, id);
		currentSession.delete(productObj);

	}

	@Override
	public List<Product> search(String productName) {
		Session currentSession = entityManager.unwrap(Session.class);
		Query query = currentSession.createQuery("from Product p where p.name like :productName");
		query.setParameter("productName", '%' + productName + '%');
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		return list;
	}

}
