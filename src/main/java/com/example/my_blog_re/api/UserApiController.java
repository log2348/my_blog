package com.example.my_blog_re.api;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.my_blog_re.dto.ResponseDto;
import com.example.my_blog_re.model.RoleType;
import com.example.my_blog_re.model.User;
import com.example.my_blog_re.service.UserService;

@RestController
@RequestMapping("/api/user")
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private HttpSession httpSession;
	
	@PostMapping("/join")
	public ResponseDto<Integer> join(@RequestBody User user) {
		System.out.println("apiController join 호출 !!");
		user.setRoleType(RoleType.USER);
		int result = userService.addUser(user);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), result);
	}
	
	@PostMapping("/login")
	public ResponseDto<Integer> login(@RequestBody User user) {
		System.out.println("apiController login 호출 !!");
		User principal = userService.login(user);		
		if(principal != null) {
			httpSession.setAttribute("principal", principal);
		}
		return new ResponseDto<>(HttpStatus.OK.value(), 1);
		
	}

}
