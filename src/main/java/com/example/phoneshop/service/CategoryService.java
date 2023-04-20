package com.example.phoneshop.service;

import java.util.List;

import com.example.phoneshop.model.Category;


public interface CategoryService {
	List<Category> get();
	Category get(int id);
	void save(Category category);
	void delete(int id);
}
