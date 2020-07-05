<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="<%=request.getContextPath()%>" scope="application"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>게시물 수정</h1>
	</div>
	
	
	<div class="container">
		<form method="post" action="${path}/board/update">
			#글번호: <input type="hidden" readonly="readonly" name="boardNo" value="${board.boardNo}" class="form-control">
			#작성자: <input type="text" readonly="readonly" name="userId" value="${board.userId}" class="form-control">
			#제목: <input type="text"  name="title" value="${board.title}" class="form-control">
			#내용: <input type="text"  name="content" value="${board.content}" class="form-control">
			#작서일:  <fmt:formatDate value="${board.regDate}" pattern="yyyy년 MM월 dd일 a hh:mm"/><br>
			<button class="btn btn-info">수정</button>
		</form>
	</div>
	
	
		
</body>
</html>