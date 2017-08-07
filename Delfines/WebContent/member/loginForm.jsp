<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>DELFINES</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
		.w3-button-mj:hover{background-color: red;}
	</style>
	
	<script>
		function loginCheck(loginForm){
			var result = false;
			
			var member_id = loginForm.member_id.value;
			var member_pwd = loginForm.member_pwd.value;
			
			$.ajax({
				type:"post", // 전송방식 (get, post)
				url:"./loginPro.jsp", // 전송 할 페이지
				dataType:"text", // 보낼 데이터의 타입 -> text, html, json
				data:{
					member_id : member_id // 변수명 : 값
					, member_pwd : member_pwd
				},
				success:function(responseData,status,xhr){
					if(responseData == -1){
						alert("존재하지 않는 아이디 입니다.");
					}else{
						alert("존재하는 아이디 입니다.");
					}
				},
				error:function(error){} // 실패했을 경우
			});
			
			return result;
		}
	</script>
</head>
<body class="w3-content" style="max-width: 100%">
	<%@ include file="../include/header.jsp" %>
	
	<div class="w3-main" style=" margin-left: 20%; min-width: 80%; max-width: 100%;">
		<!-- 작은 화면(ex: 핸드폰) 에서 콘텐츠 다운 -->
		<div class="w3-hide-large" style="margin-top: 83px"></div>

		<!-- 상단 헤더 -->
		<header class="w3-container w3-xlarge">
			<p class="w3-left">Log in</p>
		</header>
		
		<div class="w3-row-padding" style="min-width: 300px; max-width: 500px; margin: 0 auto; padding-top: 100px; min-height: 525px;">
			<p style="font-size: 20px;">
				<strong>Delfines</strong>에 오신 것을 환영합니다!!<br />
				아이디 / 비밀번호를 입력하여 로그인을 해주세요.
			</p>
			<form name="loginForm" method="post" action="../index/index.jsp" onsubmit="return loginCheck(loginForm)">
				<p>
					<input class="w3-input w3-border" type="text" placeholder="아이디를 입력하세요." name="member_id" required>
				</p>
				<p>
					<input class="w3-input w3-border" type="text" placeholder="비밀번호를 입력하세요." name="member_pwd" required>
				</p>
				<button type="submit" class="w3-button w3-block w3-blue">로그인</button>
			</form>
		</div>
		
		<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>