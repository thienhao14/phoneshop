package com.example.phoneshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.phoneshop.model.Item;
import com.example.phoneshop.model.Product;
import com.example.phoneshop.service.ProductService;

@Controller
public class CartController {
	@Autowired
	private ProductService productService;

	@GetMapping("/cart")
	public String cartForward() {
		
		return "/client/cart";
	}
	
	@GetMapping("/cart/{id}")
	public String cart(@PathVariable int id, HttpSession session) {
		Product product = productService.get(id);
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(product, 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Item(product, 1));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}

		return "client/cart";
	}
	
	private int exists(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}
	
	@GetMapping("remove/{id}")
	public String remove(@PathVariable int id, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "client/cart";
	}
	
	


}
