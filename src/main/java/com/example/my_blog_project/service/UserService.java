package com.example.my_blog_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.my_blog_project.model.User;
import com.example.my_blog_project.repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	// 회원가입
	@Transactional
	public int addUser(User user) {
		try {
			userRepository.save(user);
			return 1;			
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
	}

	@Transactional(readOnly = true)
	public User login(User user){
		User loginUser = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
		return loginUser;
	}

}
