let index = {
	
	init: function() {
		$("#btn-save").bind("click", () => {
			this.save();
		});
		
		$("#btn-ok-update").bind("click", () => {
			this.update();
		});			
		
		$("#btn-delete").bind("click", () => {
			this.delete();
		});		
	
	},
	
	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		}
		
		console.log(data);
		
		$.ajax({
			type: "POST",
			url: "/myblog/savePost",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
		}).done(function() {
			alert("글 저장 완료");				
			location.href="/myblog";
		}).fail(function(error) {
			alert("글 저장 실패");
			console.log(error);
		});
	},	
	
	update: function(){
		let boardId = $("#board-id").val();
		console.log(boardId);
		
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		}

		$.ajax({
			type: "PUT",
			url: "/myblog/updatePost/" + boardId,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8"
		}).done(function(data, textStatus, xhr){
			alert("글 수정 완료.");
			location.href = "/myblog"
		}).fail(function(){
			alert("글 수정 실패.");
		});
		
	},
		
	delete: function() {
		let = boardId = $("#board-id").val();
		
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		}
		
		console.log(data);
		
		$.ajax({
			type: "DELETE",
			url: "/myblog/deletePost/" + boardId,
		}).done(function() {
			alert("글이 삭제되었습니다.");	
			location.href = "/myblog"		
		}).fail(function(error) {
			alert("글 삭제에 실패했습니다.");			
			console.log(error);
		});
	}	
	
}

      $('.summernote').summernote({
        placeholder: 'Content here..',
        tabsize: 2,
        height: 400
      });

index.init();
