<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
$(function() {
	$(".board").click(function(){
		alert("준비중입니다");
	})
})
</script>
<div class="wrap">
	<div class="header">
		<div class="inner">
			<h2>
				<a href="main">Food Fighter</a>
			</h2>
		</div>
		<ul class="header_var">
			<li ><a href="#" class="board">BRAND</a></li>
			<li><a href="menu">MENU</a></li>
			<li><a href="boardList">BOARD</a></li>
		</ul>
		<ul class="header_var2">
			<c:if test="${member !=null}">
				<li><a href="logout">로그아웃</a></li>
			</c:if>
			<c:if test="${member == null}">
				<li><a href="login">로그인</a></li>
			</c:if>
			<li><a href="login2">회원가입</a></li>
		</ul>
	</div>

</div>