package com.example.phoneshop.dao;

import java.util.List;

import com.example.phoneshop.model.Brand;


public interface BrandDAO {
	List<Brand> get();
	Brand get(long id);
	void save(Brand brand);
	void delete(int id);
}
