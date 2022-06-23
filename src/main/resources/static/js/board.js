let index = {
	
	init: function() {
		$("#btn-save").bind("click", () => {
			this.save();
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
	}	
	
}

      $('.summernote').summernote({
        placeholder: 'Write Here',
        tabsize: 2,
        height: 400
      });

index.init();