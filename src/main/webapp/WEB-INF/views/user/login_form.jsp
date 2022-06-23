<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<div class="container">
<br/>
<br/>
  <h3>로그인</h3>
  <br/>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="email">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
    <button type="button" id="btn-login" class="btn btn-primary">Login</button>
  </form>
  <br/>
  <br/>
</div>

<script src="/myblog/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>
