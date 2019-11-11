package com.project;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.validation.BindingResult;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StockController {
@Autowired
StockissueDAO d;

@RequestMapping(value = "/view", method = RequestMethod.GET)
public ModelAndView showAllUsers(HttpServletRequest request, HttpServletResponse response) {
	  
  ModelAndView mav = new ModelAndView("View_Stock_Issues");
	List<StockModel> li=d.getAllUsers();
	StockList sl=new StockList();
	sl.setLi(li);
	mav.addObject("StockList", sl);	
	//System.out.println(sl.);
	return mav;
}
}
