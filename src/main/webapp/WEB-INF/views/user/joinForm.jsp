<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<!DOCTYPE html>

<div class="container">
<br/>
<br/>
  <h3>회원가입</h3>
  <br/>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="text">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
    </div>
        <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <button type="button" id="btn-join" class="btn btn-primary">Join</button>
  </form>
  <br/>
  <br/>
</div>

<script src="/myblog/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>
