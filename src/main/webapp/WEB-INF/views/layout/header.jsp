<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>My Blog</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>My Blog</h1>
  <p>Welcome to my blog!</p> 
</div>

<nav class="navbar navbar-expand-sm bg-light navbar-light">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="/myblog">BLOG</a>
    </li>
<c:choose>
	<c:when test="${empty sessionScope.principal}">
    <li class="nav-item">
      <a class="nav-link" href="/myblog/user/login_form">LOGIN</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/myblog/user/join_form">JOIN</a>
    </li>
	
	</c:when>
	<c:otherwise>
	    <li class="nav-item">
      <a class="nav-link" href="/myblog/user/write_post_form">BOARD</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/myblog/user/join_form">LOGOUT</a>
    </li>
	
	</c:otherwise>
</c:choose>
  </ul>
</nav>

</body>
