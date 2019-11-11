package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;

public class ItemTypeMapper implements  RowMapper<ItemTypeModel>{

	public ItemTypeModel mapRow(ResultSet rs,int rowNum) throws SQLException, DataAccessException {
		ItemTypeModel itm = new ItemTypeModel();
	       itm.setItty_id(rs.getString("itty_id"));
	       itm.setItty_title (rs.getString("itty_title"));
	       itm.setItty_desc(rs.getString("itty_desc"));
	     
	       
		return itm;
	}
}
