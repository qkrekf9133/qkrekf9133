package com.joonggo.pro.regproduct.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.joonggo.pro.regproduct.controllers.RegproductController;
import com.joonggo.pro.regproduct.dao.RegproductDAO;
import com.joonggo.pro.regproduct.dto.PhotoDTO;
import com.joonggo.pro.regproduct.dto.RegproductDTO;

import lombok.extern.java.Log;

@Log
@Service
public class RegproductService {
	
	private static final Logger logger = LoggerFactory.getLogger(RegproductController.class);
	
	@Inject
	RegproductDAO regproductDAO;
	
	//-------------------------------------------------------------------------------------------------
	// 게시글 등록
	//-------------------------------------------------------------------------------------------------
	
	public void productInsert(RegproductDTO regproduct) throws Exception {
		logger.info("RegproductService productinsert() =>" + regproduct);
		regproductDAO.productInsert(regproduct);
	
	}
	
	public void photoInsert(PhotoDTO Photo) throws Exception {
		logger.info("RegproductService productinsert() =>" + Photo);
		regproductDAO.photoInsert(Photo);
	
	}
	
	
	public List<RegproductDTO> findAll() throws Exception {
		logger.info("RegproductService productinsert() =>" );
		return regproductDAO.findAll();
			
	}
	
	public RegproductDTO productDtl(int pno) throws Exception {
		logger.info("RegproductService productinsert() =>" );
		return regproductDAO.productDtl(pno);
			
	}
	
	

}
