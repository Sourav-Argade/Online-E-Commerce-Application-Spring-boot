package com.sourav.OnlineECommerceApp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sourav.OnlineECommerceApp.entity.Product;

public interface ProductRepo extends JpaRepository<Product,Integer>{



}
