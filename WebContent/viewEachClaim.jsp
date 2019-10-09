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
			<form class="form-detail" enctype="multipart/form-data">
				<div class="form-left">
<h2>Details of a Claim <c:out value="${x.getPlan_code()}"></c:out></h2>
<div class="form-group">
<div class="form-row form-row-1">
 Member Id: <c:out value="${x.getMemid()}"> </c:out> 
 </div>
</div>
<br>
<div class="form-group">
<div class="form-row form-row-1">
Claim Status : <c:out  value="${x.getClaim_status()}"></c:out>
</div>
</div>
<br>
<div class="form-group">
<div class="form-row form-row-1">
 Work Accident: <c:out value="${x.getWork_acc()}"> </c:out>
 </div>
<div class="form-row form-row-2">
Auto Accident:  <c:out value="${x.getAuto_acc()}"> </c:out>
</div>
<br>
<div class="form-row form-row-3">
 <fmt:formatDate pattern="dd-MM-YYYY" value="${x.getDoa()}" var="dateinformat"/>
 Date of Accident: <c:out value="${dateinformat}"></c:out>
 </div>
</div>
<br>
 <div class="form-row form-row-1">			
Total Amount asked for claim : <c:out value="${x.getClaim_amount()}"></c:out>
</div>
<br>
<br>
 <div class="form-group">


 <div class="form-row form-row-1">
   Adhaar image 
   <img src="data:image/jpg;base64,${imm}" width="300" height="350"/>
 </div>
 
 <div class="form-row form-row-2">
 	Document image 
   <img src="data:image/jpg;base64,${imm1}" width="300" height="350"/>
 </div>
 </div>

<br><br>

<div class="form-left">
<div class="form-group">
<div class="form-row form-row-1">
						<a href="AcceptClaimRequest?claim_id=${x.getMemid()}"><input type="button" class="register2" value="Accept"/></a>	
						</div>
						<div class="form-row form-row-2">					
						<a href="RejectClaimRequest?claim_id=${x.getMemid()}"><input type="button"  class="register1" value="Reject"/></a>
					</div>
					</div>
					</div>
							</div>
			</form>
		</div>
	</div>
</body>
</div>
</div>




</html>