<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bankmangementapp.*,java.util.*"%>
    

   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
select,select.option {
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

<form  action="customer_signup.html" name="account_signup"  method="post">
    <div class="imgcontainer">

     	<h3 align="center">SIGNUP</h3>
     
    </div>

    <div class="container2">
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="Enter Name" name="name" required>
      
      <label for="username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="username" required>
      
        <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
      <label for="psw2"><b>Confirm Password</b></label>
      <input type="password" placeholder="Confirm Password" name="psw2" required>
      
      <label for="gender"><b>Gender</b></label>
      <input type="text" placeholder="Enter Gender" name="gender" required>
        
       <label for="dob"><b>Date Of Birth</b></label>
      <input type="text" placeholder="Enter Date of birth" name="dateofbirth" required>
       
      <label for="aadhar"><b>Aadhar Number</b></label>
      <input type="number" placeholder="Enter Aadhar Number" name="aadhar" required>
      
      <label for="pan"><b>Pan Card Number</b></label>
      <input type="number" placeholder="Enter Pan Card Number" name="pan" required>
      <br>
      
      <label for="address"><b>Address</b></label>
      <input type="text" placeholder="Enter Address" name="address" required>
      
      <label for="acctype"><b>Account Type</b></label>
      <select name="acctype">
      		<option>Select </option>
  			<option value="Current">Current </option>
 			<option value="Saving">Saving</option>
	</select>
   		<br>
   		<label for="nominee"><b>Nominee Name</b></label>
      <input type="text" placeholder="Enter Nominee Name" name="nominee" required>
      
       <label for="phone"><b>Phone Number</b></label>
      <input type="number" placeholder="Enter Phone Number" name="phone" required>
      
      <label for="email"><b>E-mail</b></label>
      <input type="text" placeholder="Enter E-mail" name="email" required>
        
      <button id="myBtn" type="submit">Verify Email</button>
    </div>


  </form>
  
  <div id="id01" class="modal1">
  <form class="modal-content animate" action="customer_signup.html" method="post" name="otp_form">
    <div class="imgcontainer">
    
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
     	<h3 align="center">Enter The OTP</h3>
     	
     
    </div>

    <div class="container2">
  
      <label for="otp"><b>Otp</b></label>
      <input type="text" placeholder="Enter Otp" name="otp">
           <button type="submit">SignUp</button>
     
    </div>

    
  </form>

 </div>
 
</body>
</html>