package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ItemspecMapper implements RowMapper<ItemspecModel> {
	
	public ItemspecModel mapRow(ResultSet rs,int rowNum) throws SQLException {
		ItemspecModel i=new ItemspecModel();
	    i.setItem_id(rs.getInt("item_id"));
	    i.setItsp_index(rs.getInt("itsp_index"));
	    i.setItsp_group(rs.getString("itsp_group"));
	    i.setItsp_title(rs.getString("itsp_title"));
	    i.setItsp_value(rs.getString("itsp_value"));
		return i;
		}

}
