package com.Restuarant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DeleteItem {
	String dataBaseUser = "Restaurant";
	String dataBasePass = "Root@root2018";
	String url ="jdbc:mysql://localhost:3306/Restaurant";
	
	public void deleteItem( String itemName) {
		
		String sql="Delete From Items Where item_name='"+itemName+"'";
		
		Connection con=null;
        Statement stmt=null;
      
		  try
	        {
	              Class.forName("com.mysql.jdbc.Driver");
	              con = DriverManager.getConnection(url,dataBaseUser,dataBasePass );
	              stmt=con.createStatement();
	              int i = stmt.executeUpdate(sql);
	              if(i>0) {
	            	 System.out.println("success"); 
	              }
	          
	              stmt.close();
	              con.close();
	              }
	        catch(Exception e)
	        {
	           	 System.out.println(e.getMessage()); 
  
           	 System.out.println("UnSuccess"); 

	        	}
		
	}
}
