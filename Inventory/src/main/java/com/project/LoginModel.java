package com.project;
import javax.validation.constraints.Size; 
import javax.validation.constraints.NotNull;

public class LoginModel
{	@NotNull(message = "{user Name should be Mandatory}")
      private String user;
	@NotNull(message = "{Password should be Mandatory}")
      private String Password;
      
      
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
     
      
      
      
}
