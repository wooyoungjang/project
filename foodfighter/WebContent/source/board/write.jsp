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
			<form method="post">
			<input type="hidden" name="idx" value="${vo.boardidx}">
				<table class="board-view-table ">
					<tr class="input">
						<th>번호</th>
						<td colspan="3">
						<input type="text" name="title" value="${vo.title}" >
						</td>
					</tr>
					<tr>
						<td colspan="4"><textarea name="cont">${vo.cont}</textarea></td>
					</tr>

					<tr>
						<td colspan="4">
						<button class="width100">글 반영</button></td>
					</tr>


				</table>
			</form>
		</div>
	</div>
	<jsp:include page="/main/footer.jsp"/>
</body>
</html>
