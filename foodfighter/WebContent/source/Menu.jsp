<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function() {
		$('.slider').bxSlider({
			auto : true,
			pager : false
		});

	});
</script>

</head>
<body>
	<jsp:include page="/main/header.jsp" />
	<div class="slider">
		<div class="sliderimg">
			<img src="images/1.jpg" alt="img">
		</div>
		<div class="sliderimg">
			<img src="images/2.jpg" alt="img">
		</div>
		<div class="sliderimg">
			<img src="images/3.jpg" alt="img">
		</div>
		<div class="sliderimg">
			<img src="images/4.jpg" alt="img">
		</div>
	</div>
	<div class="wrap1">
		<div class="menu">
			<img src="images/5.jpg" alt="img">
			<h2>PREMIUM</h2>
			<ul class="menu1">
				<li>영어로 쓰이는 것만 보더라도 알 수 있는 부드러움!!!</li>
				<li>(TENDER)안심살은 소가 숨을 쉴 때 늑골을 열어주는 근육입니다.</li>
				<li>거의 움직이지 않기 때문에 이 근육은 섬유가 느슨해서 연하지요.</li>
			</ul>
		</div>
		<hr>
		<div class="menu">
			<img src="images/6.jpg" alt="img">
			<h2>BBQ STEAK</h2>
			<ul class="menu1">
				<li>등심은 갈비뼈 위쪽에 붙어 있으며</li>
				<li>염하고 부드러우며 지방질이 많아서 구내에서 인기가 많습니다</li>
				<li>두겁게 써는 요리 보다는 불고기,전공 스테미크에 좋습니다.</li>
			</ul>
		</div>
		<hr>
		<div class="menu">
			<img src="images/7.jpg" alt="img">
			<h2>FERMENT STRAK</h2>
			<ul class="menu1">
				<li>채끝은 등심에서 이어지는 한우의 허리 부분에 위치</li>
				<li>부드럽고 풍미가 넘치며 연하여 상급육으로 취급 합니다</li>
				<li>채끝은 로스구이,정골,산적,스테이크로 적합한 부위입니다</li>
			</ul>
		</div>
		<hr>
	</div>


<jsp:include page="/main/footer.jsp"/>
</body>
</html>