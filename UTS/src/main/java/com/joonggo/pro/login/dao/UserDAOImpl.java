package com.joonggo.pro.login.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.joonggo.pro.login.dto.UserDTO;

import lombok.extern.java.Log;

@Log
@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.joonggo.pro.mappers.UserMapper";
	//-------------------------------------------------------------------------------------------------
	// 회원가입
	//-------------------------------------------------------------------------------------------------
	@Override
	public int join(UserDTO userDTO) throws Exception {
		log.info("UserDAOImpl JoinPage() => " + userDTO);
		return sqlSession.insert(namespace + ".join", userDTO);
	}

	//-------------------------------------------------------------------------------------------------
	// 회원가입 약관
	//-------------------------------------------------------------------------------------------------
	@Override
	public int joinarticle(UserDTO userDTO) throws Exception {
		log.info("UserDAOImpl Joinarticle() => " + userDTO);
		return sqlSession.insert(namespace + ".Joinarticle", userDTO);
	}
	
	
	//-------------------------------------------------------------------------------------------------
	// 회원정보수정
	//-------------------------------------------------------------------------------------------------
	@Override
	public int JoinUpdate(UserDTO userDTO) throws Exception {
		log.info("UserServiceImpl JoinUpdate() => " + userDTO);
		return sqlSession.update(namespace + ".JoinUpdate", userDTO);
	}

	
	//-------------------------------------------------------------------------------------------------
	// 회원 탈퇴
	//-------------------------------------------------------------------------------------------------
	@Override
	public int JoinDelete(UserDTO userDTO) throws Exception {
		log.info("UserDAOImpl JoinDelete() => " + userDTO);
		return sqlSession.delete(namespace + ".JoinDelete", userDTO);	

	}
	
	//-------------------------------------------------------------------------------------------------
	// 아이디 중복 체크
	//-------------------------------------------------------------------------------------------------
	@Override
	public int idCheck(UserDTO userDTO) throws Exception {
		log.info("UserDAOImpl idCheck() => " + userDTO);
		//return sqlSession.insert(namespace + ".idCheck", userDTO);
		int rtnVal =  sqlSession.selectOne(namespace + ".idCheck", userDTO);
		log.info("UserDAOImpl idCheck() 리턴값 => " + rtnVal);
		
		return rtnVal;

	}
	
	//-------------------------------------------------------------------------------------------------
	// 닉네임 중복 체크
	//-------------------------------------------------------------------------------------------------
	@Override
	public int nicknameCheck(UserDTO userDTO) throws Exception {
		log.info("UserDAOImpl nicknameCheck() => " + userDTO);
		//return sqlSession.insert(namespace + ".idCheck", userDTO);
		//selectOne : sql의 문법 중복여부를 확인할 수 있음
		int rtnVal =  sqlSession.selectOne(namespace + ".nicknameCheck", userDTO);
		log.info("UserDAOImpl nicknameCheck() 리턴값 => " + rtnVal);
		
		return rtnVal;

	}
	
}
