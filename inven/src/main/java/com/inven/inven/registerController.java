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
public class registerController {

	@Autowired
	RegisterDao rgDAO;
	
	
	@RequestMapping(value = "/RegistrationProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("Registration") registerBean rgb) {
		 int status=rgDAO.Registeruser(rgb);

		  return new ModelAndView("regsuccess", "firstname", rgb.getUsername());
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
	
	
	
	
}
