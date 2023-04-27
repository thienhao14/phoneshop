package com.example.phoneshop.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.phoneshop.model.Brand;
import com.example.phoneshop.model.Category;
import com.example.phoneshop.model.LoginModel;
import com.example.phoneshop.model.Product;
import com.example.phoneshop.model.SignupModel;
import com.example.phoneshop.model.User;
import com.example.phoneshop.service.BrandService;
import com.example.phoneshop.service.CategoryService;
import com.example.phoneshop.service.ProductService;
import com.example.phoneshop.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private BrandService brandService;

	@Autowired
	private ProductService productService;

	@PostMapping("")
	public User save(@RequestBody User userObj) {
		userService.save(userObj);
		return userObj;
	}

	@GetMapping("/home-brand")
	public String getBrand(Model model) {
		List<Brand> brands = brandService.get();
		model.addAttribute("brands", brands);
		return "client/home-brand";
	}

	@GetMapping("/products")
	public String homeProduct(Model model){
		List<Category> categories = categoryService.get();
		List<Product> products = productService.get();
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		return "client/home";
	}
	
	@PostMapping("/home")
	public String login(LoginModel loginModel, Model model, HttpSession session) {
		User user = userService.checkLogin(new User(loginModel.getUsername(), loginModel.getPassword()));
		List<Category> categories = categoryService.get();
		List<Product> products = productService.get();
		model.addAttribute("categories", categories);
		model.addAttribute("products", products);
		if (user != null) {
			return "client/home";
		}
		return "login";
	}

	@PostMapping("/input-signup")
	public String signUp(SignupModel signupModel) {
		User user = userService.signUp(new User(signupModel.getUsername(), signupModel.getUsername(),
				signupModel.getPassword(), signupModel.getEmail()));
		if (user != null) {
			return "login";
		}
		return "signup";

	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@GetMapping("/profile")
	public String profile() {
		return "client/profile";
	}

	@PostMapping("/signup")
	public User signup(@RequestBody User userObj) {
		return userService.signUp(userObj);
	}

	@GetMapping("")
	public List<User> get() {
		return userService.get();
	}

	@GetMapping("/{id}")
	public User get(@PathVariable int id) {
		System.out.print("id = " + id);
		User userObj = userService.get(id);

		if (userObj == null) {
			throw new RuntimeException("User not found");
		}
		return userObj;
	}

	@PutMapping("")
	public User update(@RequestBody User userObj) {
		userService.save(userObj);
		return userObj;
	}

	@DeleteMapping("/{id}")
	public String delete(@PathVariable int id) {
		userService.delete(id);
		return "User has been delete with id: " + id;
	}



	
}
