package com.example.my_blog_re.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.example.my_blog_re.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {
	
	@Query(value = "SELECT * FROM board WHERE id = :id", nativeQuery = true)
	Optional<Board> mFindById(int id);
	
	@Modifying // 네이티브 쿼리 사용시 수정, 삭제, 저장할 때
	@Query(value= "DELETE FROM board WHERE id = :id", nativeQuery = true)
	int mDeleteById(int id);

}
