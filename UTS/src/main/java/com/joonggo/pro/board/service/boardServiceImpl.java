package com.joonggo.pro.board.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.joonggo.pro.board.controllers.boardController;
import com.joonggo.pro.board.dao.boardDAO;
import com.joonggo.pro.board.dto.SearchCriteria;
import com.joonggo.pro.board.dto.boardVO;

import lombok.extern.java.Log;

@Log
@Service
public class boardServiceImpl implements boardService {

	private static final Logger logger = LoggerFactory.getLogger(boardController.class);
	
	@Inject
	private boardDAO boardDAO;

	@Override
	public void write(boardVO vo) throws Exception {
		
		boardDAO.write(vo);
	}

//	@Override
//	public List<boardVO> list(String tbl) throws Exception {
//
//		return boardDAO.list(tbl);
//	}

	@Override
	public boardVO view(int bno) throws Exception {
	
		return boardDAO.view(bno);
	}

	@Override
	public void update(boardVO vo) throws Exception {
		
		boardDAO.update(vo);
	}

	@Override
	public int boardListTotalCount(SearchCriteria cri) throws Exception {
		
		return boardDAO.boardListTotalCount(cri);
	}

	@Override
	public List<boardVO> boardListPaging(SearchCriteria cri) throws Exception {
		log.info("*** Board2ServiceImpl Criteria ==> " + cri);
		return boardDAO.boardListPaging(cri);
	}

	@Override
	public boardVO boardDetail(int bno) throws Exception {
		return boardDAO.boardDetail(bno);
	}
	
	@Override
	public int delete(int bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.delete(bno);
	}
	
	
	
}
