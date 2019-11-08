package com.project;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class LiveStockController
{
	 
	@Autowired 
	LiveStockDao LSdao;
	  @RequestMapping(value ="/live", method = RequestMethod.GET)
	  public ModelAndView showLiveStock(HttpServletRequest request, HttpServletResponse response) {
		  
	    ModelAndView mav = new ModelAndView("Live_Item_Stock");
	    List<LiveStockBean> ulist=LSdao.getLiveStock();
		LiveListBean uf=new LiveListBean(); 
		             uf.setLi(ulist); 
		mav.addObject("LiveListBean", uf);
		
	    return mav;
	  }
	  
}
 