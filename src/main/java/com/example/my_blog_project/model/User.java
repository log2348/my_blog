package com.example.my_blog_project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(length = 30, nullable = false, unique = true)
	private String username;
	
	@Column(length = 30, nullable = false)
	private String password;
	
	@Column(length = 30, nullable = false)
	private String email;
	
	@Enumerated(EnumType.STRING)
	private RoleType roleType;

}
