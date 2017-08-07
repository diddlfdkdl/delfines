<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="../css_js/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
	.w3-sidebar a {font-family: "Roboto", sans-serif}
	body, h1, h2, h3, h4, h5, h6, .w3-wide {font-family: "Montserrat", sans-serif;}
</style>

<%
	String value = (String)request.getAttribute("value");

	if (value == ""){
		
	}else if(value == "diffuser"){
		
	}else if(value == "candle"){
		
	}else if(value == "Accessory"){
		
	}
%>

<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3; max-width: 20%; text-align: center;" id="mySidebar">
	<div class="w3-container w3-display-container w3-padding-12">
		<a href="#">
			<img src="../images/logo.png" style="width: 100%;" /> <!-- 로고 -->
		</a>
	</div>
	<div class="w3-padding-32 w3-large w3-text-grey" style="font-weight: bold;">
		<a href="#" class="w3-bar-item w3-button">Home</a>
		<a href="#" class="w3-bar-item w3-button">About</a> 
		<a href="../member/loginForm.jsp" class="w3-bar-item w3-button">Log in</a>
		<a href="#" class="w3-bar-item w3-button">Join us</a>
		<a href="#" class="w3-bar-item w3-button">Find ID/PW</a>
		<a onclick="item()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn" style="text-align: center;">
			Item<i class="fa fa-caret-down"></i>
		</a>
		<div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
			<a href="a.jsp?value=Diffuser" class="w3-bar-item w3-button">
				Diffuser
			</a>
			<a href="a.jsp?value=Candle" class="w3-bar-item w3-button w3-light-grey">
				<i class="fa fa-caret-right w3-margin-right"></i>Candle
			</a>
			<a href="a.jsp?value=Accessory" class="w3-bar-item w3-button">Accessory</a>
		</div>
		
	</div>
	
	<a href="#footer" class="w3-bar-item w3-button w3-padding">FAQ</a>
	<a href="#footer" class="w3-bar-item w3-button w3-padding">Q&A</a>
	<a href="#footer" class="w3-bar-item w3-button w3-padding">공지사항</a>
	<!-- 
	<a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding"
		onclick="document.getElementById('newsletter').style.display='block'">
		Newsletter
	</a>
	 -->
</nav>

<script>
	// 메뉴에서 item 눌렀을 때
	function item() {
	    var x = document.getElementById("demoAcc");
	    if (x.className.indexOf("w3-show") == -1) {
	        x.className += " w3-show";
	    } else {
	        x.className = x.className.replace(" w3-show", "");
	    }
	}
	document.getElementById("myBtn").click();

	// 작은 화면일 때, 메뉴 버튼 누르면 사이드바 나타났다가 사라졌다가 하는 기능
	function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}
</script>

<!-- 작은 화면(ex: 핸드폰)의 톱 메뉴 -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
	<div class="w3-bar-item w3-padding-24 w3-wide">Delfines</div>
	<a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()">
		<i class="fa fa-bars"></i>
	</a>
</header>

<!-- 작은 화면(ex: 핸드폰)에서 세로 막대를 여는 경우의 오버레이 효과 -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()"
	style="cursor: pointer" title="close side menu" id="myOverlay">
</div>