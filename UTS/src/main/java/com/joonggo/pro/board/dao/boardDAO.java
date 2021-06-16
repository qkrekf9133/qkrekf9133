package com.joonggo.pro.board.dao;

import java.util.List;

import com.joonggo.pro.board.dto.SearchCriteria;
import com.joonggo.pro.board.dto.boardVO;

public interface boardDAO {

	public void write(boardVO vo) throws Exception;
	
//	public List<boardVO> list(String tbl) throws Exception;
	
	public boardVO view(int bno) throws Exception;
	
	public void update(boardVO vo) throws Exception;
	
	public int boardListTotalCount(SearchCriteria cri) throws Exception;
	
	public List<boardVO>  boardListPaging(SearchCriteria cri) throws Exception;
	
	public int delete(int bno) throws Exception;
	
	public boardVO boardDetail(int bno) throws Exception;
}
