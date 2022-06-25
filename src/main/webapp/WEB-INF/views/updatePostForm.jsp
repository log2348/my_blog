<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<div class="container" >
	<form>
	</br>
		<div class="form-group">
			<label for="title">Title  :  </label>
			<input type="text" placeholder="title" id="title" value="${board.title}" class="form-control">
		</div>

		<div class="form-group">
			<label for="title">Content  :  </label>
			<textarea class="form-control summernote" rows="5" id="content">${board.content}</textarea>
		</div>		
		<input type="hidden" id="board-id" value="${board.id}">
		<button type="button" id="btn-ok-update" class="btn btn-primary">MODIFY</button>
	</form>
</div>
		<br/>

<script src="/myblog/js/board.js"></script>
<%@ include file="layout/footer.jsp" %>