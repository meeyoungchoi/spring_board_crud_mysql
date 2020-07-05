<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="<%= request.getContextPath() %>"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
		  <h1 class="display-4">게시글 목록</h1>
		  
		  <a class="btn btn-primary btn-lg" href="${path}/board/write" role="button">글 작성</a>
		</div>
	</div>	
	
	
	<div class="container">
		<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="b" items="${boards}">
    	<tr>
		      <td>${b.boardNo}</td>
		      <td>${b.userId}</td>
		      <td><a href="${path}/board/show?boardNo=${b.boardNo}">${b.title}</a></td>
		      <td>
		      	<fmt:formatDate value="${b.regDate}" pattern="yyyy년 MM월 dd일 a hh:mm"/>
		      </td>
		      <td>
		      	<a class="btn btn-info" href="${path}/board/modify?boardNo=${b.boardNo}">수정</a>
		      </td>
		      
    	</tr>
    </c:forEach>
    
  </tbody>
</table>
	
	</div>
	
	
	
	
</body>
</html>