package com.example.phoneshop.dao;

import java.util.List;

import com.example.phoneshop.model.Invoice;



public interface InvoiceDAO {
	List<Invoice> get();
	Invoice get(int id);
	void save(Invoice user);
	void delete(int id);

}
