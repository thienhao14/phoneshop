package com.example.phoneshop.service;

import java.util.List;

import com.example.phoneshop.model.Product;

public interface ProductService {
	List<Product> get();
	Product get(int id);
	void save(Product product);
	void delete(int id);
	List<Product> search(String productName);
}
