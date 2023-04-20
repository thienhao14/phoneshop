package com.example.phoneshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.phoneshop.model.Product;
import com.example.phoneshop.service.ProductService;
@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	@GetMapping("/admin/signin")
	public String signin() {
		return "admin/admin-signin";
	}
	
	@GetMapping("/admin")
	public String adminHome() {
		return "admin/admin";
	}
	
	@GetMapping("/admin/product")
	public String adminProduct(Model model) {
		List<Product> products = productService.get();
		model.addAttribute("products", products);
		return "admin/admin-productManagement";
	}
	
	@GetMapping("/admin/add-product")
	public String adminAddProduct() {
		return "admin/admin-addProduct";
	}
	
	@GetMapping("/admin/userManagement")
	public String adminUser() {
		return "admin/admin-userManagement";
	}
	
}
