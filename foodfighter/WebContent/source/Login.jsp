<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>Insert title here</title>
<script>
window.onload = function(){
	var frm = document.frm;
	frm.onsubmit = function(){
		if(frm.id.value == ''){
			alert("이메일이 입력되지 않았습니다.")
			frm.id.focus();
			return false;
		}
		if(frm.pw.value == ''){
			alert("비밀번호가 입력되지 않았습니다.")
			frm.pw.focus();
			return false;
		}
	}
}

</script>
<%-- <c:if test="${param.massage=='fail'}">
	<script>
		alert("로그인에 실패했습니다")
		location.href="login";
	</script>
	</c:if> --%>

</head>
<body>
	<jsp:include page="/main/header.jsp" />
	<div class="img">
		<img src="images/imageView.jpg" alt="img">
	</div>

	<div class="login">
		<form method="post" name="frm">
			<table class="table_login">
				<caption id="cap">Food Fighter</caption>
				<tr>
					<td><input type="text" name="email" placeholder="이메일을 입력하세요."></td>
				</tr>
				<tr>
					<td><input type="password" name="pw"
						placeholder="4글자 이상의 비밀번호를 입력하세요."></td>
				</tr>
				<tr>
					<td>
						<button>로그인</button>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>