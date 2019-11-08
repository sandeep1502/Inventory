package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BrandMapper implements RowMapper<BrandModel>{
			
			public BrandModel mapRow(ResultSet rs,int rowNum) throws SQLException {
				BrandModel b=new BrandModel();
				b.setBrnd_id(rs.getString("Brnd_id"));
				b.setBrnd_title(rs.getString("Brnd_title"));
				b.setBrnd_catg(rs.getString("Brnd_catg"));
				b.setBrnd_desc(rs.getString("Brnd_desc"));
				return b;
				}

		}


