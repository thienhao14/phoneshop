package com.example.phoneshop.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.phoneshop.model.Brand;

@Repository
public class BrandDAOImpl implements BrandDAO {

	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Brand> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Brand> query = currentSession.createQuery("from Brand", Brand.class);
		List<Brand> list = query.getResultList();
		return list;
	}

	@Override
	public Brand get(long id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Brand brandObj = currentSession.get(Brand.class, id);
		return brandObj;
	}

	@Override
	public void save(Brand brand) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(brand);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Brand brandObj = currentSession.get(Brand.class, id);
		currentSession.delete(brandObj);
		
	}
	

}
