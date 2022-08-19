package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class BoardDto {

	private int bmnum;
	private String bmid;
	private String bmtitle;
	private String bmcontent;
	private String bmdate;
	private int bmhit;
	public BoardDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDto(int bmnum, String bmid, String bmtitle, String bmcontent, String qdate, int bmhit) {
		super();
		this.bmnum = bmnum;
		this.bmid = bmid;
		this.bmtitle = bmtitle;
		this.bmcontent = bmcontent;
		this.bmdate = bmdate;
		this.bmhit = bmhit;
	}
	public int getBmnum() {
		return bmnum;
	}
	public void setBmnum(int bmnum) {
		this.bmnum = bmnum;
	}
	public String getBmid() {
		return bmid;
	}
	public void setBmid(String bmid) {
		this.bmid = bmid;
	}
	public String getBmtitle() {
		return bmtitle;
	}
	public void setBmtitle(String bmtitle) {
		this.bmtitle = bmtitle;
	}
	public String getBmcontent() {
		return bmcontent;
	}
	public void setBmcontent(String bmcontent) {
		this.bmcontent = bmcontent;
	}
	public String getBmdate() {
		return bmdate;
	}
	public void setBmdate(String bmdate) {
		this.bmdate = bmdate;
	}
	public int getBmhit() {
		return bmhit;
	}
	public void setBmhit(int bmhit) {
		this.bmhit = bmhit;
	}

	
}