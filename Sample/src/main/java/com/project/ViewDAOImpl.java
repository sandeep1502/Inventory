package com.project;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

public class ViewDAOImpl implements ViewDAO 
{
	JdbcTemplate template;
	public JdbcTemplate getTemplate()
	{
		return template; 
	}
	public void setTemplate(JdbcTemplate template) 
	{ 
		this.template = template; 
	}

	
	
	
	
	
	
	 
	
	public List<ViewModel1> getViewIndent1() 
	{
		String qry1="select * from Indents_tab";
		List<ViewModel1> vm1=template.query(qry1,new IndentMapper1());
		return vm1; 
	}
	
	
	public List<ViewModel2> getViewIndent2()
	{
		String qry2="select * from Indents_Items"; 
		List<ViewModel2> vm2=template.query(qry2,new IndentMapper2());
		return vm2; 
	} 
	 
	
}
