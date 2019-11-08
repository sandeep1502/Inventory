package com.project;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

public class DaoImpl implements Dao{
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate t) {
		template=t;
	}


public List<BrandModel> allusers()
{
	String qry="select * from Brand order by brnd_id";
	List<BrandModel> li=template.query(qry,new BrandMapper());
	return li;
}

public  List<OutletModel> alloutlets()
{
	String qry="select * from Outlets";
	List<OutletModel> li=template.query(qry,new OutletMapper());
	return li;
}

public List<ItemspecModel> allitemspec()
{
   String qry="select * from items_Specifications";
   List<ItemspecModel> li=template.query(qry, new ItemspecMapper());
   return li;

}


public int addbrand(BrandModel u) {
	String qry="insert into Brand values(?,?,?,?)";
	int status=template.update(qry,new Object[] {u.getBrnd_id(),u.getBrnd_title(),u.getBrnd_catg(),u.getBrnd_desc()});
	return status;
}

public int deletebrand(String id) {
	String qry="delete Brand where brnd_id='"+id+"'";
	int s=template.update(qry);
	return s;
}


}



