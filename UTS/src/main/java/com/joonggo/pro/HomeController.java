package com.joonggo.pro;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joonggo.pro.regproduct.dto.RegproductDTO;
import com.joonggo.pro.regproduct.service.RegproductService;

import lombok.extern.java.Log;

/**
 * Handles requests for the application home page.
 */
@Log
@Controller
public class HomeController {
	@Inject
	RegproductService regproductservice;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		//게시글 목록 보여주기 화면으로 가기 전에 보여줄 데이터를 가져와서 model에 담든다.
				List<RegproductDTO> productList = regproductservice.findAll();
				model.addAttribute("productList", productList);
				
				//model.addAttribute("list", boardService2.boardList());
		
				//model.addAttribute("",  );
		
		return "home";
	}
	

	
	
	
}
