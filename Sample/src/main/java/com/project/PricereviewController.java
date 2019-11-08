package com.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class PricereviewController {
	@Autowired
	PriceDAO prDAO;
	

	  @RequestMapping(value ="/Pricereview", method =RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("Price_Review");
	    PricereviewModel pm=new PricereviewModel();
	
	    mav.addObject("price",pm); 
	    return mav;
	  }

	  @RequestMapping(value="/priceprocess", method=RequestMethod.POST)
	  public ModelAndView addUser(@ModelAttribute("price") PricereviewModel price,BindingResult br) {
		  
		  //invoke DAO class
		  int status=prDAO.priceinfo(price);

		  return new ModelAndView("successful");
	  }
	 

}
