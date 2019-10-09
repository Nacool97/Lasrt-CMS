<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD

=======
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
</script>
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/homep.css">
<title>homepage</title>
<body onload="noBack();"onpageshow="if (event.persisted) noBack();" onunload="">

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
<<<<<<< HEAD
			<a href="homepage.jsp" class="w3-bar-item w3-button w3-wide">CLAIMS
=======
			<a href="#home" class="w3-bar-item w3-button w3-wide">CLAIMS
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
				MANAGEMENT SYSTEM</a>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">


				<div class="dropdown">
					<button class="dropbtn">LOGIN</button>
					<div class="dropdown-content">
						<a href="adminlogin.jsp">ADMIN LOGIN</a> <a href="memberlogin.jsp">MEMBER
<<<<<<< HEAD
							LOGIN</a>
=======
							LOGIN</a> <a href="agentlogin.jsp">AGENT LOGIN</a>
>>>>>>> 08f1a67f31e821d9efe50d0c56a863e5169dee7a
					</div>
				</div>

				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			</div>
			<!-- Hide right-floated links on small screens and replace them with a menu icon -->

			<a href="javascript:void(0)"
				class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium"
				onclick="w3_open()"> <i class="fa fa-bars"></i>
			</a>
		</div>
	</div>

	<!-- Sidebar on small screens when clicking the menu icon -->
	<nav
		class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large"
		style="display:none" id="mySidebar"> <a
		href="javascript:void(0)" onclick="w3_close()"
		class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a> <a
		href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
	<a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>
	<div class="dropdown">
		<button class="dropbtn">Dropdown</button>
		<div class="dropdown-content">
			<a href="#">Link 1</a> <a href="#">Link 2</a> <a href="#">Link 3</a>
		</div>
	</div>
	<a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
	</nav>
	<center>
		<h1>You have Logged Out Successfully</h1>
	</center>
</body>
</html>