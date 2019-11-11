package com.project;
import javax.sql.DataSource;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import org.springframework.jdbc.core.JdbcTemplate;
public class ItemMasterDAOImp implements ItemMasterDAO 
{
	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) 
	{
		this.template = template;
	}

	public List<ItemMasterModel> getAllUsers() {
		
		String SQL = "select * from ITEMSMASTER";
		List <ItemMasterModel> users = template.query(SQL,new ItemMasterMapper());
		return users;		
       }
	
	public int additemmaster(ItemMasterModel imm) {
		
		String SQL="insert into ITEMSMASTER values(?,?,?,?,?,?,?,?,?,?,?,?)";
		  int status=template.update(SQL, new Object[] { imm.getItem_id(),imm.getItem_type_id(),imm.getItem_category(),imm.getItem_title(),imm.getItem_brand_id(),imm.getItem_os_type(),imm.getItem_device_version(),imm.getItem_os_version(),imm.getItem_Reldate(),imm.getItem_Avldate(),imm.getItem_Reorderlevel(),imm.getItem_Ministock()});
		return status;
		
	}
	public int deleteitemmaster(String id) {
		
		String SQL="delete ITEMSMASTER where item_id='"+id+"'";
		  int status=template.update(SQL);
		return status;
		
	}
	
}
