 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/main.css">
<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
<title>Insert title here</title>
<script>
$(function(){
	$(document.frm).submit(function(e){
		$(".email").hide();
		$(".pw").hide();
		$(".name").hide();
		$(".tel").hide();
		$(".address").hide();
		
		var emailRegExp= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		
		if($(this.email).val() == ''){
			$(".email").show().next();
			e.preventDefault();
		}
		else if(!emailRegExp.test($(this.email).val())){
			$(".email").show().html("유효한 이메일을 입력하세요").next();
			e.preventDefault();
		}
		if($(this.pw).val() == ''){
			$(".pw").show();
			e.preventDefault();
		}
		else if($(this.pw).val().length < 4 ){
			$(".pw").show().html("비밀번호를 4글자 이상 입력하세요");
			e.preventDefault();
		}
		if($(this.name).val() == ''){
			$(".name").show();
			e.preventDefault();
		}
		if($(this.tel).val() == ''){
			$(".tel").show();
			e.preventDefault();
		}
		else if(!(/^\d{3}-\d{3,4}-\d{4}$/.test($(this.tel).val()))){
			$(".tel").show().html("000-0000-0000의 형식으로 입력하세요.");
			e.preventDefault();
		}
		if($(this.address).val() == ''){
			$(".address").show();
			e.preventDefault();
		}
	});
});
</script>
</head>
<body>
	<jsp:include page="/main/header.jsp" />
	<div class="img">
		<img src="images/imageView.jpg" alt="img">
	</div>

	<div class="login2">
			<form method="post" name="frm">
					<input type="hidden" name="rating" value="0">
					<table class="table_login">
					<caption>Food Fighter</caption> 
						<tr>
							<th>이메일</th>
							<td><input type="text" name="email" id="email"
								placeholder="이메일을 입력하세요.">
								<p class="email" >이메일을 입력하세요</p>
								</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="pw" id="pw"
								placeholder="4글자 이상의 비밀번호를 입력하세요.">
								<p class="pw" >비밀번호을 입력하세요</p>
								</td>
						</tr>
						<tr>
							<th>성명</th>
							<td><input type="text" name="name" placeholder="이름을 입력해주세요" id="name">
								<p class="name" >성명을 입력하세요</p>
								</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><input type="text" name="tel" id="tel"
								placeholder="000-0000-0000">
								<p class="tel">번호를 입력하세요</p>
								</td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" name="address" id="address"
								placeholder="주소를 입력하세요">
								<p class="address">번호를 입력하세요</p>
								</td>
						</tr>
						
						
						<tr>
							<td colspan="2" id="button">
								<button>회원가입</button>
							</td>
						</tr>
					</table>

				</form>
	</div>
</body>
</html> 