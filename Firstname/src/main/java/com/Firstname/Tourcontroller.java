package com.Firstname;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class Tourcontroller {
	@Autowired
	  Tourinterface rgDAO;
	@ModelAttribute("tourism")
	 public Map<String, String> tour() {
		  Map<String, String> tour = rgDAO.tour();
	      return tour;
	   }
	
	
}
	
	
	
	
	
	
	
	
	
	
