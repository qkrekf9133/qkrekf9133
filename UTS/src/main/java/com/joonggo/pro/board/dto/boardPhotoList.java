package com.joonggo.pro.board.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class boardPhotoList {

	private int 		bno;
	private String		title;
	private String		content;
	private Timestamp	reg_date;
	private String		writer;
	private String		pphotoname;
	
}
