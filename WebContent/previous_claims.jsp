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
<<<<<<< HEAD
       <a href="MemberHome?member_id=${x1}" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="MemberHome?member_id=${x1}" class="w3-bar-item w3-button">Home</a>
     

     <a href="MemberLogout?memId=${x1}" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
=======
    <a href="memberHome.jsp" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="memberHome.jsp" class="w3-bar-item w3-button">Home</a>
     

      <a href="homepage.jsp" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
    </div>
    </div>
    </div>
<body class="form-v10">
	
<div class="page-content">
	
		<div class="form-v10-content">
			<form class="form-detail" action="AdminRegistration" method="post" id="myform">
				<div class="form-left">
				
<h2> Processed  Claims </h2>
<div class="form-row">
<h3><b>List of Claim</b></h3>
<table id="t1">
<tr>

<th>Member Id</th>
 <th></th>
  <th></th>
  <th></th>
  <th></th>
  <th>Status</th>
  <th></th>
  <th></th>
  <th></th>
  <th></th>
  <th>Plan Code</th>  
</tr>
<c:forEach items="${prevclaims}" var="list">
<tr>
<td>${list.getMemid()}</td>
<th></th>
  <th></th>
  <th></th>
  <th></th>
 
 <td>${list.getApprove_status()} </td>
 <th></th>
  <th></th>
  <th></th>
  <th></th>
  <td>${list.getPlan_code()} </td>
 <th></th>
  <th></th>
  <th></th>
  <th></th>
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