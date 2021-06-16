package com.joonggo.pro.login.controllers;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.joonggo.pro.login.dto.LoginDTO;
import com.joonggo.pro.login.dto.UserDTO;
import com.joonggo.pro.login.service.LoginService;

import lombok.extern.java.Log;

@Log
@Controller //컨트롤러 빈으로 등록
@RequestMapping("Logon/*") //url 매핑
public class LoginController {

	//로깅을 위한 변수
	private static final Logger logger
		= LoggerFactory.getLogger(LoginController.class);
	
	//-------------------------------------------------------------------------------------------------
	//컨트롤러는 서비스를, 서비스는 DAO를 호출한다.
	//-------------------------------------------------------------------------------------------------
	@Inject
	LoginService loginService;
	
	//-------------------------------------------------------------------------------------------------
	//로그인 화면으로 이동
	//-------------------------------------------------------------------------------------------------
	/*
	 * @RequestMapping("Login.do") public String login() throws Exception { return
	 * "Logon/Login"; // WEB-INF/views/member/login.jsp로 이동 }
	 */
	
	//-------------------------------------------------------------------------------------------------
	//로그인 입력 값 검사
	//-------------------------------------------------------------------------------------------------
	/*
	 * @RequestMapping("login_check.do") public ModelAndView
	 * login_check(@ModelAttribute LoginDTO loginDTO, HttpSession session) throws
	 * Exception { logger.info("LoginController 진입.....");
	 * 
	 * //로그인 검사 성공 => 이름이 넘어온다, 실패일 경우 => null이 넘어온다. String name =
	 * loginService.loginCheck(loginDTO, session);
	 * 
	 * //넘겨줄 값을 저장하고 넘어갈 뷰페이지를 동시에 사용. ModelAndView mav = new ModelAndView();
	 * if(name != null) { // 로그인 검사가 정상이면 시작 페이지로 이동한다. mav.setViewName("/"); //main
	 * => 뷰의 이름 //뷰에 전달할 값 mav.addObject("message", name); } else { //로그인 검사를 실패하였으면
	 * login 페이지로 다시 되돌아가게 한다. mav.setViewName("Logon/Login"); //뷰에 전달할 값
	 * mav.addObject("message", "error"); } return mav; }
	 */
	/*
	//-------------------------------------------------------------------------------------------------
	//로그아웃
	//-------------------------------------------------------------------------------------------------
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) throws Exception {
		loginService.logout(session);		//세션 초기화
		mav.setViewName("Logon/Login"); 	//이동할 페이지 이름
		mav.addObject("message", "logout");	//변수에 값을 저장한다.
		return mav;	//페이지 이동
	}
	*/
	
	//-------------------------------------------------------------------------------------------------
	// 로그아웃
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		//로그아웃 버튼을 눌렀을 경우, 세션을 없앤다.
		session.invalidate();
		return "/Logon/Login";
	}
	
	
	//-------------------------------------------------------------------------------------------------
	// 로그인 get
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/Login", method = RequestMethod.GET)
	public String getLogin() throws Exception {
		log.info("LoginController login GET....");
		return "/Logon/Login";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 로그인 post
	//-------------------------------------------------------------------------------------------------
	@RequestMapping(value="/Login", method = RequestMethod.POST)
	public String login(UserDTO userDTO, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		
		log.info("LoginController login POST....");
		log.info("LoginController login POST loginDTO ==> " + userDTO);
		
		HttpSession session = req.getSession();
		//넘겨받은 회원정보를 가지고 Service에게 의뢰한다.
		UserDTO login = loginService.login(userDTO);
		logger.info("LoginController Return Value " + login);
		
		//해당하는 회원정보가 없으면
		if(login == null) {
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			//return "/Logon/Login";
		} else {
			// 로그인이 정상이라면 세션을 발급한다.
			session.setAttribute("member", login);
			//return "/member/login";
			//return "redirect:/";
		}
		return "redirect:/Logon/Login";
	}
	
	//-------------------------------------------------------------------------------------------------
	// 아이디 찾기 이동
	//-------------------------------------------------------------------------------------------------
	
	@RequestMapping("FindId")
	public String FindId() throws Exception {
		return "/Logon/FindId";
	}
	
	//-------------------------------------------------------------------------------------------------
	// PW 찾기 이동
	//-------------------------------------------------------------------------------------------------	
	@RequestMapping("FindPw")
	public String FindPw() throws Exception {
		return "/Logon/FindPw";
	}
	
}