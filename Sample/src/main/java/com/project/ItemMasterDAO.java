package com.project;
import java.util.List;
public interface ItemMasterDAO
{
	public List<ItemMasterModel> getAllUsers();
	
	public int additemmaster(ItemMasterModel imm);
	public int deleteitemmaster(String id);
	
}
