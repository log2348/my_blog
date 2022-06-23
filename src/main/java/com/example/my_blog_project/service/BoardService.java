package com.example.my_blog_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.my_blog_project.dto.BoardRequestDto;
import com.example.my_blog_project.model.Board;
import com.example.my_blog_project.repository.BoardRepository;

@Service
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public void savePost(BoardRequestDto dto) {
		Board boardEntity = BoardRequestDto.toEntity(dto);
		boardRepository.save(boardEntity);
	}

}
