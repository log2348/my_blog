<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %>

<style>
  #btn-update {
    margin-right: 10px;
  }
</style>

<main class="container">
  <br />
  <h3 class="m-2" style="float: left">${board.title}</h3>
  <br />
  <hr/>
  <h6 class="m-2" style="float: right">Date : ${board.createDate}</h6>
  <h6 class="m-2" style="float: right">Total : ${board.readCount}</h6>
  <br />
  <hr />
  <div class="form-group">
    <div class="m-2">${board.content}</div>
  </div>
  <hr />
  <!-- Get -->
  <input type="hidden" id="board-id" value="${board.id}" />
  <button type="button" id="btn-delete" style="float: right" class="btn btn-danger">DELETE</button>
  <a class="btn btn-info" style="float: right" id="btn-update" href="/myblog/updatePostForm/${board.id}">MODIFY</a>
  <br />
  <br />
</main>

<script src="/myblog/js/board.js"></script>
<%@ include file="layout/footer.jsp" %>
