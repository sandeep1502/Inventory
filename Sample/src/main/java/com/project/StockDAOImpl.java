package com.project;
import org.springframework.jdbc.core.JdbcTemplate;

public class StockDAOImpl implements StockDAO {
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		
		
		
		
		
	}

	public int stockinfo(StockadjustModel sam) {
		   String qry = "insert into StockAdjustment values(?,?,?,?)";

		    //execute the DML statement
		    int st=template.update(qry, new Object[] {sam.getAdjitem_id(), sam.getAdjbatch_no(), sam. getDefect_stock(),sam.getReason() });
		    
			return st;
				}
	
}
