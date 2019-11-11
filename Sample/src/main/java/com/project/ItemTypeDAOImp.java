package com.project;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

public class ItemTypeDAOImp implements ItemTypeDAO{
JdbcTemplate template;
	



	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}


	public List<ItemTypeModel> getAllUsers() {
		
		String SQL = "select * from items_types";
		List <ItemTypeModel> users = template.query(SQL,new ItemTypeMapper());
		return users;		
       }

public int additemtype(ItemTypeModel itm) {
	
	String SQL="insert into items_types values(?,?,?)";

	 int status=template.update(SQL, new Object[] { itm.getItty_id(),itm.getItty_title(),itm.getItty_desc()});
	return status;
}
public int deleteitemtype(String id) {
	
	String SQL="delete items_types where itty_id='"+id+"'";
	  int status=template.update(SQL);
	return status;
}
}