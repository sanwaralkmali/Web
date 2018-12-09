package com.Restuarant;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(asyncSupported = true, urlPatterns = { "/CheckLogin" })
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dataBaseUser = "Restaurant";
	String dataBasePass = "Root@root2018";
	String url ="jdbc:mysql://localhost:3306/Restaurant";
	Connection con=null;
	PreparedStatement  statement=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String username = request.getParameter("userName");
		String pass = request.getParameter("userPass");
		
		String statment1 = "Select * from Admins Where email=? and password=?";
		String statment2 = "Select * from Customers Where (phoneNumber =? Or email=?) And password=?";
		int i = 0;
        
		
       try {
    	   
        	Class.forName("com.mysql.jdbc.Driver");
    		con =DriverManager.getConnection(url, dataBaseUser, dataBasePass);
    		statement = con.prepareStatement(statment1); 
    		statement.setString(1, username);
    		statement.setString(2, pass);
    		ResultSet r = statement.executeQuery();
    		System.out.println("Admine Before Admain page");
    		if(r.next()) {
        		System.out.println("Admine After Admain page");
        		RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminsPage.jsp");
		   	    rd.forward(request, response);
    			
    		}
    		
    		else
    		  i=1/0;
        	
        }catch(Exception e){
        
        	try {
    		System.out.println("USer Before hello page1");

        		Class.forName("com.mysql.jdbc.Driver");
        		System.out.println("USer Before hello page2");

        		con =DriverManager.getConnection(url, dataBaseUser, dataBasePass);
        		statement = con.prepareStatement(statment2); 
        		statement.setString(1, username);
        		statement.setString(2, username);
        		statement.setString(3, pass);
        		System.out.println("USer Before hello page");

        		ResultSet r = statement.executeQuery();
        		if(r.next()) {
            		System.out.println("USer after hello page");
        			RequestDispatcher rd = getServletContext().getRequestDispatcher("/hello.jsp");
    		   	    rd.forward(request, response);
        			
	
        		}
        		
        		else {
        			i=1/0;
        		}
        	}catch(Exception notExsist) {
        		System.out.println("not user");
        		RequestDispatcher rd = getServletContext().getRequestDispatcher("/form.jsp");
		   	    rd.forward(request, response);

        		
        	}
        	
        }
		
	}
}

