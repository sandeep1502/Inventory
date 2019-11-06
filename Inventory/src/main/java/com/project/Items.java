package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class Items {
	JdbcTemplate template;
	public JdbcTemplate getTemplate() {
		return template;
	}
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	public List<ItemModel> getAllItems() {
		
	      String SQL = "select * from items where item_id=?";
	      List <ItemModel> Items = template.query(SQL,new ResultSetExtractor<List<ItemModel>>(){
	         
	         public List<ItemModel> extractData(ResultSet rs) throws SQLException, DataAccessException {
	            
	            List<ItemModel> itemlist = new ArrayList<ItemModel>();  
	            while(rs.next()){  
	               ItemModel item = new ItemModel();
	               item.setItem_id(rs.getInt(1));
	               item.setItem_Type_Id(rs.getString(2));
	               item.setItem_Category(rs.getString(3));
	               item.setItem_Title(rs.getString(4));
	               item.setItem_Brand_Id(rs.getString(5));
	               item.setItem_Os_Type(rs.getString(6));
	               item.setItem_DeviceVersion(rs.getString(7));
	               itemlist.add(item);  
	            }  
	            return itemlist;  
	         }    	  
	      });
	      return Items;
	   }

}
