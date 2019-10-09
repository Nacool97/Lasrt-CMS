<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/homep.css">
<title>homepage</title>
<body>

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="#home" class="w3-bar-item w3-button w3-wide">CLAIMS
				MANAGEMENT SYSTEM</a>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<a href="#about" class="w3-bar-item w3-button">ABOUT</a>

				<div class="dropdown">
					<button class="dropbtn">LOGIN</button>
					<div class="dropdown-content">
						<a href="adminlogin.jsp">ADMIN LOGIN</a> <a href="memberlogin.jsp">MEMBER
							LOGIN</a> 
					</div>
				</div>
				<a href="#contact" class="w3-bar-item w3-button"><i
					class="fa fa-envelope"></i>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspCONTACT</a>
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

	<!-- Header with full-height image -->
	<header class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
	<div class="w3-display-left w3-text-white" style="padding: 48px">
		<span class="w3-jumbo w3-hide-small"><span
			style="color: #0B5345;">Start something that matters </span></span><br>
		<span class="w3-xxlarge w3-hide-large w3-hide-medium">Start
			something that </span><br> <span class="w3-large"><span
			style="color: #0B5345;">Life Insurance Is A Combination Of
				Caring,Commitment And Common Sense</span></span>
		<p>
			<a href="#about"
				class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">Learn
				more and start today</a>
		</p>
	</div>
	<div class="w3-display-bottomleft w3-text-grey w3-large"
		style="padding: 24px 48px">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div>
	</header>

	<!-- About Section -->
	<div class="w3-container" style="padding: 128px 16px" id="about">
		<h3 class="w3-center">ABOUT THE COMPANY</h3>
		<p class="w3-center w3-large">Key features of our company</p>
		<div class="w3-row-padding w3-center" style="margin-top: 64px">
			<div class="w3-quarter">
				<i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
				<p class="w3-large">Passion</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore.</p>
			</div>
			<div class="w3-quarter">
				<i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
				<p class="w3-large">Design</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
					do eiusmod tempor incididunt ut labore et dolore.</p>
			</div>
		</div>
	</div>

	<!-- Promo Section - "We know design" -->


	<!-- Promo Section "Statistics" -->

	<!-- Work Section -->




	<!-- Contact Section -->
	<div class="w3-container w3-light-grey" style="padding: 128px 16px"
		id="contact">
		<h3 class="w3-center">CONTACT</h3>
		<p class="w3-center w3-large">Lets get in touch. Send us a
			message:</p>
		<div style="margin-top: 48px">
			<p>
				<i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i>
				Chicago, US
			</p>
			<p>
				<i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone:
				+00 151515
			</p>
			<p>
				<i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i>
				Email: mail@mail.com
			</p>
			<br>
			<form action="/action_page.php" target="_blank">
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Name"
						required name="Name">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Email"
						required name="Email">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Subject"
						required name="Subject">
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="Message"
						required name="Message">
				</p>
				<p>
					<button class="w3-button w3-black" type="submit">
						<i class="fa fa-paper-plane"></i> SEND MESSAGE
					</button>
				</p>
				</form>
				</div>
				</div>
				</body>
				</html>