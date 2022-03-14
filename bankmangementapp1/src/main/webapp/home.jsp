<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <% String pending = (String)request.getAttribute("pending");
     String SignupMessage = (String)request.getAttribute("SignupMessage");
  %>  
  <%if(pending==null){
	  pending = "";
  } 
  if(SignupMessage==null)
  { SignupMessage = "";}
  %>
<!doctype html>
<html lang="en">
  <head> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>BANK</title>
  
   <style>
   
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password], input[type=number] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #6BD8E3;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 5px;
}

.container2 {
  padding: 90px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background)   LOGIN*/
.modal1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: -500px;
 
}

/* SIGNUP */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
  }



/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 60%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

li {
cursor:pointer;
}




/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}


</style>
    
  </head>
  <body>
 
   
       
        
<div class="shadow p-3 mb-5 bg-white rounded">
    <nav  class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="#">
             <img  alt="BANK MANAGEMENT SYSTEM" href ="home.html">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item"><a class="nav-link active" aria-current="page" href="">Home</a></li>
              <li class="nav-item"><a href="signup.jsp" class="nav-link active" aria-current="page">Sign Up</a></li>
              <li class="nav-item" onclick="document.getElementById('id01').style.display='block'"> <a class="nav-link active" aria-current="page">Login</a></li>
             
            </ul>   
          </div>
        </div>
    </nav>
    </div>




 <h5><%=SignupMessage%></h5>

<div id="id01" class="modal1">
  <form class="modal-content animate" name="login_form" action="customer-login_data.html" method="post" >
    <div class="imgcontainer">
    
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     	<h3 align="center">LOGIN</h3>
     	 <p><%=pending%></p>
     
    </div>

    <div class="container2">
    <div>
    <input type="radio" onclick="check2()" id="contactChoice1"
     name="contact" value="email" checked="checked">
    <label for="contactChoice1">Customer</label>

    <input type="radio" onclick="check()" id="contactChoice2"
     name="contact" value="phone">
    <label for="contactChoice2">Employee</label></div>
  
      <label for="customerId"><b id="customerIdName">Customer Id</b></label>
      <input type="text" placeholder="Enter customerId" id="customerId" name="customerId">

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password">
        
      <button type="submit">Login</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<img src="./images/2.jpg" width=600px height=480px>

<script>
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var s = document.getElementById('id02');


window.onclick = function(event) {
 if (event.target == s) {
     s.style.display = "none";
 }
}
function check() {
	if(document.getElementById("contactChoice2").checked = true){
		document.getElementById("customerIdName").innerHTML = "Employee Id"
	    document.getElementById("customerId").placeholder = "Enter EmployeeId";
		document.login_form.action = "employee-login.html";
		document.login_form.customerId.value = "";
		document.login_form.password.value = "";
	}
}
function check2() {
	if(document.getElementById("contactChoice1").checked = true){
		document.getElementById("customerIdName").innerHTML = "Customer Id"
		    document.getElementById("customerId").placeholder = "Enter CustomerId";
			document.login_form.action = "customer-login_data.html";
			document.login_form.customerId.value = "";
			document.login_form.password.value = "";
		}
}

</script>  
</body>
</html>