package com.joonggo.pro.login.controllers;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joonggo.pro.login.dto.UserDTO;
import com.joonggo.pro.login.service.UserService;

import lombok.extern.java.Log;

@Log
@Controller //컨트롤러 빈으로 등록
@RequestMapping("Join/*") //공통적인 url 매핑
public class UserController {
	
	//로깅을 위한 변수
	private static final Logger logger
		= LoggerFactory.getLogger(UserController.class);
	
	//-------------------------------------------------------------------------------------------------
	//컨트롤러는 서비스를, 서비스는 DAO를 호출한다.
	//-------------------------------------------------------------------------------------------------
	@Inject
	UserService userService;
	

	//-------------------------------------------------------------------------------------------------
	// 회원가입 메세지 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/JoinComplete", method = RequestMethod.GET)
	public String JoinHomePage() throws Exception {
		logger.info("get JoinComplete");
		return "/Join/JoinComplete";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원가입 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/JoinPage", method = RequestMethod.GET)
	public String join() throws Exception {
		logger.info("get Joinpage");
		return "/Join/JoinPage";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원가입 post
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/JoinPage", method = RequestMethod.POST)
	public String join(UserDTO userDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {

		HttpSession session = req.getSession();
		session.setAttribute("member", null);
		
		logger.info("post JoinPage");		
		logger.info("UserController userDTO : " + userDTO);
		// 데이터를 존재한다면 1, 아니면 0을 돌려받는다. 
		int result = userService.idCheck(userDTO);

		try {
			if(result == 1) {
				session.setAttribute("member", null);
				rttr.addFlashAttribute("msg", false);
				return "/Join/JoinPage";
			} else if(result == 0) {
				int rtnVal = userService.join(userDTO);
				log.info("UserController 회원가입 리턴값 => " + rtnVal);
				session.setAttribute("member", userDTO.getName());
				return "/Join/JoinComplete";
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/Join/JoinPage";
	}


	//-------------------------------------------------------------------------------------------------
	// 아이디 중복 검사
	//-------------------------------------------------------------------------------------------------
	@ResponseBody
	@RequestMapping(value="/idCheck", method = RequestMethod.POST)
	public int idCheck(UserDTO userDTO) throws Exception {
		logger.info("UserController idCheck.....");
		int result = userService.idCheck(userDTO);
		logger.info("After UserController idCheck................");
		logger.info("UserController idCheck Return Value [" + result + "]");
		//return "/Join/JoinPage";
		return result;
	}
	
	
	//-------------------------------------------------------------------------------------------------
	// 닉네임 중복 검사
	//-------------------------------------------------------------------------------------------------
	@ResponseBody
	@RequestMapping(value="/nicknameCheck", method = RequestMethod.POST)
	public int nicknameCheck(UserDTO userDTO) throws Exception {
		logger.info("UserController nicknameCheck.....");
		int result = userService.nicknameCheck(userDTO);
		logger.info("After UserController nicknameCheck................");
		logger.info("UserController nicknameCheck Return Value [" + result + "]");
		return result;
	}
	
	//-------------------------------------------------------------------------------------------------
	// 우편번호
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="address", method = RequestMethod.GET)
	public String address() throws Exception {
		return "/member/address";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원가입 약관 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/Joinarticle", method = RequestMethod.GET)
	public String getJoinarticle() throws Exception {
		logger.info("get Joinpage");
		return "/Join/Joinarticle";
	}
	
	
	//-------------------------------------------------------------------------------------------------
	// 회원정보수정 GET
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/JoinUpdate", method = RequestMethod.GET)
	public String JoinUpdateView() throws Exception {
		//return "/member/memberUpdateView";
		log.info("UserController JoinUpdate() ==>");
		return "/Join/JoinUpdate";
	}

	//-------------------------------------------------------------------------------------------------
	// 회원정보수정 POST
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/JoinUpdate", method = RequestMethod.POST)
	public String JoinUpdate(UserDTO userDTO, HttpSession session) throws Exception{
		
		log.info("UserController JoinUpdate() ==>");
		userService.JoinUpdate(userDTO);
		
		session.invalidate();
		
		return "/Logon/Login";
	}
 
	
	//-------------------------------------------------------------------------------------------------
	// 회원 탈퇴 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/JoinDelete", method = RequestMethod.GET)
	public String JoinDelete() throws Exception {
		log.info("UserController JoinDelete GET.....");
		//return "/member/memberDeleteView";
		return "/Join/JoinDelete";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원 탈퇴 post
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/JoinDelete", method = RequestMethod.POST)
	public String JoinDelete(UserDTO userDTO, HttpSession session, RedirectAttributes rttr) throws Exception{
		log.info("JoinDelete POST => ");
		
		/* 세션 로그인
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		UserDTO member = (UserDTO) session.getAttribute("member");
		log.info("JoinDelete member => " + member.getId());


		// 세션에있는 비밀번호
		String sessionPassword = member.getPassword();
		log.info("JoinDelete sessionPassword => " + sessionPassword);

		// memberDTO로 들어오는 비밀번호
		String dtoPassword = userDTO.getPassword();
		log.info("JoinDelete dtoPassword => " + dtoPassword);

		if(!(sessionPassword.equals(dtoPassword))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/Join/JoinDelete";
		}
		*/
		log.info("userService.JoinDelete Start.....");
		userService.JoinDelete(userDTO);
		session.invalidate();
		
		return "/Logon/Login";
	}
	
}	
	/*
	//-------------------------------------------------------------------------------------------------
	// 회원가입 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/registerAjax", method = RequestMethod.GET)
	public String getRegisterAjax() throws Exception {
		logger.info("get registerAjax");
		return "/member/registerAjax";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원가입 post
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/registerAjax", method = RequestMethod.POST)
	public String postRegisterAjax(UserDTO userDTO) throws Exception {
		logger.info("post registerAjax");
		
		// 데이터를가 존재한다면 1, 아니면 0을 돌려받는다. 
		int result = userService.IdCheck(userDTO);

		try {
			if(result == 1) {
				return "/Join/JoinPage";
			} else if(result == 0) {
				userService.JoinPage(userDTO);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return "redirect:/Join/JoinPage";
	}

 	*/
	//-------------------------------------------------------------------------------------------------
	// 패스워드 검사
	//-------------------------------------------------------------------------------------------------
	/*
	@ResponseBody
	@RequestMapping(value="/passwdCheck", method = RequestMethod.POST)
	public int passwdCheck(MemberDTO memberDTO) throws Exception {
		int result = memberService.passwdCheck(memberDTO);
		return result;
	}
	 */


