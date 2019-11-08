package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class OutletMapper implements RowMapper<OutletModel> {
	
	
	public OutletModel mapRow(ResultSet rs,int rowNum) throws SQLException {
		OutletModel o=new OutletModel();
		o.setOutl_id(rs.getInt("outl_id"));
		o.setOutl_location(rs.getString("outl_location"));
		o.setOutl_address(rs.getString("outl_address"));
		o.setOutl_cperson(rs.getString("outl_cperson"));
		o.setOutl_cmobile(rs.getString("outl_cmobile"));
		o.setOutl_phone(rs.getString("outl_phone"));
		o.setOutl_email(rs.getString("outl_email"));
		

		return o;
	}

}
