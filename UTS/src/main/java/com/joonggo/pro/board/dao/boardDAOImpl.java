package com.joonggo.pro.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.joonggo.pro.board.dto.SearchCriteria;
import com.joonggo.pro.board.dto.boardVO;

import lombok.extern.java.Log;
@Log
@Repository
public class boardDAOImpl implements boardDAO {

	@Inject 
	SqlSession sqlSession;
	
	private static String namespace="com.joonggo.pro.mappers.boardMapper";
	
	@Override
	public void write(boardVO vo) throws Exception {
		
		sqlSession.insert(namespace + ".insert", vo);	
	}

//	@Override
//	public List<boardVO> list(String tbl) throws Exception {
//		// TODO Auto-generated method stub
//		return sqlSession.selectList(namespace + ".list", tbl);
//	}

	@Override
	public boardVO view(int bno) throws Exception {
		
		return sqlSession.selectOne(namespace + ".view", bno);
	}

	@Override
	public void update(boardVO vo) throws Exception {
		
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public int boardListTotalCount(SearchCriteria cri) throws Exception {
		log.info("*** Board2DAOImpl Criteria ==> " + cri);
		//log.info("*** boardDAOImpl Criteria ==> " + cri.getPageStart());
		//log.info("*** boardDAOImpl Criteria ==> " + cri.getPerPageNum());
		log.info("***** boardDAOImpl Criteria cri.getSearchType() ==> " + cri.getSearchType());
		return sqlSession.selectOne(namespace + ".boardListTotalCount", cri);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<boardVO> boardListPaging(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace + ".boardListPaging", cri);
	}

	@Override
	public int delete(int bno) throws Exception {
		
		return sqlSession.update(namespace + ".delete", bno);
	}


	@Override
	public boardVO boardDetail(int bno) throws Exception {
		log.info("boardDAOImpl boardDetail() => ");
		return sqlSession.selectOne(namespace + ".boardDetail", bno);
	}

	
	

}
