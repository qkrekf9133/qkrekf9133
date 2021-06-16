package com.joonggo.pro.login.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.joonggo.pro.login.dto.UserDTO;

import lombok.extern.java.Log;

@Log
@Repository
public class LoginDAOImpl implements LoginDAO {
	

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.joonggo.pro.mappers.LoginMapper";

	//-------------------------------------------------------------------------------------------------
	// 로그인
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO login(UserDTO userDTO) throws Exception {
		log.info("LoginDAOImpl login() ==>");
		return sqlSession.selectOne(namespace + ".login", userDTO);
	}

	//-------------------------------------------------------------------------------------------------
	// 로그인 검사
	//-------------------------------------------------------------------------------------------------
	@Override
	public String loginCheck(UserDTO userDTO, HttpSession session) throws Exception {
		log.info("LoginDAOImpl loginCheck() ==> ");
		return sqlSession.selectOne(namespace + ".loginCheck", userDTO);
	}

	//-------------------------------------------------------------------------------------------------
	//로그아웃 => 세션 초기화
	//-------------------------------------------------------------------------------------------------
	@Override
	public void logout(HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	//-------------------------------------------------------------------------------------------------
	// ID찾기
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO findId(UserDTO userDTO) throws Exception {
		log.info("LoginDAOImpl findId() ==>");
		return sqlSession.selectOne(namespace + ".findId", userDTO);
	}
	

	//-------------------------------------------------------------------------------------------------
	// PW 찾기
	//-------------------------------------------------------------------------------------------------
	@Override
	public UserDTO findPw(UserDTO userDTO) throws Exception {
		log.info("LoginDAOImpl findPw() ==>");
		return sqlSession.selectOne(namespace + ".findPw", userDTO);
	}

}
