package com.joonggo.pro.regproduct.controllers;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joonggo.pro.regproduct.dto.RegproductDTO;
import com.joonggo.pro.regproduct.service.RegproductService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/regproduct")
public class RegproductController {
	
	@Inject
	RegproductService regproductservice;

	private static final Logger logger = LoggerFactory.getLogger(RegproductController.class);

	@RequestMapping("/regproduct")
	public void regproduct() {
		logger.info("regproduct 프로그램 실행.....");
	}
	

	//-------------------------------------------------------------------------------------------------
	// 게시글 작성 : GET
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/regproduct", method = RequestMethod.GET)
	public void productinsert()throws Exception {
	
	}
	//-------------------------------------------------------------------------------------------------
	// 게시글 작성 : POST
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/regproductinsert", method = RequestMethod.POST)
	public String productinsert(RegproductDTO regproduct)throws Exception {
		logger.info("RegproductController productinsert() =>" + regproduct);		
		regproductservice.productInsert(regproduct);
		
		return "/productdtl";
	}
}
