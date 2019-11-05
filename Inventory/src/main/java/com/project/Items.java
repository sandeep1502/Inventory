package com.project;

public class Items {
	public List<ItemModel> getAllItems() {
	      String SQL = "select * from users";
	      List <ItemModel> Items = template.query(SQL,new ResultSetExtractor<List<ItemModel>>(){
	         
	         public List<ItemModel> extractData(ResultSet rs) throws SQLException, DataAccessException {
	            
	            List<ItemModel> ulist = new ArrayList<UserModel>();  
	            while(rs.next()){  
	               UserModel usr = new UserModel();
	               usr.setUsername(rs.getString(1));
	               usr.setPassword(rs.getString(2));
	               usr.setFirstname(rs.getString(3));
	               usr.setLastname(rs.getString(4));
	               usr.setEmail(rs.getString(5));
	               usr.setQual(rs.getString("qual"));
	    	       usr.setMobile(rs.getInt(7));
	               ulist.add(usr);  
	            }  
	            return ulist;  
	         }    	  
	      });
	      return users;
	   }
}
