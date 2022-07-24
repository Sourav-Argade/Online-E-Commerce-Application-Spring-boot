package com.sourav.OnlineECommerceApp.Service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.sourav.OnlineECommerceApp.entity.Product;

@Service
public interface EcommerceService {
	String addProduct(Product p);
	Product viewProduct(int pid);
	ArrayList<Product> viewAllProducts();
	String updateProduct(Product p1);
	String deleteProduct(int pid);
	String sellProduct(int quantity,int pid);
	
}
