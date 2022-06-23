package com.example.my_blog_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.my_blog_project.model.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	User findByUsernameAndPassword(String username, String password);

}
