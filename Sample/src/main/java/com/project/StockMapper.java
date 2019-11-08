package com.project;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;



public class StockMapper implements RowMapper<LiveStockBean>
{
	public LiveStockBean mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		LiveStockBean lb=new LiveStockBean();
		
		lb.setItemid(rs.getInt("item_id"));
		lb.setItemBatchno(rs.getString("item_batchno"));
		lb.setItemstock(rs.getInt("item_stock")); 
		lb.setItemSalePrice(rs.getInt("item_saleprice"));
		lb.setItemCostPrice(rs.getInt("item_costprice"));
		lb.setItemMrp(rs.getInt("item_mrp"));
		return lb;
	} 
}
 