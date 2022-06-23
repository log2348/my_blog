<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<main class ="container">
	<h3 class="m-2">${board.title}</h3>
	<hr/>
	
	<div class="form-group">
		<div class="m-2">${board.content}</div>
	</div>
	<hr/>
</main>


<script src="/myblog/js/board.js"></script>
<%@ include file="layout/footer.jsp" %>