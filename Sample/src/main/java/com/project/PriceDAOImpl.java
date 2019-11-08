package com.project;

import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
public class PriceDAOImpl implements PriceDAO{
	JdbcTemplate template;

	public JdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
		
		}

	 private DataSource dataSource;

 private SimpleJdbcCall createUserProc;
 @Autowired
 public void setDataSource(DataSource dataSource) {
   this.createUserProc = new SimpleJdbcCall(dataSource).withProcedureName("pricereview");
 }

	public int priceinfo(PricereviewModel pm) {
		 SqlParameterSource in = new MapSqlParameterSource()
				 .addValue("id",pm.getItem_id())
				 .addValue("batchno",pm.getItem_BatchNo())
				 .addValue("saleprice",pm.getItem_Saleprice())
				 .addValue("costprice",pm.getItem_Costprice())
				 .addValue("mrpprice",pm.getItem_MRP());
		 Map<String,Object> out=createUserProc.execute(in);
		 return 1;
	}
		
	}