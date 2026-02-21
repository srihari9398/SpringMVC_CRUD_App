package com.excelr.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.excelr.entity.Product;
import com.excelr.repository.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	//to get all records
	public List<Product> getAllRecords(){
		
		return productRepository.findAll();
	}
	
	//to save the data or inserting
	public Product upsert(Product product) {
		return productRepository.save(product);
	}
	
	//to delete the single data by id
	public void deleteById(Integer productId) {
		productRepository.deleteById(productId);
	}
	
	//to retrieve the data by id
	public Product retrieveSingleRecordById(Integer productId) {
		Optional<Product> op=productRepository.findById(productId);
		return op.orElse(null);
	}
}
