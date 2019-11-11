package com.project;

import java.util.List;

public interface ItemTypeDAO {

	public List<ItemTypeModel> getAllUsers();
	public int additemtype(ItemTypeModel itm);
	public int deleteitemtype(String id);
}
