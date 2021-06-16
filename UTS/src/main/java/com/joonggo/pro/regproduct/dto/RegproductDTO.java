package com.joonggo.pro.regproduct.dto;

import java.sql.Timestamp;

import lombok.Data;


@Data
public class RegproductDTO {
	

	private int 		pno;
	private String 		psubject;
	private Long 		pprice;
	private String 		ppriceinfo;
	private String 		plocation;
	private String 		pcontent;
	private String 		pwriter;
	private String 		pcondition;
	private String 		pquantity;
	private Timestamp	pregdate;
	private String 		pexchange;
	private String 		ptype;


}
