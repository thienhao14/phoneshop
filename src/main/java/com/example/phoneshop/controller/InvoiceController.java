package com.example.phoneshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/order")
public class InvoiceController {
	
	@GetMapping("")
	public String getOrder(Model model) {
		return "/client/order";
	}
	
//	@Autowired
//	private InvoiceService invoiceService;
//	
//	@PostMapping("")
//	public Invoice save(@RequestBody Invoice invoiceObj) {
//		invoiceService.save(invoiceObj);
//		return invoiceObj;
//	}
//	
//	@GetMapping("")
//	public List<Invoice> get(){
//		return invoiceService.get();
//	}
//	
//	@GetMapping("/{id}")
//	public Invoice get(@PathVariable int id) {
//		Invoice invoiceObj = invoiceService.get(id);
//		if(invoiceObj == null) {
//			throw new RuntimeException("Invoice not found");
//		} return invoiceObj;
//	}
//	
//	@PutMapping("")
//	public Invoice update(@RequestBody Invoice invoiceObj) {
//		invoiceService.save(invoiceObj);
//		return invoiceObj;
//	}
//	
//	@DeleteMapping("/{id}")
//	public String delete(@PathVariable int id) {
//		invoiceService.delete(id);
//		return "Invoice has been delete with id: " + id;
//	}
	
	
	
	
	
	
}
