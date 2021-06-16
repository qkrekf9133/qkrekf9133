package com.joonggo.pro.login.service;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.joonggo.pro.HomeController;
import com.joonggo.pro.login.dao.UserDAO;
import com.joonggo.pro.login.dto.UserDTO;

import lombok.extern.java.Log;

@Log
@Service
public class UserServiceImpl implements UserService {
	

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	UserDAO userDAO;
	
	//-------------------------------------------------------------------------------------------------
	// 회원가입
	//-------------------------------------------------------------------------------------------------
	@Override
	public int join(UserDTO userDTO) throws Exception {
		log.info("UserService join.....");
		return userDAO.join(userDTO);
	}


	
	//-------------------------------------------------------------------------------------------------
	// 아이디 중복 체크
	//-------------------------------------------------------------------------------------------------
	@Override
	public int idCheck(UserDTO userDTO) throws Exception {
		log.info("UserService idCheck.....");
		int result = userDAO.idCheck(userDTO);
		log.info("Last UserService idCheck.....");
		return result;
	}
	
	
	//-------------------------------------------------------------------------------------------------
	// 닉네임 중복 체크
	//-------------------------------------------------------------------------------------------------
	@Override
	public int nicknameCheck(UserDTO userDTO) throws Exception {
		log.info("UserService nicknameCheck.....");
		int result = userDAO.nicknameCheck(userDTO);
		log.info("Last UserService nicknameCheck.....");
		return result;
	}
	
	//-------------------------------------------------------------------------------------------------
	// 회원정보수정
	//-------------------------------------------------------------------------------------------------
	@Override
	public int JoinUpdate(UserDTO userDTO) throws Exception {
		//받은 userDTO를 DAO로 보내줍니다.
		log.info("UserServiceImpl JoinUpdate() ==>");
		return userDAO.JoinUpdate(userDTO);
	}

	
	//-------------------------------------------------------------------------------------------------
	// 회원 탈퇴
	//-------------------------------------------------------------------------------------------------
	@Override
	public int JoinDelete(UserDTO userDTO) throws Exception {
		log.info("UserServiceImpl JoinDelete() ==>");
		return userDAO.JoinDelete(userDTO);	
	}
	
}
