package com.excelr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.excelr.entity.Product;
import com.excelr.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/pform")
	public String getForm(Model model) {
		Product p1=new Product();
		model.addAttribute("product",p1);
		return "index";
	}
	
	@PostMapping("/pdata")
	public String saveProductData(@ModelAttribute Product product,Model model) {
		productService.upsert(product);
		model.addAttribute("msg","Data saved successfuly");
		return "success";
	}
	
	@GetMapping("/all")
	public String fetchAllRecords(Model model) {
		List<Product> products=productService.getAllRecords();
		model.addAttribute("all", products);
		return "allrecords";
	}
	
	@GetMapping("/get/{id}")
	public String getProductById(@PathVariable("id") Integer productId,Model model) {
		Product pro=productService.retrieveSingleRecordById(productId);
		model.addAttribute("res", pro);
		return "single";
	}
	
	@GetMapping("/delete/{id}")
	public String deleteRecordById(@PathVariable("id") Integer productId, Model model) {
		productService.deleteById(productId);
		model.addAttribute("res", "record deleted successfully");
		return "delete";
	}
}
