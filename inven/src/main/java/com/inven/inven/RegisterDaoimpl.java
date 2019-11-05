package com.inven.inven;

import org.springframework.jdbc.core.JdbcTemplate;

public class RegisterDaoimpl implements RegisterDao {
	
			JdbcTemplate template;
			public void setTemplate(JdbcTemplate t) {
			template=t;
			}	
public int Registeruser(registerBean rgb)
{
			
			
	//prepare the insert statement
    String qry = "insert into one values(?,?,?,?,?)";

    //execute the DML statement
    int st=template.update(qry, new Object[] { rgb.getUsername(), rgb.getType(), rgb.getEmail(),rgb.getPassword(), rgb.getcPassword() });
    
	return st;
			
			
			
			
			

			
			
			
			
			}
			




}

