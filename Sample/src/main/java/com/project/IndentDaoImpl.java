package com.project;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class IndentDaoImpl implements  IndentDao
{ 
	
	JdbcTemplate template;
	public JdbcTemplate getTemplate() {
		return template;
	}
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	public List<IndentModel> AllIndents()
	{
		String qry= "select * from INDENTS_TAB"; 
		 
		List<IndentModel> vib= template.query(qry,new IndentMapper()); 
	 return vib;  
	 
	} 
}
