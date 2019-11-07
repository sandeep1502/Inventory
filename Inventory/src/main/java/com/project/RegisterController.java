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
public class RegisterController {

	@Autowired
	RegisterDao rgDAO;
	
	 @RequestMapping(value = "/register", method = RequestMethod.GET)
	  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("register");
	    RegisterModel um=new RegisterModel();
	    um.setUsername("sandeep");
	    mav.addObject("user", um);
	    return mav;
	  }
	@RequestMapping(value = "/RegistrationProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") RegisterModel user) {
		
		 int status=rgDAO.Registeruser(user);
		 if(status==0)
		 {
			 return new ModelAndView("register");
			
		 }
		 else {
			 return new ModelAndView("register","message","registration sucessfull");
		 
		 }
		 
	}
	

}
