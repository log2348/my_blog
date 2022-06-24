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
	@Transactional
	public Page<Board> showPostList(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	// 글 상세 보기
	@Transactional
	public Board showDetailPost(int id) {
		Board board = boardRepository.findById(id).orElseThrow(() -> {
			return new RuntimeException("존재하지 않는 글입니다.");
		});
		
		board.setReadCount(board.getReadCount() + 1);
		return board;
	}
	
	@Transactional
	public void updatePost(int id, BoardSaveRequestDto dto) {
		Board boardEntity = boardRepository.mFindById(id).orElseThrow(() -> {
			return new RuntimeException("존재하지 않는 글입니다.");
		});
		
		boardEntity.setTitle(dto.getTitle());
		boardEntity.setContent(dto.getContent());
	}
	
	@Transactional
	public int deletePost(int id) {
		return boardRepository.mDeleteById(id);
	}
}
