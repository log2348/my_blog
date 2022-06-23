let index = {
	
	init: function() {
		$("#btn-join").bind("click", () => {
			this.join();
		});
		
		
		$("#btn-login").bind("click", () => {
			this.login();
		});
	},
	
	join: function() {
		let data = {
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		}
		
		console.log(data);
		
		$.ajax({
			type: "POST",
			url: "/myblog/api/user/join",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function() {
			alert("회원가입 완료")
			location.href="/myblog"
		}).fail(function(error) {
			alert("회원가입 실패")
			console.log(error);
		});
	},
	
	login: function() {
		
		let data = {
			username: $("#username").val(),
			password: $("#password").val()
		}
		
		$.ajax({
			type: "POST",
			url: "/myblog/api/user/login",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"			
		}).done(function() {
			alert("로그인 성공");
			location.href="/myblog"
		}).fail(function() {
			alert("로그인 실패");
		});
	}
}

index.init();