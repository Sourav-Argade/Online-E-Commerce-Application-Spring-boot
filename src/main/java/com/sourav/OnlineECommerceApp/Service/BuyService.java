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
		buyrepo.save(b);
		System.out.println("Product Buyed Successfully...");
	}
	
	
	public Buy viewBuy(int pid) throws ProductUnvailable
	{
		Buy b = buyrepo.findById(pid).orElse(null);
		if(b!=null)
		{
			//System.out.println(b.toString());
		//	return p.toString();
			return b;
		}else {
			throw new ProductUnvailable();
			//System.out.println("Product unavailable"); 
			//return b;
		}
		
	}
	
	public ArrayList<Buy> viewAllBuys() {
		return (ArrayList<Buy>) buyrepo.findAll();
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
