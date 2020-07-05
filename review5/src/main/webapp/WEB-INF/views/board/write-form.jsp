<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="<%= request.getContextPath() %>" scope="application"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="jumbotron">
		  	<h1 class="display-4">게시글 작성</h1>
  		</div>		
	</div>

	<div class="container">
		<form action="${path}/board/write" method="post">
		  <div class="form-group row">
		    <label for="staticEmail" class="col-sm-2 col-form-label">작성자</label>
		    <div class="col-sm-8">
		      <input type="text"  name="userId" class="form-control">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="inputPassword" class="col-sm-2 col-form-label">제목</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="title">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="inputPassword" class="col-sm-2 col-form-label">내용</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="content">
		    </div>
		  </div>
		  <div class="form-action">
		  	<button class="btn btn-primary">저장</button>
		  </div>
       </form>
	
	</div>
	
</body>
</html>