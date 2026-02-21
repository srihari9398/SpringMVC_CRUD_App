package com.excelr.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="product_tbl" )
public class Product {
		
		@Id 
		private Integer productId;
		private String productName;
		private Double productPrice;
		
}
