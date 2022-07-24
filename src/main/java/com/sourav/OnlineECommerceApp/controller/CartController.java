package com.sourav.OnlineECommerceApp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sourav.OnlineECommerceApp.Service.BuyService;
import com.sourav.OnlineECommerceApp.entity.Buy;
import com.sourav.OnlineECommerceApp.exception.ProductNotFoundException;
import com.sourav.OnlineECommerceApp.exception.ProductUnvailable;
@Controller
public class CartController {

	@Autowired
	BuyService buysvc;
	

	@RequestMapping("cart")
	public ModelAndView viewBuy(int billno) throws ProductUnvailable
	{
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("cart1.jsp");
		mvc.addObject("mode1", "single1");
		
		Buy b = buysvc.viewBuy(billno);
		if(b!=null) {
			mvc.addObject("flag", true);
			mvc.addObject("result",b);
			return mvc;
		}
		mvc.addObject("flag", false);
		mvc.addObject("result", "Product not found...");
		return mvc;
		
	}
	
	@RequestMapping("cartall")
	public ModelAndView viewAllBuys() {
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("cart1.jsp");
		mvc.addObject("mode1","list1");
		mvc.addObject("result",buysvc.viewAllBuys());
		return mvc;
	}
	
	@ResponseBody
	public Buy receipt(int billno) throws ProductNotFoundException
	{
		return buysvc.receipt(billno);
	}
}
