package com.project;

import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

public class LiveStockDaoImpl implements LiveStockDao 
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

 
	
	
	

	public List<LiveStockBean> getLiveStock()
	{
		
		String qry="select * from item_Stock"; 
		List<LiveStockBean> li=template.query(qry,new StockMapper());

		return li; 
	}

	  
	
	 
}
 