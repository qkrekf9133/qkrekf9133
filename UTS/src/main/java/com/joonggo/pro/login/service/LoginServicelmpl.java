package com.joonggo.pro.login.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.joonggo.pro.HomeController;
import com.joonggo.pro.login.dao.LoginDAO;
import com.joonggo.pro.login.dto.LoginDTO;
import com.joonggo.pro.login.dto.UserDTO;

import lombok.extern.java.Log;

@Log
@Service
public class LoginServicelmpl implements LoginService {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	LoginDAO loginDAO;

	//-------------------------------------------------------------------------------------------------
	// 로그인
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO login(UserDTO userDTO) throws Exception {
		log.info("LoginService login.....");
		return loginDAO.login(userDTO);
	}

	//-------------------------------------------------------------------------------------------------
	// 로그인 검사
	//-------------------------------------------------------------------------------------------------
	@Override
	public String loginCheck(UserDTO userDTO, HttpSession session) throws Exception {
		log.info("LoginService 진입.....");
		// 데이터가 존재하면 : 이름이 넘어온다.
		// 데이터가 존재하지 않으면 : null이 넘어온다.
		//String name = memberDAO.loginCheck(memberDTO);
		String name = loginDAO.loginCheck(userDTO, session);
		
		if(name != null) { // 데이터가 존재하면 => 등록된 유저임을 뜻한다.
			//세션을 발급한다.
			session.setAttribute("userid", userDTO.getId());
			session.setAttribute("name",   name);
		}
		return name;
	}

	//-------------------------------------------------------------------------------------------------
	//로그아웃 => 세션 초기화
	//-------------------------------------------------------------------------------------------------
	@Override
	public void logout(HttpSession session) throws Exception {
		//세션을 모두 초기화한다.
		session.invalidate();
	}
	

	//-------------------------------------------------------------------------------------------------
	// 아이디 찾기
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO findId(UserDTO userDTO) throws Exception {
		log.info("LoginService findId.....");
		return loginDAO.findId(userDTO);
	}
	

	//-------------------------------------------------------------------------------------------------
	// 비밀번호 찾기
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO findPw(UserDTO userDTO) throws Exception {
		log.info("LoginService findPw.....");
		return loginDAO.findPw(userDTO);
	}

} // End - public class MemberServiceImpl implements MemberService