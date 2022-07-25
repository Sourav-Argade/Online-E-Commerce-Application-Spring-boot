package com.sourav.OnlineECommerceApp.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sourav.OnlineECommerceApp.dao.ProductRepo;
import com.sourav.OnlineECommerceApp.entity.Buy;
import com.sourav.OnlineECommerceApp.entity.Product;
import com.sourav.OnlineECommerceApp.exception.InvalidProductException;
import com.sourav.OnlineECommerceApp.exception.ProductUnvailable;
import com.sourav.OnlineECommerceApp.exception.StockUnavailable;

@Service
public class ProductService {
	@Autowired
	private ProductRepo prdrepo;
	@Autowired
	private BuyService psvc;
	public String addProduct(Product p)     //adding product in Admin section 
	{
		prdrepo.save(p);		//saving the details in p
		return "Added..";
	}
	
	public List<Product> getAll()		//creating an Arraylist to store products
	{
		return prdrepo.findAll();
	}
	public Product viewProduct(int pid) throws ProductUnvailable
	{
		Product p = prdrepo.findById(pid).orElse(null);		//view product with the help of product id
		if(p!=null)
		{
			return p;					//if list is not null show all the added data
		}
		else {
			throw new ProductUnvailable();			//or else throw an product unavailable exception
		}
		
	}
	
	public ArrayList<Product> viewAllProducts() {
		return (ArrayList<Product>) prdrepo.findAll();		//view all the products in the list
	}
	
	
	
	
	
		public String updateProduct(Product p1)
		{
			Product p = prdrepo.findById(p1.getPid()).orElse(null); 	//find product by entering product id.
			if(p!=null)
			{
				prdrepo.delete(p);					//delete the previous item in the position if product id
			}
			prdrepo.save(p1);
			return "Updated..";						//update the list with the new entered data
		}
		
		public String deleteProduct(int pid) throws ProductUnvailable		
		{
			Product p = prdrepo.findById(pid).orElse(null);			//find product by entering product id.
			if(p!=null)
			{
				prdrepo.delete(p);					//deletes the product present at the id position.
			}
			return "Product unavailable";					
	
		}
		
		public String sellProduct(int quantity,int pid) throws InvalidProductException, StockUnavailable {
			Product p = prdrepo.findById(pid).orElse(null);			//product id is default declared
			if(p!=null)
			{
				if(p.getAvailableQuantity()>= quantity)			//enter the quantity to be buyed
				{
					p.setAvailableQuantity(p.getAvailableQuantity()-quantity);
					psvc.buy(new Buy(pid,quantity,(quantity*p.getPcost())));
					System.out.println("Your Bill amount is "+quantity*p.getPcost());
					return (quantity+" product Buyed....."+ "\r\n"
							+ " Your Bill Amount is " +quantity*p.getPcost() );	//return number of items buyed and the bill amount
				}
				else
				{
					throw new StockUnavailable();			//if stock is unavailable throw product unavailable exception
				}
			}
			else
			{
				throw new InvalidProductException();			//if product is not present throw Invalid Product excetption
			}
		}
		
		public String addStock(int pid, int pqty) throws InvalidProductException
		{
			Product p = prdrepo.findById(pid).orElse(null);			//find product by entering product id.
			if(p!=null)
			{
				System.out.println("Inside Sell");
				System.out.println(p.getAvailableQuantity());
				p.setAvailableQuantity(p.getAvailableQuantity()+pqty);		//add stock in the Admin portal
				System.out.println(p.getAvailableQuantity());
				updateProduct(p);
				return "Stock Added";
			}
			else
			{
				throw new InvalidProductException();			//if product is not present return Invalid Product Exception
			}
	}

}
