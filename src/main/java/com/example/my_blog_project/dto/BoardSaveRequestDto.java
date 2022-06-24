package com.example.my_blog_project.dto;

import com.example.my_blog_project.model.Board;

import lombok.Data;

@Data
public class BoardSaveRequestDto {
	private String title;
	private String content;

	public static Board toEntity(BoardSaveRequestDto dto) {
		
		Board boardEntity = Board.builder()
				.title(dto.getTitle())
				.content(dto.getContent())
				.build();
		return boardEntity;
	}
	
	public void test(){
		
		
	}
}
