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

public class ItemMasterController
{
	@Autowired
	ItemMasterDAO d;

@RequestMapping(value = "/view7", method = RequestMethod.GET)
public ModelAndView showAllUsers(HttpServletRequest request, HttpServletResponse response) {
	  
  ModelAndView mav = new ModelAndView("Item_Master");
	List<ItemMasterModel> li=d.getAllUsers();
	ItemMasterModel itm=new ItemMasterModel();
	ItemMasterList im=new ItemMasterList();
	im.setLi(li);
	mav.addObject("ItemMasterForm",itm);
	mav.addObject("ItemMasterList", im);	
	

	return mav;
}

@RequestMapping(value="/additemmaster", method = RequestMethod.POST)
public String additemmaster(@ModelAttribute("ItemMasterForm") ItemMasterModel im) {
	
	int status=d.additemmaster(im);
	return "redirect:/view7";
	
	
}

@RequestMapping(value="/deleteitemmaster/{id}", method = RequestMethod.GET)
public String deleteitemmaster(@PathVariable String id) {
	
	int status=d.deleteitemmaster(id);
	return "redirect:/view7";
	
	
}

}
