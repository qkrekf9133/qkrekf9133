package com.joonggo.pro.login.dto;

import java.sql.Timestamp;

import lombok.Data;

//DB에 데이터들을 옮기기 위한 클래스
@Data
public class UserDTO {
	private String id;
	private String password;
	private String name;
	private String nickname;
	private String zipcode;
	private String address;
	private String daddress;
	private String email;
	private String phone;
	private	Timestamp reg_date;
	private String findId;
	private String findPw;
	
	
	
} //End - public class UserDTO
