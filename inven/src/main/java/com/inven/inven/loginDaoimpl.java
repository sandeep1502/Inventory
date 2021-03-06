package com.inven.inven;

import org.springframework.jdbc.core.JdbcTemplate;

public class loginDaoimpl implements loginDao {
		JdbcTemplate template;
		public void setTemplate(JdbcTemplate t) {
			template=t;
		}

public int loginD(loginBean lm) {
	
	//get the password for the given user
	String qry = "select password from one where username=?";
	
	try {
	String pwd = (String)template.queryForObject(qry,new Object[]{lm.getUser()},String.class );
	
	//verify the password
	if (pwd != null) {
		if (lm.getPassword().equals(pwd)) {
			return 0;	//success
		}else {
			return 1;	//wrong password
		}
	}else {
		return 2;
	}
	
	}catch(Exception ex) {
		return 2;	//user itself wrong
	}
	
}
}
