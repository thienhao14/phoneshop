package com.example.phoneshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.phoneshop.model.Brand;
import com.example.phoneshop.model.Product;
import com.example.phoneshop.service.BrandService;
import com.example.phoneshop.service.ProductService;

@Controller
@RequestMapping("/user/product")
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private BrandService brandService;

	@GetMapping("")
	public List<Product> get() {
		return productService.get();
	}

// Tim kiem theo ten product
	@GetMapping("/search")
	public String adminProduct(Model model, @RequestParam String productName) {
		List<Product> products = productService.search(productName);
		model.addAttribute("products", products);
		return "client/home";
	}
	
	@GetMapping("/product-detail/{id}")
	public String productDetail(@PathVariable int id, Model model) {
		Product product = productService.get(id);
		int brandId = product.getBrandId();
		Brand brand = brandService.get(brandId);
 		model.addAttribute("brand", brand);
		model.addAttribute("product", product);
		return "client/productDetail";
	}

}
