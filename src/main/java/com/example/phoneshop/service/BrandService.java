package com.example.phoneshop.service;

import java.util.List;

import com.example.phoneshop.model.Brand;


public interface BrandService {
	List<Brand> get();
	Brand get(long id);
	void save(Brand brand);
	void delete(int id);
}
