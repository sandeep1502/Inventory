package com.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemTypeController {
@Autowired
ItemTypeDAO d;

@RequestMapping(value = "/view77", method = RequestMethod.GET)
public ModelAndView showAllUsers(HttpServletRequest request, HttpServletResponse response) {
	  
  ModelAndView mav = new ModelAndView("Item_Type");
	List<ItemTypeModel> li=d.getAllUsers();
	ItemTypeModel itm=new ItemTypeModel();
	ItemTypeList it=new ItemTypeList();
	it.setLi(li);
	mav.addObject("ItemTypeForm",itm);
	mav.addObject("ItemTypeList", it);	
	
	return mav;
}
@RequestMapping(value="/additemtype", method = RequestMethod.POST)
public String additemtype(@ModelAttribute("ItemTypeForm") ItemTypeModel im) {
	
	int status=d.additemtype(im);
	return "redirect:/view77";
	
}
@RequestMapping(value="/deleteitemtype/{id}", method = RequestMethod.GET)
public String deleteitemtype(@PathVariable String id) {
	
	int status=d.deleteitemtype(id);
	return "redirect:/view77";
	
}
}