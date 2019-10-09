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
			<form class="form-detail" action="MemberRegistration" method="post" id="myform">
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
					<input type="text" name="member" id="memberid" 
							class="input-text" placeholder="Username" required>
					</div>
					<div class="form-group">
					<div class="form-row form-row-1">
					<input type="password" name="password" id="passwordid" placeholder="Password"required>
					</div>
					<div class="form-row form-row-2">
					<input type="password" name="password" id="passwordid" placeholder="Confirm Password"required>
					</div>
				</div>
					<div class="form-row">
					Date of birth:
						<input type="date" name="dob"required/>
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
							<select name="plan_codes" required>
							<option value="null">Plan Codes</option>
							    <option value="Accidental Cover">Accidental Cover</option>
							    <option value="Health Cover">Health Cover</option>
							    <option value="Burglary Cover">Burglary Cover</option>
							    <option value="Other Covers">Other Covers</option>
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
						
					</div>
					
					<div class="form-group">
					<div class="form-row form-row-1">
						<p>Coverage Start Date:</p>
						<input type="date" name="cov_start"required/><br>
						</div>
						</div>
						<div class="form-group">
						<div class="form-row form-row-1">
						Coverage End Date:
						<input type="date" name="cov_end"required/><br>
						</div>
					</div>
				</div>
				<div class="form-right">
					<h2>Contact Details</h2>
					<div class="form-row">
						<input type="text" name="address" class="street" id="street" placeholder="Address" >
					</div>
					<div class="form-row">
						<input type="text" name="additional" class="additional" id="additional" placeholder="Additional Information" >
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="zip_code" class="zip" id="zip" placeholder="Zip Code" required>
						</div>
						<div class="form-row form-row-2">
							<select name="state">
							    <option value="Maha">Maharashtra</option>
							    <option value="UP">Uttar Pradesh</option>
							    <option value="Andra">AndraPradesh</option>
							    <option value="Orissa">Orissa</option>
							    <option value="MP">Madhya Pradesh</option>
							</select>
							<span class="select-btn">
							  	<i class="zmdi zmdi-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="form-row">
						<select name="city">
						    <option value="country">Pune</option>
						    <option value="Vietnam">Nashik</option>
						    <option value="Malaysia">Mumbai</option>
						    <option value="India">Nagpur</option>
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="phonenumber" class="phone" id="phone" placeholder="Phone Number" required>
						</div>
					</div>
					<div class="form-row">
						<input type="text" name="email" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}" placeholder="Your Email">
					</div>
					<div class="form-checkbox">
						<label class="container"><p>I do accept the Terms and Conditions of your site.</p>
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