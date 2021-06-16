package com.joonggo.pro.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.joonggo.pro.board.dto.CommentDTO;

import lombok.extern.java.Log;

//-------------------------------------------------------------------------------------------------
// public class CommentDAOImpl
//-------------------------------------------------------------------------------------------------
@Log
@Repository
public class CommentDAOImpl implements CommentDAO {

	@Inject // 의존관계 주입(Defendency Injection, DI)
	SqlSession sqlSession;
	
	// namespace 조심하자
	private static String namespace = "com.joonggo.pro.mappers.commentMapper";
	
	//-------------------------------------------------------------------------------------------------
	// 게시글번호에 따른 댓글 리스트
	//-------------------------------------------------------------------------------------------------
	@Override
	public List<CommentDTO> commentList(int bno) throws Exception {
		log.info("bno ==> " + bno);
		return sqlSession.selectList(namespace + ".commentList", bno);
	}

	//-------------------------------------------------------------------------------------------------
	// 댓글 등록
	//-------------------------------------------------------------------------------------------------
	@Override
	public int commentInsert(CommentDTO commentDTO) throws Exception {
		log.info("CommentDAOImpl insert() => " + commentDTO);
		int rtnVal = sqlSession.insert(namespace + ".commentInsert", commentDTO);
		log.info("CommentDAOImpl 리턴() => " + rtnVal);
		return rtnVal;
	}

	//-------------------------------------------------------------------------------------------------
	// 댓글 수정
	//-------------------------------------------------------------------------------------------------
	@Override
	public int commentUpdate(CommentDTO commentDTO) throws Exception {
		log.info("CommentDAOImpl update() => " + commentDTO);
		return sqlSession.update(namespace + ".commentUpdate", commentDTO);
	}

	//-------------------------------------------------------------------------------------------------
	// 댓글 삭제
	//-------------------------------------------------------------------------------------------------
	@Override
	public int commentDelete(int cno) throws Exception {
		log.info("CommentDAOImpl delete() => " + cno);
		return sqlSession.delete(namespace + ".commentDelete", cno);
	}

} // End - public class CommentDAOImpl
