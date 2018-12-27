<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admin Page</title>
<link rel="stylesheet" type="text/css" href="Admin.css">
</head>
<%@ page import="com.Restuarant.ShowItems" %>
<%@ page import="com.Restuarant.Items" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Restuarant.DeleteItem" %>


<body>
<div class="HomePage"> 
    <div class="HomeContent">
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
        
        <div class="PageContent">
            
        <div class="leftDiv"> 
            <div class="AddNewFood">
                <form class="AddForm" action="AddItem" method="post">
                    <div class="AddImageDiv">
                        <img class="AddImageDivImg">
                        <input class="AddImageDivinput" type="file" name="itemImage">
                    </div>
                    
                    <div class="Additem">
                        <input type="text" name="ItemName" placeholder="Item Name" required>
                        
                        <input type="text" name="MenuId" placeholder="Menu id" required>
                        
                        <textarea name="ItemDescription" placeholder="Detailes" required></textarea>
                        <div style="width: 100%; float: left;">
                            <input style="float: left" type="text" name="ItemPrice" placeholder="Price" required>
                            <div style="text-align: center; margin-top: 15px;">
                            <span style="float:left">$</span>
                        </div>
                        </div>
                        
                    </div>
                        
                    
                    <div class="submitButton">
                    <button type="submit" name="AddItemBut">Add Item</button>

                    
                    </div>
                
                
                
                </form>
            </div>
        </div>
            
            
        <div class="rigtDiv"> 
            <div class="foodsContainer">
            <%  ShowItems sI = new ShowItems();
            sI.getElements();
            
            ArrayList<Items> items = sI.getItems();
            DeleteItem del = new DeleteItem();
            
            for(int i = 0; i < items.size();i++){
            
            
            %>
                <div class="itemBox">
                    <div class="foodBoxsContent">
                        <div class="FoodImage">
                        
                            <img src="images/breakfast.jpg" class="foodImageSrc">
                        
                        </div>
                        
                        <div class="FoodDescroption">
                            <h3><%= items.get(i).ItemName %></h3>
                            <p><%= items.get(i).ItemDescription %></p>
                            <p>Price : <%= items.get(i).ItemPrice %></p>
                        </div>
                    </div>  
                    
                                      
                    <div class="foodDeletion">
                        <button onclick="DeleteItem(<%=i%>)" > Delete </button>
                        <button> Edit </button>
                        
                       
                    </div>
                    
                </div>
                   <script type="text/javascript">
                          
  							function DeleteItem<%=i%>(){


  								
  								
  									<%		
  									System.out.println("Salah");  										
  					  								%>
  								
							
  							
	  
  							}
  
  
  								</script>
                <%} %>
            </div>
           </div>
         </div>
      </div>
    </div>
  </body>
  

  
</html>














