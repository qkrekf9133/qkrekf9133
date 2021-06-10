package com.joonggo.pro.regproduct.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.joonggo.pro.regproduct.controllers.RegproductController;
import com.joonggo.pro.regproduct.dto.PhotoDTO;
import com.joonggo.pro.regproduct.dto.RegproductDTO;

import lombok.extern.java.Log;

@Log
@Repository
public class RegproductDAO {

	private static final Logger logger = LoggerFactory.getLogger(RegproductController.class);

	@Inject
	SqlSession sqlSession;

	private static String namespace = "com.joonggo.pro.mappers.regproductmapper";
	// -------------------------------------------------------------------------------------------------
	// 게시글 등록
	// -------------------------------------------------------------------------------------------------

	public void productInsert(RegproductDTO regproduct) throws Exception {
		logger.info("RegProductDAO Insert() => " + regproduct);
		sqlSession.insert(namespace + ".productInsert", regproduct);

	}

	public void photoInsert(PhotoDTO photo) throws Exception {
		logger.info("PhotoDTO Insert() => " + photo);
		sqlSession.insert(namespace + ".photoInsert", photo);

	}

	public List<RegproductDTO> findAll() throws Exception {
		logger.info("RegProductDAO Insert() => ");
		return sqlSession.selectList(namespace + ".findAll");

	}

	public RegproductDTO productDtl(int pno) throws Exception {
		logger.info("productDtl Insert() => ");
		return sqlSession.selectOne(namespace + ".productDtl", pno);

	}

	  public PhotoDTO photoDtl(int pno) {
	  log.info("RegProductDAO Insert() => " + pno);
	  
		 return sqlSession.selectOne(namespace+ ".photoDtl", pno);
	  
	  }
}
