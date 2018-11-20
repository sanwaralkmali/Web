

var modal = document.getElementById('homeDev');

window.onclick = function(event) {
    
    if (event.target == modal) {
       document.getElementById('LoginPopContainers').style.display = "none";
        document.getElementById('Register').style.display = "none";
      
    
    }
}

var x= "salah";

function popClose(){
 document.getElementById('homeDev').style.opacity='1';
     document.getElementById('homeDev').style.pointerEvents='all';
 document.getElementById('LoginPopContainers').style.display = 
     'none';
    
    document.getElementById('Register').style.display ='none';
}

function popShowLog(){
 document.getElementById('LoginPopContainers').style.display= 'block';
    document.getElementById('homeDev').style.opacity='0.4';
//    document.getElementById('homeDev').style.pointerEvents='none';
}

function popShowReg(){
 document.getElementById('Register').style.display= 'block';
    document.getElementById('homeDev').style.opacity='0.4';
     document.getElementById('homeDev').style.pointerEvents='none';
}

var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 5000); // Change image every 10 seconds
}