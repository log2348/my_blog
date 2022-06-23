<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<div class="container">
<br/>
<br/>
<head>
  <title>My Blog</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
   <style>
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body> 
 
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-4">
      <h3>About Me</h3>
      <br/>
      <img class="img-fluid" src="profile.png" alt="Chania" width="300" height="300">
      <p>preview text</p>
      <hr class="d-sm-none">
    </div>
    
    <div class="col-sm-8">
    <c:forEach var="board" items="${boards.content}">
      <h2>${board.title}</h2>
      <h5>${board.createDate}</h5>
      <div class="fakeimg">Fake Image</div>
      <br/>
      <br/>
    </c:forEach>
    </div>
  </div>
</div>

  <br/>
<br/>
</div>
				
<%@ include file="layout/footer.jsp" %>
