<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!doctype html>
<html lang="ko">
<link rel="stylesheet" href="css/main.css">
<head>

</head>
<body>
	<jsp:include page="/main/header.jsp" />
		<div class="wrapper">
			<h1>board</h1>
			<table class="board-view-table ">
				<tr>
					<th>번호</th><td colspan="3">${vo.title}</td>
				</tr>
				<tr>
					<th>작성자</th><td>${vo.email}</td>
					<th>작성일</th><td>${vo.regdate}</td>
				
				</tr>
				<tr class="cont">
					<td colspan="4" >${vo.cont}</td>
				</tr>
				
					<tr>
					<td colspan="4">
					
				 	 <c:if test="${member.email == vo.email}">  
					<a href="boardModify?idx=${vo.boardidx}"><button class="btn btn-secondary width100">수정</button></a>
					<a href="boardDelete?idx=${vo.boardidx}"><button class="btn btn-danger width100">삭제</button></a>
					 </c:if> 
					<a href="boardList"><button class="width100">목록</button></a>
					</td>
					</tr>
					
			
			</table>
		</div>
	</div>
	<jsp:include page="/main/footer.jsp"/>
</body>
</html>
