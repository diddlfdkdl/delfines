<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="../css_js/style.css">

<nav class="navbar navbar-default navbar-fixed-top">
<div class="container-fluid">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="http://localhost:8080/Delfines/index/index.jsp">Delfines</a>
	</div>
	<div class="collapse navbar-collapse" id="myNavbar">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="http://localhost:8080/Delfines/index/index.jsp">HOME</a></li>
			
			<li><a href="../member/signInForm.jsp">Sign in</a></li>
			<li><a href="../member/signUpForm.jsp">Sign up</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Find<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">ID</a></li>
					<li><a href="#">Password</a></li>
				</ul>
			</li>
			
			<%	String isIndex = (String)request.getAttribute("isIndex");
				if(isIndex != null){%>
					<li><a href="#greeting">Greeting</a></li>
					<li><a href="#new">New</a></li>
					<li><a href="#FAQ">FAQ</a></li>
			<%	}%>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Item<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">Diffuser</a></li>
					<li><a href="#">Candle</a></li>
					<li><a href="#">Accessory</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>
</nav>