package com.project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MainController {
@Autowired
Dao d;

	

	
	@RequestMapping(value="/viewbrands",method=RequestMethod.GET)
	public ModelAndView getallusers(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("Brands");
		BrandModel m=new BrandModel();
		List<BrandModel> li=d.allusers();
		BrandList ul=new BrandList();
		ul.setLi(li);
		mv.addObject("brandlist",ul);
		mv.addObject("iteam",m);
		return mv;
	}
	
	
	@RequestMapping(value="/viewoutlets",method=RequestMethod.GET)
	public ModelAndView getalloutlets(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("Outlets");
		List<OutletModel> li=d.alloutlets();
		OutletList ul=new OutletList();
		ul.setLi(li);
		mv.addObject("outletlist",ul);
		return mv;
	}
	
	@RequestMapping(value="/viewitemspec",method=RequestMethod.GET)
	public ModelAndView getallitemspec(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv=new ModelAndView("Item_Specification");
		List<ItemspecModel> li=d.allitemspec();
		ItemspecList ul=new ItemspecList();
		ul.setLi(li);
		mv.addObject("itemspeclist",ul);
		return mv;
		
	}
	
	
	
	@RequestMapping(value="/addbrand",method=RequestMethod.POST)
	public String addbrand(@ModelAttribute("iteam") BrandModel m) {
	
		int status=d.addbrand(m);
		
	return "redirect:/viewbrands";
	}
	
	
	
	@RequestMapping(value="/deletebrand/{id}",method=RequestMethod.GET)
	public String deletebrand(@PathVariable String id) {
		
		int status=d.deletebrand(id);
		  return "redirect:/viewbrands";
	}
	
	
	
	

}
