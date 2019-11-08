package com.project;

import java.util.List;



public interface Dao {
	
	public int addbrand(BrandModel u);
	
	public List<BrandModel> allusers();

	public List<OutletModel> alloutlets();
	
	public List<ItemspecModel> allitemspec();
	
	public int deletebrand(String id);


}
