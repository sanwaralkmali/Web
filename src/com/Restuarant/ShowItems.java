package com.Restuarant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ShowItems {
	String dataBaseUser = "Restaurant";
	String dataBasePass = "Root@root2018";
	String url ="jdbc:mysql://localhost:3306/Restaurant";
	public List<Items> items = new ArrayList<Items>();
	
	
	public void getElements() {
		
		String sql = "select * from Items";
		

		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection(url, dataBaseUser, dataBasePass);
		PreparedStatement statement = con.prepareStatement(sql); 
		
		ResultSet r = statement.executeQuery();
		
		Items item;
		
		while(r.next()){
			item= new Items(r.getString("ImagePath"),r.getString("item_name"),
					r.getString("details")	,r.getInt("price"));
			items.add(item);
			
		}
		
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}
	
	public ArrayList<Items>getItems() {
		return (ArrayList<Items>)items;
		
	}

}
