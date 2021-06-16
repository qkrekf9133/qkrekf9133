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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDaddress() {
		return daddress;
	}

	public void setDaddress(String daddress) {
		this.daddress = daddress;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Timestamp getReg_date() {
		return reg_date;
	}

	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}

	public UserDTO() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "UserDTO [id=" + id + ", password=" + password + ", name=" + name + ", nickname=" + nickname
				+ ", zipcode=" + zipcode + ", address=" + address + ", daddress=" + daddress + ", email=" + email
				+ ", phone=" + phone + "]";
	}
	
} //End - public class UserDTO
