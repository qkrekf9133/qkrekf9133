package com.joonggo.pro.board.controllers;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.joonggo.pro.board.dto.PageMaker;
import com.joonggo.pro.board.dto.SearchCriteria;
import com.joonggo.pro.board.dto.boardVO;
import com.joonggo.pro.board.service.boardService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping(value="/board")
public class boardController {

	private static final Logger logger = LoggerFactory.getLogger(boardController.class);
	
	@Inject
	boardService boardService;
	
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {
		logger.info("boardController getWrite() Get");
	}
	
	@RequestMapping(value= "/write", method = RequestMethod.POST)
	public String postWrite(boardVO vo) throws Exception {
		logger.info("boardController write() => " + vo);
		boardService.write(vo);
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView openBoardList(SearchCriteria cri) throws Exception {
	        
		log.info("---------------------------------------------------------------------");
		log.info("Board2Controller openBoardList CRI ==> " + cri);
		log.info("---------------------------------------------------------------------");

		ModelAndView mav = new ModelAndView("/board/list");
	        
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	    pageMaker.setTotalCount(boardService.boardListTotalCount(cri));
	        
	    log.info("boardController openBoardList pageMaker.getTotalCount(cri) ==> " + pageMaker.getTotalCount());

	    List<boardVO>  list = boardService.boardListPaging(cri);
	    mav.addObject("list", list);
	    mav.addObject("pageMaker", pageMaker);
	        
	    return mav;
	        
	}
//	public ModelAndView openBoardList(SearchCriteria scri) throws Exception {
//        
//		log.info("---------------------------------------------------------------------");
//		log.info("Board2Controller openBoardList CRI ==> " + scri);
//		log.info("---------------------------------------------------------------------");
//
//		ModelAndView mav = new ModelAndView("/board/list");
//	        
//	    PageMaker pageMaker = new PageMaker();
//	    pageMaker.setCri(scri);
//	    pageMaker.setTotalCount(boardService.boardListTotalCount(scri));
//	        
//	    log.info("BoardController openBoardList pageMaker.getTotalCount(cri) ==> " + pageMaker.getTotalCount());
//
//	    List<boardVO>  list = boardService.boardListPaging(scri);
//	    mav.addObject("list", list);
//	    mav.addObject("pageMaker", pageMaker);
//	        
//	    return mav;
//	        
//	}
		
		
		
//	    PageMaker pageMaker = new PageMaker();
//	    pageMaker.setCri(scri);
//	    pageMaker.setTotalCount(boardService.boardListTotalCount(scri));
//	    log.info("11111");
//	            
//	    List<boardVO>  list = boardService.boardListPaging(scri);
//	    mav.addObject("list", list);
//	    mav.addObject("pageMaker", pageMaker);
//
//	    return mav;
//	}
	
	@RequestMapping(value="/ViewNComment", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		
		boardVO view = null;
		view = boardService.view(bno);
		
		model.addAttribute("view", view);
	}
	
//	//-------------------------------------------------------------------------------------------------
//	//댓글을 달 수 있는 상세 정보 화면
//	//-------------------------------------------------------------------------------------------------
//	@RequestMapping("/ViewNComment/{bno}")
//	private String boardDetailComment(@PathVariable int bno, Model model) throws Exception {
//		//bno에 해당하는 자료를 찾아와서 model에 담는다.
//		model.addAttribute("detail", boardService.boardDetail(bno));	//게시글의 정보를 가져와서 저장한다.
//		return "/board/ViewNComment";
//	}
	
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void getUpdate(@RequestParam("bno") int bno, Model model) throws Exception {
	
		boardVO view = null;
		view = boardService.view(bno);
		
		model.addAttribute("view", view);
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String postUpdate(boardVO vo) throws Exception {
		
		boardService.update(vo);
		
		return "redirect:/board/list";
	}

	
	// 삭제 구현 
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String remove(@RequestParam("bno") Integer bno) throws Exception {
		
		boardService.delete(bno);
//		rttr.addFlashAttribute("result", "removeOK");
		return "redirect:/board/list";
	}
	
	
	
}
