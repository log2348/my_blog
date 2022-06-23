package com.example.my_blog_re.dto;

import com.example.my_blog_re.model.Board;

import lombok.Data;

@Data
public class BoardRequestDto {
	private String title;
	private String content;

	public static Board toEntity(BoardRequestDto dto) {
		Board boardEntity = Board.builder()
				.title(dto.getTitle())
				.content(dto.getContent())
				.build();
		return boardEntity;
	}

}
