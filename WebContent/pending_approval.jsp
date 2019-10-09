<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>pending_approval</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/style.css"/>
    <link rel="stylesheet" href="css/admint.css"/>
    <link rel="stylesheet" href="css/homep.css">
</head>
<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
    <a href="adminHome.jsp" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="adminHome.jsp" class="w3-bar-item w3-button">Home</a>
     

<<<<<<< HEAD
      <a href="admin_logout.jsp" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
=======
      <a href="homepage.jsp" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
    </div>
<body class="form-v10">
	
<div class="page-content">
	
		<div class="form-v10-content">
			<form class="form-detail" action="AdminRegistration" method="post" id="myform">
				<div class="form-left">
					<h2>Pending Requests</h2>
					
					<div class="form-row">
					<table id="t1">
					
<tr>
  <th width="10%">Name</th>
  <th width="10%">Age</th>
  <th width="10%">Gender</th>
  <th width="10%">Contact Number</th>
  <th width="10%">Member Id</th>
  <th width="10%">Email</th>
  <th width="10%">Accept Approval</th>
  <th width="10%">Reject Approval</th>
  
</tr>
<c:forEach items="${memberListobj}" var="list" >
<tr>
  <td id="t11"><center>${list.fname}</center></td>
  <td id="t12"><center>${list.age}</center></td>
  <td id="t12"><center>${list.gender}</center></td>
  <td id="t12"><center>${list.contactnumber}</center></td>
  <td id="t12"><center>${list.memberid}</center></td>
  <td id="t12"><center>${list.email}</center></td>
  <td id="t17"><a href="AcceptRegistrationRequest?id=${list.memberid}"><center>Accept</center></a></td>
    <td id="t17"><a href="RejectRegistrationRequest?id=${list.memberid}"><center>Reject</center></a></td>
  
</tr>
</c:forEach>
</table>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					<div class="form-row">
					<br>
					</div>
					
					
					<div class="form-row form-row-2">
					
					</div>
				</div>
				</form>
				</div>
				</div>
				
</body>
</html>