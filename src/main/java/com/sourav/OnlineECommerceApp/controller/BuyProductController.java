package com.sourav.OnlineECommerceApp.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sourav.OnlineECommerceApp.Service.ProductService;

import com.sourav.OnlineECommerceApp.entity.Product;
import com.sourav.OnlineECommerceApp.exception.InvalidProductException;
import com.sourav.OnlineECommerceApp.exception.ProductUnvailable;
import com.sourav.OnlineECommerceApp.exception.StockUnavailable;

@Controller
public class BuyProductController {
	@Autowired
	ProductService prdsvc;
	
	@RequestMapping("index")		
	public String home() {
		return "index.jsp";		//go to the index jsp page 
	}
	@RequestMapping("admin")		//on the admin page
	@ResponseBody
	public String addPrd(Product p)		//add product data
	{
		return prdsvc.addProduct(p);
	}
	
	@RequestMapping("viewpd")
	public ModelAndView viewProduct(int pid) throws ProductUnvailable
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayproduct.jsp");			//display the single product 
		mvc.addObject("mode", "single");
		
		Product p = prdsvc.viewProduct(pid);
		if(p!=null) {
			mvc.addObject("flag", true);
			mvc.addObject("result",p);
			return mvc;
		}
		mvc.addObject("flag", false);
		mvc.addObject("result", "Product not found...");
		return mvc;
		
	}
	
	
	@RequestMapping("viewallpd")
	public ModelAndView viewAllProducts() {
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("displayproduct.jsp");			//display all the products
		mvc.addObject("mode", "list");
		mvc.addObject("result",prdsvc.viewAllProducts());
		return mvc;
	}
	

	@RequestMapping("updatepd")
	@ResponseBody
	public String updatePrd(Product p)
	{
		return prdsvc.updateProduct(p);				//Update a product
	}
	
	@RequestMapping("deletepd")
	@ResponseBody
	public String deletePrd(int pid) throws ProductUnvailable
	{
		return prdsvc.deleteProduct(pid);			//delete the product
	}
	
	@RequestMapping("purchasepd")
	@ResponseBody
	public String purchasePrd(int pid, int quantity) throws InvalidProductException, StockUnavailable
	{
		return prdsvc.sellProduct(quantity,pid);			//purchase a product by entering product id and quantity
	}
}
