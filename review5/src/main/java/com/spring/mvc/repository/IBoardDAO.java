package com.spring.mvc.repository;

import java.util.List;

import com.spring.mvc.model.BoardVO;

public interface IBoardDAO {
	void insert(BoardVO board);
	
	List<BoardVO> getBoardList();

	BoardVO getContent(int boardNo);

	void update(BoardVO board);
	
    void delete(int boardNo);
}
