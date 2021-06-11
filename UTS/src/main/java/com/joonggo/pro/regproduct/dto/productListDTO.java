package com.joonggo.pro.regproduct.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class productListDTO {

	private int 		pno;
	private String 		psubject;
	private String 		ptype;
	private Long 		pprice;
	private String 		pquantity;
	private String 		photoname;
	private String 		photolocation;

}
