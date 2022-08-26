package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


public class BookFileDto {

	private int fnum;//파일의 고유번호 (시퀀스)
	private int isbn;//파일이 첨부된 게시글의 번호
	private String fname;//랜점으로 변경된 파일의 이름
	private String orifname;//파일의 원래 이름
	private String furl;//파일의 저장경로
	private String fextension;//파일의 확장자
	
	public BookFileDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookFileDto(int fnum, int isbn, String fname, String orifname, String furl, String fextension) {
		super();
		this.fnum = fnum;
		this.isbn = isbn;
		this.fname = fname;
		this.orifname = orifname;
		this.furl = furl;
		this.fextension = fextension;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	public int getIsbn() {
		return isbn;
	}

	public void setIsbn(int isbn) {
		this.isbn = isbn;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getOrifname() {
		return orifname;
	}

	public void setOrifname(String orifname) {
		this.orifname = orifname;
	}

	public String getFurl() {
		return furl;
	}

	public void setFurl(String furl) {
		this.furl = furl;
	}

	public String getFextension() {
		return fextension;
	}

	public void setFextension(String fextension) {
		this.fextension = fextension;
	}
	
}
