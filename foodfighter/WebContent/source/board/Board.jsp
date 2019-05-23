<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<link rel="stylesheet" href="css/main.css">
<body>
	<jsp:include page="/main/header.jsp" />
		<div class="wrapper"> 
			<h1>Board</h1>
			<table class="board-table">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items="${list}" var="board">
					<tr>
						<td>${board.boardidx}</td>
						<td><a href="boardView?idx=${board.boardidx}">${board.title}</a></td>
						<td>${board.email}</td>
						<td>${board.regdate}</td>
					</tr>
				</c:forEach>
				<tr class="bnt">
				<c:if test="${member !=null}">
					<td colspan="4"><a href="boardWrite"><button class="btn btn-primary width100">작성</button></td>
				</c:if>
				</tr>
			</table>
		</div>
	<jsp:include page="/main/footer.jsp"/>
</body>
</html>
