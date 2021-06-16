package com.joonggo.pro.regproduct.controllers;



import java.io.File;
import java.sql.Date;

import javax.inject.Inject;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.joonggo.pro.regproduct.dto.PhotoDTO;
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
	//  @RequestPart MultipartFile files
	@RequestMapping(value = "/regproductinsert", method = RequestMethod.POST)
	public String productinsert(RegproductDTO regproduct,  MultipartFile files)throws Exception {
		logger.info("RegproductController productInsert() =>" + regproduct);		
		logger.info("RegproductController filesinsert() =>" + files);	
		
		PhotoDTO file	= new PhotoDTO();
				
		if(files.isEmpty()) {	// 업로드할 파일이 없는 경우
			regproductservice.productInsert(regproduct);
		} else {	// 업로드할 파일이 있는 경우
			// Dog.jpg => 파일이름(Dog), 확장자(jpg) 
			//FilenameUtils : commons-io defendency를 사용.		
			String 	fileName 			= files.getOriginalFilename();
			String 	fileNameExtension 	= FilenameUtils.getExtension(fileName).toLowerCase();
			File	destinationFile;
			String	destinationFileName;
			// fileUrl = "uploadFiles 폴더의 위치";
			// uploadFiles 폴더의 위치 확인 : uploadFiles 우클릭 -> Properties -> Resource - > Location
			String	fileUrl = "C:/Users/MOON/git/repository/UTS/src/main/webapp/resources/uploadimg/"; 
			// String	fileUrl = "C:/images/uploadFiles/"; 
			
			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile     = new File(fileUrl + destinationFileName);
			} while(destinationFile.exists());
			
			
			// MultipartFile.transferTo() : 요청 시점의 임시 파일을 로컬 파일 시스템에 영구적으로 복사해준다.
			destinationFile.getParentFile().mkdirs();
			
			files.transferTo(destinationFile);
			
			regproductservice.productInsert(regproduct);	// 게시글 올리기
			 
			// 파일관련 자료를 Files 테이블에 등록한다.
			
			file.setPno(regproduct.getPno());
			file.setPhotoname(destinationFileName);
			file.setPhotoorname(fileName);
			file.setPhotolocation(fileUrl);
			
			regproductservice.photoInsert(file);
		}
		
		return "redirect:/regproduct/regproductdtl/"+ regproduct.getPno();
	}
	
	
	//-------------------------------------------------------------
	// 상세페이지
	//-------------------------------------------------------------
	@RequestMapping("/regproductdtl/{pno}")
	public String productDtl(@PathVariable int pno, Model model) throws Exception {
		logger.info("regproductdtl list ==>" + pno);
		
		model.addAttribute("detail", 		regproductservice.productDtl(pno));
		model.addAttribute("photodetail", 	regproductservice.photoDtl(pno));
		return "/regproduct/regproductdtl";
	}
	
	

	}
	
	
