package com.joonggo.pro.board.controllers;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.joonggo.pro.board.dto.CommentDTO;
import com.joonggo.pro.board.service.CommentService;

import lombok.extern.java.Log;


//-------------------------------------------------------------------------------------------------
// public class CommentController
//-------------------------------------------------------------------------------------------------
@Log
@Controller
@RequestMapping("/comment")
public class CommentController {
	
	// @Resource(name="com.edu.board2.service.CommentService")
	@Inject
	CommentService commentService;
	
	//-------------------------------------------------------------------------------------------------
	//댓글 등록
	//-------------------------------------------------------------------------------------------------
	@RequestMapping("/insert")
	@ResponseBody
	private int mCommentServiceInsert(@RequestParam int bno, @RequestParam String content, @RequestParam String writer) throws Exception {
		System.out.println("commentServiceServiceInsert.....");
		System.out.println("bno["+bno+"]");
		System.out.println("content["+content+"]");
		
		 
		CommentDTO comment = new CommentDTO();
		comment.setBno(bno);
		comment.setContent(content);
		comment.setWriter(writer);
		
		int rtnVal = commentService.commentInsert(comment);
		log.info("CommentController 리턴() => " + rtnVal);
		return rtnVal;
	}

	//-------------------------------------------------------------------------------------------------
	//댓글 리스트
	//-------------------------------------------------------------------------------------------------
   @RequestMapping("/list/{bno}") 
    @ResponseBody
    private List<CommentDTO> mCommentServiceList(@PathVariable int bno, Model model) throws Exception{
		System.out.println("commentService List.....");
		System.out.println(commentService.commentList(bno));
       return commentService.commentList(bno);
    }
	
	//-------------------------------------------------------------------------------------------------
	//댓글 삭제
	//-------------------------------------------------------------------------------------------------
	@RequestMapping("/delete/{cno}")
	@ResponseBody
	private int mCommentServiceDelete(@PathVariable int cno) throws Exception {
		System.out.println("commentService Delete.....");
		return commentService.commentDelete(cno);
	}
	
	//-------------------------------------------------------------------------------------------------
	//댓글 수정
	//-------------------------------------------------------------------------------------------------
	@RequestMapping("/update")
	@ResponseBody
	private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception {
		System.out.println("commentService UpdateProc.....");

		CommentDTO comment = new CommentDTO();
		comment.setCno(cno);
		comment.setContent(content);
		
		return commentService.commentUpdate(comment);
	}
	
} // End - public class CommentController

