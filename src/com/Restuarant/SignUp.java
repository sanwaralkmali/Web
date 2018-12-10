package com.Restuarant;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String dataBaseUser = "Restaurant";
	String dataBasePass = "Root@root2018";
	String url ="jdbc:mysql://localhost:3306/Restaurant";
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String firstName = request.getParameter("userFirstName");
		String lastNam = request.getParameter("userLastName");
		String email = request.getParameter("email");	
		String phoneNumber=request.getParameter("phone");
		String pass = request.getParameter("userpassword");
		String address = request.getParameter("address");

		String statment = "insert into Customers values('"+firstName+"','" + lastNam +"','"+email+"','"
				+ phoneNumber +"','"+address+"','"+pass+"')";
		System.out.println(statment);
		HttpSession session = request.getSession();
		pass.equals("sasa");
		Connection con=null;
        Statement stmt=null;
        try
        {
              Class.forName("com.mysql.jdbc.Driver");
              con = DriverManager.getConnection(url,dataBaseUser,dataBasePass );
              stmt=con.createStatement();
              int i = stmt.executeUpdate(statment);
              System.out.println(i);
              if(i>0) {
            	  session.setAttribute("NewAccount", "done!");
            	  RequestDispatcher rd = getServletContext().getRequestDispatcher("/hello.jsp");
  		   	    rd.forward(request, response);
      			
            	
              }
         
              stmt.close();
              con.close();
              }
        catch(Exception e)
        {
      	  session.setAttribute("NewAccount", "try again");

        	System.out.println("Did not Create Account");
    		response.sendRedirect("form.jsp");

        	}
        
	}

}
