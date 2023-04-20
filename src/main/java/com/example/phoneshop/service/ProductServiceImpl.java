package com.example.phoneshop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.phoneshop.dao.ProductDAO;
import com.example.phoneshop.model.Product;
@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	@Override
	public List<Product> get() {
		return productDAO.get();
	}

	@Transactional
	@Override
	public Product get(int id) {
		return productDAO.get(id);
	}

	@Transactional
	@Override
	public void save(Product product) {
		productDAO.save(product);
		
	}

	@Transactional
	@Override
	public void delete(int id) {
		productDAO.delete(id);
		
	}

}
