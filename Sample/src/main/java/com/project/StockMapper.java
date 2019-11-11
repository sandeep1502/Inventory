package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

public class StockMapper implements RowMapper<StockModel>{

	public StockModel mapRow(ResultSet rs,int rowNum) throws SQLException, DataAccessException {
		StockModel stk = new StockModel();
	       stk.setIssue_id(rs.getInt("ISSU_ID"));
	       stk.setIssues_indents_id(rs.getInt("ISSU_INDN_ID"));
	       stk.setIssues_date(rs.getDate("ISSU_DATE"));
	       stk.setIssues_amount(rs.getInt("ISSU_AMOUNT"));
	       
		return stk;
	}

}
