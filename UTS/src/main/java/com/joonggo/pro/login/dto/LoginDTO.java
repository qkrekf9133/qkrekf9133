package com.joonggo.pro.login.dto;

import lombok.Data;

//데이터 Model

public class LoginDTO {
	private String name;
	private String id;
	private String password;
	private String findId;
	private String findPw;
	private String email;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFindId() {
		return findId;
	}
	public void setFindId(String findId) {
		this.findId = findId;
	}
	public String getFindPw() {
		return findPw;
	}
	public void setFindPw(String findPw) {
		this.findPw = findPw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [name=" + name + ", id=" + id + ", password=" + password + ", findId=" + findId + ", findPw="
				+ findPw + ", email=" + email + "]";
	}
	

	
	
} // End - public class MemberDTO
