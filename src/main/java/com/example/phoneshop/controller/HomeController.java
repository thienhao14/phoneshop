package com.example.phoneshop.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@GetMapping("/admin/product/{id}")
	public String deleteProduct(@PathVariable int id, Model model) {
		productService.delete(id);
		List<Product> products = productService.get();
		model.addAttribute("products", products);
		return "admin/admin-productManagement";
	}
	
	@GetMapping("/admin/admin-add-product")
	public String addProductPage() {
		
		return "admin/admin-addProduct";
	}
	
	@PostMapping("/admin/admin-add-product")
	public String addProduct(Product product, Model model) {
		Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		System.out.print(product);
		// cần update 
		
		product.setBrandId(1);
		product.setCategoryId(1);
		product.setCode("iphone");
		product.setActiveFlag(1);
		product.setCreateDate(currentDate);
		product.setUpdateDate(currentDate);
		
		productService.save(product);
		
		return "admin/admin-productManagement";
	}
	
}
