<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insurance Management</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body class="form-v10">

	<div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="AdminRegistration" method="post" id="myform">
				<div class="form-left">
					<h2>General Information</h2>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="fname" id="first_name" class="input-text" placeholder="First Name" required>
						</div>
						<div class="form-row form-row-2">
							<input type="text" name="lname" id="last_name" class="input-text" placeholder="Last Name" required>
						</div>
					</div>
					<div class="form-row">
					<input type="text" name="adminid" id="adminid" 
							class="input-text" placeholder="Username" required>
					</div>
					
					<div class="form-row">
						<select name="gender" required>
						  
						    <option value="Male" selected>Male</option>
						    <option value="Female">Female</option>
						    <option value="Other">Other</option>
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-row">
						<input type="number" name="age" class="input-text" min="16" max="100" id="ageid" placeholder="Age" required>
					</div>
					<div class="form-group">
					<div class="form-row form-row-1">
					<input type="password" name="password" id="passwordid" placeholder="Password"required>
					</div>
					<div class="form-row form-row-2">
					<input type="password" name="password2" id="passwordid" placeholder="Confirm Password"required>
					</div>
				</div>
				</div>
				<div class="form-right">
					<h2>Contact Details</h2>
				
					
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="phone" class="phone" id="phone" placeholder="Phone Number" required>
						</div>
					</div>
					<div class="form-row">
						<input type="text" name="email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
					</div>
					<div class="form-checkbox">
						<label class="container"><p>I do accept the <a href="#" class="text">Terms and Conditions</a> of your site.</p>
						  	<input type="checkbox" name="checkbox">
						  	<span class="checkmark"></span>
						</label>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Register">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>