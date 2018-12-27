<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Restuarant </title>

<link rel='stylesheet prefetch'
 href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
    
<link rel='stylesheet prefetch' 
href='https://fonts.googleapis.com/icon?family=Material+Icons'>
    
<link rel="stylesheet" href="style.css">
	 
<link rel="stylesheet" 
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
 crossorigin="anonymous">
   
</head>
 
   
<body> 

    
<div class="main"> 

  <div class="homeDiv" id="homeDev" >

    <div class="container-fluid ResuarantLogo">
     
          <img class="logo" src="images/logo.png"  alt="Trulli" > 
    
    </div>

         
	<div class="images">
		  <img class="mySlides" src="images/4.jpg">
		  <img class="mySlides" src="images/1.jpg">
		  <img class="mySlides" src="images/2.jpg">
		  <img class="mySlides" src="images/3.jpg">
	</div>
                  
    <div class="properties">
	        
	      <img src="images/login.png" onclick="popShowLog()"> 
          <img src="images/menu.png"> 
          <img src="images/reserved.png">
          <img src="images/delivery.png">
          <img src="images/group.png" onclick="popShowReg()" \> 

     </div> 

      <footer class="footer">
          <p>Our Locaition : 
          
           <a href="https://www.google.com/maps/place/Cumhuriyet+Mahallesi,
           +Kavakl%C4%B1-Esenyurt+Yolu,+34100+Esenyurt%2F%C4%B0stanbul/@41.
           0178048,28.6442054,17z/data=!3m1!4b1!4m5!3m4!1s0x14b55f0dad5c71cf
           :0xa886aa7549cc55e7!8m2!3d41.0178008!4d28.6463941">
           
           Cumhuriyet Mahallesi, Kavaklı-Esenyurt Yolu, 34515 Beylikdüzü Osb/Esenyurt/İstanbul </a> .</p>
        
          <p>Contact Us: <a href= "tel:05315648738" > 05315648738 </a>. </p>
        
	  </footer>
  
	</div>
         
	<div id="LoginPopContainers" class="LoginPopContainer">
    
    
    	<span onclick="popClose()" class="close" title="Close PopUp">&times;</span>
    
   		 <div class="ROW header"> 
     		<h1> Login </h1>
    	 </div>
    	 
     <div class="ROW">
            
         <form action="CheckLogin" method="post">
            
	         <div class="ROW"> 
	             <input type="text" name="userName"
	                     placeholder="Enter Your name">
	             
	         </div>
	             
	         <div class="ROW"> 
	             <input type="password" name="userPass" 
	                    placeholder="Enter Your Password">
	             
	         </div>
             
	
	         <div class="Row">
	                <div class="col-6">
	                    <button type="submit" name="loginBu"> Login </button>
	                </div>
	             
	                <div class="col-6"> Remmber me ? 
	 	                    <input type="checkbox" value="">
	                </div>
	             
	          </div>
	         
	          <div class="close text-center p-t-136 nomarginclass">
					<a class="txt2" onclick="popShowReg()" style="color: blue; opacity: 1">
							Create your Account</a>	
			  </div>
	         
          </form>
        
        </div>
   
	</div>
    
       
	<div id="Register" class="Register">
    
      <span onclick="popClose()" class="close" title="Close PopUp">&times;</span>
    
      <div class="RegisterROW"> 
        <h1> Create Account </h1>
      </div>
     
     <div class="RegisterROW">      
         <form action="SignUp" method="post">
        
           <div class="RegisterROW"> 
         	  <div class="RegisterColumn"> 
            	 <input type="text" name="userFirstName" placeholder="First name" required>
             
              </div>
             
              <div class="RegisterColumn"> 
             	  <input type="text" name="userLastName" placeholder=" Last name" required>
             
              </div>
                 
            </div>
            
            
			<div class="RegisterROW"> 
			
              <div class="RegisterColumn"> 
                    <input type="text" name="email" placeholder=" Email" required>
              </div>
              
      		  <div class="RegisterColumn"> 
                    <input type="text" name="phone" placeholder=" phone number" required>
              </div>
  			 </div>
  			 
             <div class="RegisterROW">
             	  <div class="RegisterColumn"> 
                      <input type="password" name="userpassword" 
                      		 placeholder=" password" required>
           		  </div>
           		  
                   <div class="RegisterColumn"> 
                    <input type="password" name="userpassword2"
                    	   placeholder=" Confirm password"> 
                   </div>
			  </div>
			  
           <div class="RegisterROW"> 
                  <input class="addText" type="text" 
                  		 name="address" placeholder="Address" required>
           </div>
                 
              		<div class="col-6">
	                    <button type="submit" name="loginBu"> Create Account </button>
	                </div>
           
         </form>
       </div>
	</div>
  </div>
    <script type="application/javascript" src="main.js"></script>
</body>

<%
	String s =(String) session.getAttribute("NewAccount");

if(s == "try again"){
%>

<script type="text/javascript">
alert("<%=s%>");
<%    session.removeAttribute("NewAccount");
%>

</script>

<%	
}
 %>
</html>