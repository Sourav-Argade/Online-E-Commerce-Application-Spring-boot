package com.sourav.OnlineECommerceApp.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sourav.OnlineECommerceApp.dao.BuyRepo;
import com.sourav.OnlineECommerceApp.entity.Buy;
import com.sourav.OnlineECommerceApp.exception.InvalidProductException;
import com.sourav.OnlineECommerceApp.exception.ProductNotFoundException;
import com.sourav.OnlineECommerceApp.exception.ProductUnvailable;

@Service
public class BuyService {
	@Autowired
	private BuyRepo buyrepo;
	
	public void buy(Buy b) {
		buyrepo.save(b);		//saving the buyed data
		System.out.println("Product Buyed Successfully...");
	}
	
	
	public Buy viewBuy(int pid) throws ProductUnvailable
	{
		Buy b = buyrepo.findById(pid).orElse(null); 	 //viewing buyed item with product id
		if(b!=null)
		{
			return b;				//if buyed item list in not null it will return data stored in b.
		}else {
			throw new ProductUnvailable();		// or else throw product unavailable exception
		}
		
	}
	
	public ArrayList<Buy> viewAllBuys() {
		return (ArrayList<Buy>) buyrepo.findAll();	//view all the buyed items list
	}
	
	public Buy receipt(int billno) throws ProductNotFoundException {
		Buy b = buyrepo.findById(billno).orElse(null);
		if(b!=null)
		{
			return b;
		}
		else
		{
			throw new ProductNotFoundException();
			//return "Invalid Bill number";
		}
	}
}
