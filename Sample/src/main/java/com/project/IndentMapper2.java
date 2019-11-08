package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class IndentMapper2 implements RowMapper<ViewModel2>
{

	public ViewModel2 mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		ViewModel2 lb2=new ViewModel2(); 
		
		lb2.setIndn_id(rs.getInt("indn_id"));
		lb2.setIndn_item_id(rs.getInt("indn_item_id"));
		lb2.setInit_qty(rs.getInt("init_qty"));
		
		return lb2;
	}
  
}
