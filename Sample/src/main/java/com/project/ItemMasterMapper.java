package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

public class ItemMasterMapper implements RowMapper<ItemMasterModel> {

	public ItemMasterModel mapRow(ResultSet rs,int rowNum) throws SQLException, DataAccessException {
		ItemMasterModel imm=new ItemMasterModel();
		   imm.setItem_id(rs.getInt("item_id"));
	       imm.setItem_type_id(rs.getString("item_itty_id"));
	       imm.setItem_category(rs.getString("item_catg"));
	       imm.setItem_title(rs.getString("item_title"));
	       imm.setItem_brand_id(rs.getString("item_brnd_id"));
	       imm.setItem_os_type(rs.getString("item_os_type"));
	       imm.setItem_device_version(rs.getString("item_deviceversion"));
	      
	    	
		return imm;
	}

}
