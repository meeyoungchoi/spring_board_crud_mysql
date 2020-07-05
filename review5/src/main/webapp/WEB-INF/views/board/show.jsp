<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<c:set var="path" value="<%=request.getContextPath()%>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세조회</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1>게시물 상세조회</h1>
		</div>
	</div>
	
	<div class="container">
		#작성일: <input type="text" readonly="readonly" name="regDate" value="${board.regDate}" class="form-control"><br>
		#작성자: <input type="text" readonly="readonly" name="userId" value="${board.userId}" class="form-control"><br>
		#제목: <input type="text" readonly="readonly" name="title" value="${board.title}" class="form-control"><br>
		#내용: <input type="text" readonly="readonly" name="content" value="${board.content}" class="form-control"><br>
		
		<a class="btn btn-primary" href="${path}/board/list">목록</a>
		<a class="btn btn-danger" href="${path}/board/delete?boardNo=${board.boardNo}">삭제</a>
		
	</div>
	
	
	
	
	
	
	
</body>
</html>