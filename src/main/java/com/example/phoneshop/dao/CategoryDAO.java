package com.example.phoneshop.dao;

import java.util.List;

import com.example.phoneshop.model.Category;

public interface CategoryDAO {
	List <Category> get();
	Category get(int id);
	void save(Category category);
	void delete(int id);
}
