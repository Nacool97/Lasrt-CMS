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
			<form class="form-detail" action="ShowClaim" method="post" id="myform" enctype="multipart/form-data">
				<div class="form-left">
				<h3>${errormsg1}</h3>
					<h2>Health Insurance Raise Claim Form</h2>
					
					<div class="form-row">
			<hr>
<b> Member's Information </b>
<br>
<br>

<table>
<tr> <td> First Name <input type="text" name="fname" value="<c:out value='${x.getFname()}'></c:out>" readonly/> </td> 
<td> Last Name <input type="text" name="lname" value="<c:out value='${x.getLname()}'></c:out>"readonly/></td>
</tr>
<tr> <td></td></tr>
<tr> <td></td></tr>
<tr> <td></td></tr>
<tr> <td> MemberId <input type="text" name="memberid" value="<c:out value='${x.getMemberid()}'> </c:out>" readonly/> </td></tr>
<tr> <td></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr>
<td>
Gender 
 <select name="gender">
<option  value="Male" ${x.getGender().equalsIgnoreCase("male")}?selected:' '>Male</option>
<option value="Female" ${x.getGender().equalsIgnoreCase("female")}?selected:' '>Female</option>
</select>
</td>
</tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> Age <input type="text" name="age" value="<c:out value='${x.getAge()}' ></c:out>" readonly/></td> <tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> DOB <input type ="date" value="${x.getDob()}" name="dob" required></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr><td>Contact Number <input type="text" name="contact_no" value="<c:out value='${x.getContactnumber()}'></c:out>" readonly/></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
<tr> <td> Upload Adhaar Card <input type="file" name="file1" required></td></tr>
<tr> <td></td></tr><tr> <td></td></tr><tr> <td></td></tr>
</table>
<hr>
<b>Accident Details</b>
<br>
<br>
Work Accident 
<div class="form-checkbox1"> 
<label class="container"><p>Yes</p>
<input type="radio" name="work_acc" value="Yes"> 
<span class="checkmark"></span>
</label>
</div>
<div class="form-checkbox1">
<label class="container"><p>No</p>
<input type="radio" name="work_acc" value="No">
<span class="checkmark"></span>
</label>
</div>
Auto Accident 
<div class="form-checkbox1"> 
<label class="container"><p>Yes</p>
<input type="radio" name="auto_acc" value="Yes"> 
<span class="checkmark"></span>
</label>
</div>
<div class="form-checkbox1">
<label class="container"><p>No</p>
<input type="radio" name="auto_acc" value="No">
<span class="checkmark"></span>
</label>
</div>

 <td> Date Of Accident <input type="date" name="doA" required/> </td>
</tr>
</table>
<hr>
<b>Plan_Code_ID</b>  &nbsp &nbsp<select name="plan_code">
<option  value="Accidential Cover" ${x.getPlan_code().equalsIgnoreCase("Accidental Cover")}? selected:' '>Accidental Cover</option>
<option value="Health Cover" ${x.getPlan_code().equalsIgnoreCase("Health Cover")}?selected:' '>Health Cover</option>
<option value="Burglary Cover" ${x.getPlan_code().equalsIgnoreCase("Burglary Cover")}?selected:' '>Burglary Cover</option>
<option value="Other Cover" ${x.getPlan_code().equalsIgnoreCase("Other Cover")}?selected:' '>Other Cover</option>
</select>
<br><br> <br>
<b> Amount to be Claimed </b><input type="number" name="amount" required>

<b> Mandatory Documents </b>
<br><br> Hospital Discharged Bills <input type="file" name="file2" required>
<br>
<br>
Remarks
<br> <textarea name="text1" cols="40" rows="5"></textarea>
<br>
<input class="register2" type="submit" value="Submit" name="Submit"></input>
</form>
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
				</div>
				</div>
			
</body>
</html>