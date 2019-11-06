package com.project;

import org.springframework.jdbc.core.JdbcTemplate;

public class RegisterDaoImpl implements RegisterDao {
	
			JdbcTemplate template;
				
public JdbcTemplate getTemplate() {
				return template;
			}

			public void setTemplate(JdbcTemplate template) {
				this.template = template;
			}

public int Registeruser(RegisterModel rgb)
{
			
			
	//prepare the insert statement
    String qry = "insert into registration values(?,?,?,?)";
    	
    //execute the DML statement
    int st=template.update(qry, new Object[] { rgb.getUsername(), rgb.getType(), rgb.getEmail(),rgb.getPassword()});
    
	return st;

			}
public int validateCredentials(LoginModel lm) {
	
	//get the password for the given user
	String qry = "select pass from registration where username=?";
	String qry2 = "select usertype from registration where username=?";
	try {
	String pwd = (String)template.queryForObject(qry,new Object[]{lm.getUser()}, String.class );
	String type = (String)template.queryForObject(qry,new Object[]{lm.getUser()}, String.class );
	//verify the password
	if (pwd != null) {
		if (lm.getPassword().equals(pwd)) {
			if("ADMIN".equals(type))
			{
			return 0;	
			}
			else
			{
				return 1;
			}//success
		}else {
			return 2;	//wrong password
		}
	}else {
		return 3;
	}
	
	}catch(Exception ex) {
		return 3;	//user itself wrong
	}
	
}

}

