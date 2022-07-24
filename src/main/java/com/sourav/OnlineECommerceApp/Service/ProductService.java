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
	public String addProduct(Product p)
	{
		prdrepo.save(p);
		return "Added..";
	}
	
	public List<Product> getAll()
	{
		return prdrepo.findAll();
	}
	public Product viewProduct(int pid) throws ProductUnvailable
	{
		Product p = prdrepo.findById(pid).orElse(null);
		if(p!=null)
		{
			return p;
		}
		else {
			throw new ProductUnvailable();
		}
		
	}
	
	public ArrayList<Product> viewAllProducts() {
		return (ArrayList<Product>) prdrepo.findAll();
	}
	
	
	
	
	
		public String updateProduct(Product p1)
		{
			Product p = prdrepo.findById(p1.getPid()).orElse(null);
			if(p!=null)
			{
				prdrepo.delete(p);
			}
			prdrepo.save(p1);
			return "Updated..";
		}
		
		public String deleteProduct(int pid) throws ProductUnvailable
		{
			Product p = prdrepo.findById(pid).orElse(null);
			if(p!=null)
			{
				prdrepo.delete(p);
			}
			return "Product unavailable";
	
		}
		
		public String sellProduct(int quantity,int pid) throws InvalidProductException, StockUnavailable {
			Product p = prdrepo.findById(pid).orElse(null);
			if(p!=null)
			{
				if(p.getAvailableQuantity()>= quantity)
				{
					p.setAvailableQuantity(p.getAvailableQuantity()-quantity);
					psvc.buy(new Buy(pid,quantity,(quantity*p.getPcost())));
					System.out.println("Your Bill amount is "+quantity*p.getPcost());
					return (quantity+" product Buyed....."+ "\r\n"
							+ " Your Bill Amount is " +quantity*p.getPcost() );
				}
				else
				{
					throw new StockUnavailable();
					//addStock(pid,quantity);
					//return "Stock unavailable...";
				}
			}
			else
			{
				throw new InvalidProductException();
			//	return "Invalid Product";
			}
		}
		
		public String addStock(int pid, int pqty) throws InvalidProductException
		{
			Product p = prdrepo.findById(pid).orElse(null);
			if(p!=null)
			{
				System.out.println("Inside Sell");
				System.out.println(p.getAvailableQuantity());
				p.setAvailableQuantity(p.getAvailableQuantity()+pqty);
				System.out.println(p.getAvailableQuantity());
				updateProduct(p);
				return "Stock Added";
			}
			else
			{
				throw new InvalidProductException();
				//System.out.println("Invalid Product..");
				//return "Invalid Product....";
			}
	}

}
