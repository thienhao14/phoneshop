package com.example.phoneshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.phoneshop.model.Product;
import com.example.phoneshop.service.ProductService;

@RestController
@RequestMapping("/home")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("/product")
	public List<Product> get(){
		return productService.get();
	}
}
