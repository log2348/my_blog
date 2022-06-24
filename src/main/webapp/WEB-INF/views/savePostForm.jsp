<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>

<div class="container" >
	<form>
	</br>
		<div class="form-group">
			<h6>Title  :  </h6>
			<input type="text" placeholder="Title here.." id="title" class="form-control">
		</div>

		<div class="form-group">
			<h6>Content  :  </h6>
			<textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>		
		
		<button type="button" id="btn-save" style="float:right" class="btn btn-primary">Save</button>
	</form>
</div>
<br/>
<br/>

<script src="/myblog/js/board.js"></script>
<%@ include file="layout/footer.jsp" %>