<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home PAge</title>
    
 <link rel="stylesheet" href="hello.css">
  
</head>
 <%@ page import="com.Restuarant.ShowItems" %>
<%@ page import="com.Restuarant.Items" %>
<%@ page import="java.util.ArrayList" %>   
    
<body>
    
    <div class="NavBar">
            <nav class="MyNavBar">
                <div class="LOGO">
                    <button class="LOGOBUTTON"><img class="LOGOIMAGE" src="images/logo.png"></button>
                </div>
                <div class="userImage" >
                    <img class="userImageImage" src="images/login.png">
                </div>
                <div  class="SignIn">
                    <button class="SignInBUTTON">Sign In</button>
                </div>
            </nav>
        
        </div>
    
    <div id="container">
         <%  ShowItems sI = new ShowItems();
            sI.getElements();
            
            ArrayList<Items> items = sI.getItems();
            
            for(int i = 0; i < items.size();i++){
            
            
            %>

           <div class="foodBox1">
          
         <div class="itemContent">       
         <div class="foodImg">
          <img src="images/1.jpg" alt="cheese burger" >
               </div>

               <div class="foodDescription" >
                   <h2><%= items.get(i).ItemName %></h2>
                   <p><%= items.get(i).ItemDescription %> </p>
               </div>
               
               
               
               <div class="foodPriceAdd">
                   <div style="width:30%; float: left;" > <p>Price <%= items.get(i).ItemPrice %> Tr</p></div>
                   
                   <div style="width:60%; float: left; justify-content:center ; align-content: center; text-align: center;" >    
                       <button style="margin: auto" > Add Order </button> </div>
                   
                   
               </div>
               
              </div>
               
          </div>
        <% } %>
            
    
</body>
    
</html>