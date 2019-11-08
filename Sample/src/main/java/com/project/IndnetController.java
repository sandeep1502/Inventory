package com.project;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class IndnetController
{
	
	@Autowired
	IndentDaoImpl d;
	
	@RequestMapping(value="/ViewIndent",method=RequestMethod.GET)
	public ModelAndView Indents(HttpServletRequest request,HttpServletResponse response)
	{
		ModelAndView mv=new ModelAndView("VendorViewIndent");
		List<IndentModel> li=d.AllIndents();
		IndentList vib= new IndentList();
		vib.setVib(li);
		mv.addObject("VendorViewIndent",vib);
		return mv;

	}
}
