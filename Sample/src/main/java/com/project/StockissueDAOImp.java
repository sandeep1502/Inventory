package com.project;
import javax.sql.DataSource;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class StockissueDAOImp implements StockissueDAO {
	JdbcTemplate template;
	



	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	public List<StockModel> getAllUsers() {
		
		String SQL = "select * from stockissues";
		List <StockModel> users = template.query(SQL,new StockMapper());
		return users;		
       }
	
    }