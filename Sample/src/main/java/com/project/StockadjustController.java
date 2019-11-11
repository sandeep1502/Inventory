package com.project;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class StockadjustController {
	@Autowired
	StockDAO stDAO;
	

	  @RequestMapping(value ="/Stockadjustment", method =RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("Stock_Adjustment");
	    StockadjustModel sam=new StockadjustModel();
	
	    mav.addObject("stock",sam); 
	    return mav;
	  }

	  @RequestMapping(value="/stockprocess", method=RequestMethod.POST)
	  public ModelAndView addUser(@ModelAttribute("stock") StockadjustModel stock) {
		  
		  //invoke DAO class
		  int status=stDAO.stockinfo(stock);

		  return new ModelAndView("success");
	  }
	

}
