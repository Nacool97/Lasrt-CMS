<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


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
			<form class="form-detail" action="AdminLogin" method="post" id="myform">
				<div class="form-right">
					<h2>Login</h2>			
					<div class="form-group">
					<div class="form-row form-row-1">
					<input type="text" name="adminid" id="memberid" 
							class="input-text" placeholder="Username" size="20" required>
						</div>
					</div>
					<div class="form-group">
					<div class="form-row form-row-1">
					<input type="password" name="password" id="passwordid" placeholder="Password"required>
					</div>
					</div>				
					<div class="form-checkbox">
						<label class="container"><a href="adminsignup.jsp" class="text">New User?SignUp</a>
						  <p style="color:#eda067; font-family:Montserrat;">**${msg}</p>
						</label>
					</div>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="Login"/>
					</div>
					
				</div>
			</form>
		</div>
		</div>
	
</body>
</html>