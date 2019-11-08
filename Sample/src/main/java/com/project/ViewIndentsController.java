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
public class ViewIndentsController 
{
	 
	@Autowired 
	ViewDAO Vdao; 
	 
	
	  @RequestMapping(value ="/indent", method = RequestMethod.GET)
	  public ModelAndView showLiveStock(HttpServletRequest request, HttpServletResponse response) 
	  {
		  
	    ModelAndView mav = new ModelAndView("View_All_Indents");
	    
	    
	    List<ViewModel1> ulist1=Vdao.getViewIndent1();
	    ViewListModel uf1=new ViewListModel();  
		             uf1.setVm1(ulist1);  
		mav.addObject("ViewListModel1", uf1); 
		
		List<ViewModel2> ulist2=Vdao.getViewIndent2();
	    ViewListModel uf2=new ViewListModel();  
		             uf2.setVm2(ulist2);  
		mav.addObject("ViewListModel2", uf2); 
		
	
	    return mav;
	  }
	  
}
 