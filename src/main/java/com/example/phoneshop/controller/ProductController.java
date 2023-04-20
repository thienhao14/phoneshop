package com.example.phoneshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.phoneshop.model.Product;
import com.example.phoneshop.service.ProductService;

@Controller
@RequestMapping("/user/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("")
	public List<Product> get(){
		return productService.get();
	}
	
	@GetMapping("/product-detail/{id}")
	public String productDetail(@PathVariable int id, Model model) {
		Product product = productService.get(id);
		model.addAttribute("product", product);
		return "client/productDetail";
	}
	
	
	
}
