package com.Firstname;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class tourimpl implements Tourinterface
{
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate t) 
	{
		template=t;
	}
	
	public Map<String, String> tour(){


		String SQL = "select places from tourism";

		Map<String, String> x=template.query(SQL,new ResultSetExtractor<Map<String, String>>(){
		        
		         public Map<String, String> extractData(
		            ResultSet rs) throws SQLException, DataAccessException {
		           
		        Map<String, String> ulist = new HashMap<String, String>();
		            while(rs.next()){ 
		           
		           
		            ulist.put(rs.getString("places"), rs.getString("places"));
		            } 
		            return ulist; 
		         }     
		      });



		return x;
	}
	}
