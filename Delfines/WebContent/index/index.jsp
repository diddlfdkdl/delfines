<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<title>DELFINES</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class="w3-content" style="max-width: 100%">
	
	<%@ include file="../include/header.jsp" %>

	<div class="w3-main" style=" margin-left: 20%; min-width: 80%; max-width: 100%;">

		<!-- 작은 화면(ex: 핸드폰) 에서 콘텐츠 다운 -->
		<div class="w3-hide-large" style="margin-top: 83px"></div>

		<!-- 상단 헤더 -->
		<header class="w3-container w3-xlarge">
			<p class="w3-left">Diffuser</p>
			<p class="w3-right">
				<a href="#" style="text-decoration: none;">
					<i class="fa fa-shopping-cart w3-margin-right"></i> <!-- 장바구니 아이콘 -->
				</a>
				<a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding"
					onclick="document.getElementById('newsletter').style.display='block'">
				<i class="fa fa-search"></i> <!-- 검색 아이콘 -->
				</a>
			</p>
		</header>
		<div id="newsletter" class="w3-modal">
			<div class="w3-modal-content w3-animate-zoom" style="padding: 32px">
				<div class="w3-container w3-white w3-center">
					<i onclick="document.getElementById('newsletter').style.display='none'"
						class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
					<h2 class="w3-wide">원하시는 상품을 검색해주세요.</h2>
					<p>
						<input class="w3-input w3-border" type="text" placeholder="검색어">
					</p>
					<button type="button"
						class="w3-button w3-padding-large w3-red w3-margin-bottom w3-button-red:hover"
						onclick="document.getElementById('newsletter').style.display='none'">검색</button>
				</div>
			</div>
		</div>

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- 슬라이드 사진 갯수랑 맞춰야 함. -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
		      	<li data-target="#myCarousel" data-slide-to="3"></li>
		      	<li data-target="#myCarousel" data-slide-to="4"></li>
			</ol>

    		<div class="carousel-inner" role="listbox">
    			<!-- 슬라이드 사진 -->
      			<div class="item active">
        			<img src="../images/slide01.png" alt="Chicago" width="1200" height="100">
        			<div class="carousel-caption">
          				<h3>Chicago1</h3>
          				<p>Thank you, Chicago - A night we won't forget.</p>
        			</div>      
      			</div>
    
		      	<div class="item">
		        	<img src="../images/slide02.png" alt="Los Angeles" width="1200" height="100">
		        	<div class="carousel-caption">
		          		<h3>LA</h3>
		          		<p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
		        	</div>      
		      	</div>
      
		      	<div class="item">
		        	<img src="../images/slide03.png" alt="Los Angeles" width="1200" height="100">
		        	<div class="carousel-caption">
		         	 	<h3>LA</h3>
		         	 	<p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
		        	</div>      
		      	</div>
      
		      	<div class="item">
		        	<img src="../images/slide04.png" alt="Los Angeles" width="1200" height="100">
		        	<div class="carousel-caption">
						<h3>LA</h3>
		         	 	<p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
		      	  	</div>      
		      	</div>
      
		      	<div class="item">
		        	<img src="../images/slide05.png" alt="Los Angeles" width="1200" height="100">
		        	<div class="carousel-caption">
						<h3>LA</h3>
						<p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p>
		       	 	</div>      
				</div>
			</div>

		    <!-- 슬라이드 좌, 우 버튼 -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		</div>

		<div class="w3-container w3-text-grey" id="jeans">
			<p>8 items</p>
		</div>

		<!-- Product grid -->
		<div class="w3-row w3-grayscale">
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">New</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-buy"></i>
							</button>
						</div>
					</div>
					<p>
						Mega Ripped Jeans<br>
						<b>$19.99</b>
					</p>
				</div>
			</div>

			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<p>
						오늘 본 상품2
					</p>
				</div>
			</div>
		</div>
		<div class="w3-row w3-grayscale">
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
		</div>
		<div class="w3-row w3-grayscale">
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
			<div class="w3-col l3 s6">
				<div class="w3-container">
					<div class="w3-display-container">
						<img src="../images/items/d01.jpg" style="width: 100%"> <span
							class="w3-tag w3-display-topleft">Sale</span>
						<div class="w3-display-middle w3-display-hover">
							<button class="w3-button">
								Buy now <i class="fa fa-shopping-cart"></i>
							</button>
						</div>
					</div>
					<p>
						Vintage Skinny Jeans1<br>
						<b class="w3-text-red">$14.99</b>
					</p>
				</div>
			</div>
		</div>
		
		<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>
