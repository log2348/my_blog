package com.example.my_blog_project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.my_blog_project.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {


}
