package com.project;

import java.sql.ResultSet;
import java.sql.SQLException; 
import org.springframework.jdbc.core.RowMapper;

public class IndentMapper implements RowMapper<IndentModel> 
{

			public IndentModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				IndentModel vib= new IndentModel();
				
				vib.setIndent_Id(rs.getInt("INDN_ID"));
				vib.setIndents_Item(rs.getString("INDN_OUTLET"));
				vib.setIndent_Date(rs.getDate("INDN_DATE"));
				vib.setIndents_Amount(rs.getDouble("INDN_AMOUNT"));
				vib.setIssued_Status(rs.getString("INDN_STATUS"));
				return vib;
				
			}
}
