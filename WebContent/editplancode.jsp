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
       <a href="adminHome.jsp" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="adminHome.jsp" class="w3-bar-item w3-button">Home</a>
     

      <a href="admin_logout.jsp" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
    </div>
    </div>
=======
    <a href="memberHome.jsp" class="w3-bar-item w3-button w3-wide">CLAIMS MANAGEMENT SYSTEM</a>
        <div class="w3-right w3-hide-small">
      <a href="memberHome.jsp" class="w3-bar-item w3-button">Home</a>
     

      <a href="homepage.jsp" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i>Logout</a>
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
    </div>
<body class="form-v10">
<div class="page-content">
	
		<div class="form-v10-content">
			<form class="form-detail" action="SubmitPlanCode" method="post" id="myform" >
				<div class="form-left">
				<h3>${errormsg1}</h3>
					<h2>Edit plan code</h2>
					
					<div class="form-row">

<table>
<tr> <td> PLAN CODE
 <input type="text" name="pcode" value="<c:out value='${plan_id}'></c:out>"/> </td> 
</tr>
</table>
<br>
<table>
<tr> <td> DESCRIPTION  </td>
 <td> COVERAGE1   </td>
 <td> COVERAGE2   </td>
<td> COVERAGE3   </td>
<td> COVERAGE4   </td>
<td> COVERAGE5   </td>
</tr>
<tr>
<c:forEach items='${planList}' var="list">
<td>
<input type="text" name="pdode" value="<c:out value='${list.getPlan_desc()}'></c:out>"/> </td> 


<td>
<input type="text"  name="pco1" value="<c:out value='${list.getPlan_cov1()}'></c:out>">
</td>
<td>
<input type="text" name="pco2" value="<c:out value='${list.getPlan_cov2()}'></c:out>">
</td>
<td>
<input type="text" name="pco3" value="<c:out value='${list.getPlan_cov3()}'></c:out>">
</td>
<td>
<input type="text" name="pco4" value="<c:out value='${list.getPlan_cov4()}'></c:out>">
</td>
<td>
<input type="text" name="pco5" value="<c:out value='${list.getPlan_cov5()}'></c:out>">
</td>
</c:forEach>

</tr></table>

<input class="register2" type="submit" value="Submit" name="Submit"></input>

</div></div></form></div></div></body></div></div></html>