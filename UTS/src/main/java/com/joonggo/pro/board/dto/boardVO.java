package com.joonggo.pro.board.dto;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class boardVO {

	private	int				bno;
	private	String			title;
	private	String			content;
	private	String			writer;
	private	Timestamp 		regdate;
	//private	Date 			regDate;
	private	int				viewCnt;
	private	List<boardVO>	list;
	
	public boardVO() {
		list = new ArrayList<boardVO>();
	}
}
