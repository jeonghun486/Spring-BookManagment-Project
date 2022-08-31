package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class ReplyDto {

	private int rbnum;
	private int boardnum;
	private String rbid;
	private String rbcontent;
	private String rbdate;
	
	public ReplyDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReplyDto(int rbnum, int boardnum, String rbid, String rbcontent, String rbdate) {
		super();
		this.rbnum = rbnum;
		this.boardnum = boardnum;
		this.rbid = rbid;
		this.rbcontent = rbcontent;
		this.rbdate = rbdate;
	}

	public int getRbnum() {
		return rbnum;
	}

	public void setRbnum(int rbnum) {
		this.rbnum = rbnum;
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public String getRbid() {
		return rbid;
	}

	public void setRbid(String rbid) {
		this.rbid = rbid;
	}

	public String getRbcontent() {
		return rbcontent;
	}

	public void setRbcontent(String rbcontent) {
		this.rbcontent = rbcontent;
	}

	public String getRbdate() {
		return rbdate;
	}

	public void setRbdate(String rbdate) {
		this.rbdate = rbdate;
	}
	
}