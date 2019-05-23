<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>


	<div class="fh5co-loader"></div>

	<div id="page">
		<nav class="fh5co-nav" role="navigation">
		<div class="container">
			<div class="row">
				<div class="col-xs-2">
					<div id="fh5co-logo">
						<a href="index.html">PortFolio<strong>.</strong></a>
					</div>
				</div>
				<div class="col-xs-10 text-right menu-1">
					<ul>
						<li><a href="#fh5co-header">Home</a></li>
						<li class="has-dropdown"><a href="#fh5co-gallery">ProJect</a>
						<li class="has-dropdown"><a href="#skills">SKILLS</a></li>
						<li class="active"><a href="#fh5co-couple-story">Education</a></li>
					</ul>
				</div>
			</div>
		</div>
		</nav>


		<header id="fh5co-header" class="fh5co-cover fh5co-cover-sm"
			role="banner" style="background-image:url(images/main.jpg);">
		<div class="overlay"></div>
		<div class="fh5co-container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1>Jang</h1>
							<h2>proJect Process</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>
		<div id="fh5co-gallery">
			<div class="container">
				<div class="row">
					<div
						class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
						<h2>Project</h2>
						<p>Click on the image to move to the domain</p>
					</div>
				</div>
				<div class="row row-bottom-padded-md">
					<div class="col-md-12">
						<hr>
						<ul id="fh5co-gallery-list">
							<li class="one-third animate-box" data-animate-effect="fadeIn"
								style="background-image: url(images/gallery-1.jpg);"><a
								class="color-2">
									<div class="case-studies-summary">
										<h3>JAVA</h3>
										<button id="opener">상세보기</button>
									</div>
							</a></li>
						</ul>
						<div class="info">
							<h2>학원수강 프로그램(Java)</h2>
							<ul class="info1">
								<li><h3>Explanation</h3></li>
								<li>학원 수강 신청 시스템으로 원하는 과목 신청</li>
								<hr>
								<li><h3>Role</h3></li>
								<li>프로그램 구조 설계,예외를 제외한 전체전인 로직.</li>
								<hr>
								<li>참여 인원 : 3명</li>
								<li>진행기간 : 3주</li>
								<li>기여도 : 70%</li>
								<hr>
							</ul>

						</div>
						<ul id="fh5co-gallery-list">
							<li class="one-third animate-box" data-animate-effect="fadeIn"
								style="background-image: url(images/food.PNG);"><a href="#"
								class="color-2">
									<div class="case-studies-summary">
										<h3>Language</h3>
										<span>HTML/CSS,Java,JavaScript/jQuery,JSP,SQL</span>
									</div>
							</a></li>
						</ul>

						<div class="info">
							<h2>Food Fighter</h2>
							<ul class="info1">
								<li><h3>Explanation</h3></li>
								<li>로그인/회원가입 게시판 구현</li>
								<hr>
								<li>참여 인원 : 1명</li>
								<li>진행기간 : 2주</li>
								<li>비고 : 개인 프로젝트</li>
								<hr>
							</ul>
						</div>
						<ul id="fh5co-gallery-list">
							<li class="one-third animate-box" data-animate-effect="fadeIn"
								style="background-image: url(images/gallery-3.jpg);"><a
								href="#" class="color-3">
									<div class="case-studies-summary">
										<h3>Language</h3>
										<span>HTML/CSS,Java,JavaScript/jQuery,JSP,SQL</span>
									</div>
							</a></li>
						</ul>
						<div class="info">
							<h2>펜션 예약 프로그램</h2>
							<ul class="info1">
								<li><h3>Explanation</h3></li>
								<li>원하는 지역의 펜션 관련한 실시간 정보 시스템으로,<br> 각펜션에 정보 검색 및 부가적
									시스템을 이용하여 보다 <br> 효율적 시간 관리를 하고자 제작.
								</li>
								<hr>
								<li><h3>Role</h3></li>
								<li>펜션예약 부분(HTML/CSS,JS/JQury,JSP/Servlet,SQL)-<br>
									펜션방별 예약,예약 날자별로 다른 예약방법.
								</li>
								<li>갤러리 모든 부분(HTML/CSS,JS/JQury,JSP/Servlet,SQL)-<br>
									-게시물,댓글,검색등
								</li>
								<hr>
								<li>참여 인원 : 5명</li>
								<li>진행기간 : 4주</li>
								<li>기여도 : 60%</li>
								<hr>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="fh5co-started" class="fh5co-bg"
			style="background-image: url(images/main.jpg);">
			<div class="overlay"></div>
			<div class="container">
				<div class="row animate-box">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
						<h2>
							<a href="">GitHub</a>
						</h2>
						<p>Thanks GitHub source</p>
					</div>
				</div>
			</div>
		</div>

		<section class="skills">
		<h1 class="development-title">SKILLS</h1>
		<div class="content" id="skills">
			<div class="development-wrapper">
				<ul class="skills-bar-container">
					<li>
						<div class="progressbar-title">
							<h3>JAVA</h3>
							<h4>기본 기술 숙지 및 이를 활용한 간단한 프로그램밍</h4>
							<span class="percent" id="html-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="70">
							<span class="progressbar" id="progress-html"></span>
						</div>

					</li>
					<li>
						<div class="progressbar-title">
							<h3>HTML / CSS</h3>
							<h4>간단한 레이아웃 작성 및 라이브러리를 이용한 다양한 기능 구현</h4>
							<span class="percent" id="css-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="70">
							<span class="progressbar" id="progress-css"></span>
						</div>
					</li>
					<li>
						<div class="progressbar-title">
							<h3>JavaScript / jQuery</h3>
							<h4>간단한 레이아웃 작성 및 라이브러리를 이용한 다양한 기능 구현</h4>
							<span class="percent" id="javascript-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="60">
							<span class="progressbar" id="progress-javascript"></span>
						</div>
					</li>
					<li>
						<div class="progressbar-title">
							<h3>ORACLE</h3>
							<h4>쿼리문 작성 및 서브 쿼리 활용</h4>
							<span class="percent" id="php-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="70">
							<span class="progressbar" id="progress-php"></span>
						</div>
					</li>
					<li>
						<div class="progressbar-title">
							<h3>JSP /Servlet</h3>
							<h4>페이지간 객체 전달 및 Session을 이용한 데이터 입출력</h4>
							<span class="percent" id="angular-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="60">
							<span class="progressbar" id="progress-angular"></span>
						</div>
					</li>
					<li>
						<div class="progressbar-title">
							<h3>Spring</h3>
							<h4>기본 기술에 대한 간략한 이해</h4>
							<span class="percent" id="angular-pourcent"></span>
						</div>
						<div class="bar-container" data-percent="60">
							<span class="progressbar" id="progress-angular"></span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</section>


	<div id="fh5co-couple-story">
		<div class="container">
			<div class="row">
				<div
					class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">

					<h2>Education</h2>
					<p>academic background & Career</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-md-offset-0">
					<ul class="timeline animate-box">
						<li class="animate-box">
							<div class="timeline-badge"
								style="background-image: url(images/school.jpg);"></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">검정고시 졸업</h4>
									<span class="date"> 2012 August</span>
								</div>

							</div>
						</li>
						<li class="timeline-inverted animate-box">
							<div class="timeline-badge"
								style="background-image: url(images/15.jpg);"></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">안녕하세우</h3>
									<span class="date"> 2016/01 ~ 2017/02</span>
								</div>
								<div class="timeline-body">
									<p>조리 및 식자제 관리</p>
								</div>
							</div>
						</li>
						<li class="animate-box">
							<div class="timeline-badge"
								style="background-image: url(images/meat.jpg);"></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h3 class="timeline-title">태산유통</h3>
									<span class="date">2017/02/07~2018/12/06</span>
								</div>
								<div class="timeline-body">
									<p>소,돼지 정육&판매 담당.</p>
								</div>
							</div>
						</li>
						<li class="timeline-inverted animate-box">
							<div class="timeline-badge"
								style="background-image: url(images/coding.jpg);"></div>
							<div class="timeline-panel">
								<div class="timeline-heading">
									<h4 class="timeline-title">더 좋은 아카데미</h4>
									<span class="date">2018/12/10~2019/06/05</span>
								</div>
								<div class="timeline-body">
									<p>더 좋은 아카데미 수료</p>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>







	<footer id="fh5co-footer" role="contentinfo">
	<div class="container">


		<div class="row copyright">
			<div class="col-md-12 text-center">
				<p>
					<small class="block">Thanks for reading </small> <small
						class="block">producer jang</small>
				</p>
			</div>
		</div>

	</div>
	<div id="dialog" title="학원수강 프로그램(Java)">
		<img src="images/modal.jpg">
		<p>사이트가 없어 캡쳐본으로 대체합니다.</p>
		<p>양해 부탁드리겠습니다...</p>
		<ul class="info1">
			<li><h3>Explanation</h3></li>
			<li>학원 수강 신청 시스템으로 원하는 과목 신청</li>
			<hr>
			<li><h3>Role</h3></li>
			<li>프로그램 구조 설계,예외를 제외한 전체전인 로직.</li>
			<hr>
			<li>참여 인원 : 3명</li>
			<li>진행기간 : 2019.2.1~14(2주)</li>
			<li>기여도 : 70%</li>

		</ul>
	</div>

	</footer>

	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/mainJs.js"></script>
	<!-- jQuery Modal -->

</body>
</html>