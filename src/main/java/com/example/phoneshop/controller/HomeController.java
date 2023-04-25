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
import org.springframework.web.bind.annotation.PutMapping;

import com.example.phoneshop.model.Product;
import com.example.phoneshop.model.User;
import com.example.phoneshop.service.ProductService;
import com.example.phoneshop.service.UserService;
@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private UserService userService;
	
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
//		System.out.print(product);
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
	
	@GetMapping("/admin/admin-edit-product/{id}")
	public String editProductPage(@PathVariable int id, Model model) {
		Product product = productService.get(id);
		model.addAttribute("product", product);
		return "admin/admin-editProduct";

	}
	
		
	@PostMapping("/admin/admin-edit-product-data")
	public String editProduct(Product product, Model model) {
		Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
		// cần update 
		product.setId(product.getId());
		product.setBrandId(1);
		product.setCategoryId(1);
		product.setCode("iphone");
		product.setActiveFlag(1);
		product.setCreateDate(currentDate);
		product.setUpdateDate(currentDate);
		
		productService.save(product);
		List<Product> products = productService.get();
		model.addAttribute("products", products);
		return "admin/admin-productManagement";
	}
	
	@GetMapping("/admin/user")
	public String adminUser(Model model) {
		List<User> users = userService.get();
		model.addAttribute("users", users);
		return "admin/admin-userManagement";
	}
	
	@GetMapping("/admin/add-user")
	public String adminAddUser() {
		return "admin/admin-addUser";
	}
	
	@GetMapping("/admin/admin-add-user")
	public String addUserPage() {
		return "admin/admin-addUser";
	}
	
	@GetMapping("/admin/admin-edit-user/{id}")
	public String editUserPage(@PathVariable int id, Model model) {
		User user = userService.get(id);
		model.addAttribute("user", user);
		return "admin/admin-editUser";
	}
	
	@GetMapping("/admin/user/{id}")
	public String deleteUser(@PathVariable int id, Model model) {
		userService.delete(id);
		List<User> users = userService.get();
		model.addAttribute("users", users);
		return "admin/admin-userManagement";
	}
	
	@PostMapping("/admin/admin-edit-user-data")
	public String editUser(User user, Model model) {
		Date currentDate = new java.sql.Date(Calendar.getInstance().getTime().getTime());
//		User user2 = userService.get(user.getId());	
		user.setId(user.getId());
		user.setName(user.getUsername());
		user.setActiveFlag(user.getActiveFlag());
		user.setCreateDate(currentDate);
 		user.setUpdatedate(currentDate);
		
		userService.save(user);
		List<User> users = userService.get();
		model.addAttribute("users", users);
		return "admin/admin-userManagement";
	}
}
