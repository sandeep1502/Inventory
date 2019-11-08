package com.project;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;



public class IndentMapper1 implements RowMapper<ViewModel1>
{

	public ViewModel1 mapRow(ResultSet rs, int rowNum) throws SQLException
	{

         	ViewModel1 lb1=new ViewModel1();
         	
			lb1.setIndn_id(rs.getInt("indn_id"));
			lb1.setIndn_outlet(rs.getInt("indn_outlet"));
			lb1.setIndn_date(rs.getDate("indn_date")); 
			lb1.setIndn_amount(rs.getInt("indn_amount"));
			lb1.setIndn_status(rs.getString("indn_status")); 
			
			
			
			
			return lb1;
	}
	
}
  