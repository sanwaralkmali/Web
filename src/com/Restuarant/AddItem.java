package com.Restuarant;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dataBaseUser = "Restaurant";
	String dataBasePass = "Root@root2018";
	String url ="jdbc:mysql://localhost:3306/Restaurant";
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String itemName = request.getParameter("ItemName");
		String menuId = request.getParameter("MenuId");
		String itemDescription = request.getParameter("ItemDescription");
		String itemPrice = request.getParameter("ItemPrice");
		String imagePath = request.getParameter("itemImage");
		
		String sql = "insert into Items(menu_name,item_name,details,ImagePath,price)"
				+ "Values('"+menuId+"','"+itemName+
				"','"+itemDescription+"','"+imagePath+"','"+itemPrice+"')";
		
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
		
		response.sendRedirect("AdminsPage.jsp");
	}
	}


