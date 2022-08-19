package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

public class RentDto {

	private String risbn;
	private String rtitle;
	private String rauthor;
	private String rpublisher;
	private String rprice;
	private String rname;
	private String raddr;
	private String rtel;
	private String remail;
	private String rdate;
	private String rimage;
	private int rent;
	
	public RentDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RentDto(String risbn, String rtitle, String rauthor, String rpublisher, String rprice, String rname,
			String raddr, String rtel, String remail, String rdate, String rimage, int rent) {
		super();
		this.risbn = risbn;
		this.rtitle = rtitle;
		this.rauthor = rauthor;
		this.rpublisher = rpublisher;
		this.rprice = rprice;
		this.rname = rname;
		this.raddr = raddr;
		this.rtel = rtel;
		this.remail = remail;
		this.rdate = rdate;
		this.rimage = rimage;
		this.rent = rent;
		
	}

	public String getRisbn() {
		return risbn;
	}

	public void setRisbn(String risbn) {
		this.risbn = risbn;
	}

	public String getRtitle() {
		return rtitle;
	}

	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}

	public String getRauthor() {
		return rauthor;
	}

	public void setRauthor(String rauthor) {
		this.rauthor = rauthor;
	}

	public String getRpublisher() {
		return rpublisher;
	}

	public void setRpublisher(String rpublisher) {
		this.rpublisher = rpublisher;
	}

	public String getRprice() {
		return rprice;
	}

	public void setRprice(String rprice) {
		this.rprice = rprice;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getRaddr() {
		return raddr;
	}

	public void setRaddr(String raddr) {
		this.raddr = raddr;
	}

	public String getRtel() {
		return rtel;
	}

	public void setRtel(String rtel) {
		this.rtel = rtel;
	}

	public String getRemail() {
		return remail;
	}

	public void setRemail(String remail) {
		this.remail = remail;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRimage() {
		return rimage;
	}

	public void setRimage(String rimage) {
		this.rimage = rimage;
	}

	public int getRent() {
		return rent;
	}

	public void setRent(int rent) {
		this.rent = rent;
	}
	
	
}
