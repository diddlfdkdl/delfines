<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>DELFINES</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class="w3-content" style="max-width: 1200px">
	<%@ include file="../include/header.jsp" %>
	
	<div class="w3-main" style="margin-left: 250px;">
		<!-- 작은 화면(ex: 핸드폰) 에서 콘텐츠 다운 -->
		<div class="w3-hide-large" style="margin-top: 83px"></div>

		<!-- 상단 헤더 -->
		<header class="w3-container w3-xlarge">
			<p class="w3-left">Diffuser</p>
			<p class="w3-right">
				<i class="fa fa-shopping-cart w3-margin-right"></i> <!-- 장바구니 아이콘 --> 
				<i class="fa fa-search"></i> <!-- 검색 아이콘 -->
			</p>
		</header>
		
		<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>