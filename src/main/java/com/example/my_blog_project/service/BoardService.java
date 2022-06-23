package com.example.my_blog_project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.my_blog_project.dto.BoardSaveRequestDto;
import com.example.my_blog_project.model.Board;
import com.example.my_blog_project.repository.BoardRepository;

@Service
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public void savePost(BoardSaveRequestDto dto) {
		Board boardEntity = BoardSaveRequestDto.toEntity(dto);
		boardRepository.save(boardEntity);
	}

	// 메인 화면 글 목록
	public Page<Board> showPostList(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	public Board showDetailPost(int id) {
		Board board = boardRepository.findById(id).get();
		board.setReadCount(board.getReadCount() + 1);
		return board;
	}
}
