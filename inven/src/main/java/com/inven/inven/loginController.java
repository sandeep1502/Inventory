package com.inven.inven;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class loginController {
	
	
	@Autowired
	  loginDao lgDAO;
	
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("login") loginBean login) {
		
		  ModelAndView mav = null;
		  
		   int ls = lgDAO. loginD(login);
		      
		      //navigating based on the result
		      if (ls==0) {   //successful login
		    	  mav = new ModelAndView("loginsuccess");
		    	  mav.addObject("firstname", login.getUser());
		      } else if (ls==1) {	//login failure with wrong pwd
		    	  mav = new ModelAndView("login");
		    	  mav.addObject("message", "Password is wrong!!");
		      } else if (ls==2) {		//login failure with wrong user
		    	  mav = new ModelAndView("login");
		    	  mav.addObject("message", "Username is wrong!!");
		      }
		      return mav;
	
	}
}
	


