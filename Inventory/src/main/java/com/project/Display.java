package com.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

public class Display {
	/*@RequestMapping(value = "/multiusers", method = RequestMethod.GET)
	  public ModelAndView showAllUsers(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("multiusers");
		List<ItemsModel> ulist=rgDAO.getItems();
		ItemForm uf=new ItemForm();
		uf.setUsersList(ulist);
		mav.addObject("usersForm", uf);
		
		/*
		if(null != ulist && ulist.size() > 0) {
			RegistrationController.users = ulist;
			for (UserModel u : ulist) {
				System.out.printf("%s \t %s \n", u.getFirstname(), u.getLastname());
			}
		}
		
		
	    return mav;
	  }*/
	
}
