package com.example.phoneshop.controller;

import java.util.Calendar;
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

import com.example.phoneshop.model.Invoice;
import com.example.phoneshop.service.InvoiceService;

@Controller
@RequestMapping("/order")
public class InvoiceController {

	@Autowired
	private InvoiceService invoiceService;

	@PostMapping("")
	public String save(Invoice invoiceObj, Model model, HttpSession session) {
		System.out.println(invoiceObj);
		invoiceObj.setActiveFlag(1);
		invoiceObj.setCreateDate( new java.sql.Date(Calendar.getInstance().getTime().getTime()));
 		invoiceService.save(invoiceObj);
 		session.removeAttribute("cart");
 		model.addAttribute("message", "Ordered successfully");
 		return "/client/cart";
	}

	@GetMapping("")
	public List<Invoice> get() {
		return invoiceService.get();
	}

	@GetMapping("/{id}")
	public Invoice get(@PathVariable int id) {
		Invoice invoiceObj = invoiceService.get(id);
		if (invoiceObj == null) {
			throw new RuntimeException("Invoice not found");
		}
		return invoiceObj;
	}

	@PutMapping("")
	public Invoice update(@RequestBody Invoice invoiceObj) {
		invoiceObj.setActiveFlag(1);
		invoiceService.save(invoiceObj);
		return invoiceObj;
	}

	@DeleteMapping("/{id}")
	public String delete(@PathVariable int id) {
		invoiceService.delete(id);
		return "Invoice has been delete with id: " + id;
	}

}
