package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class ManagerDto {
	
	
	private String mngid; //가입한 아이디
	private String mngpw; // 비밀번호
	private String mngname; // 가입한 이름
	private String mngaddr;
	private String mngtel;
	private String mngemail; // 가입한 이메일
	private String mngdate; // 가입한 날짜
	
	public ManagerDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ManagerDto(String mngid, String mngpw, String mngname, String mngaddr, String mngtel, String mngemail,
			String mngdate) {
		super();
		this.mngid = mngid;
		this.mngpw = mngpw;
		this.mngname = mngname;
		this.mngaddr = mngaddr;
		this.mngtel = mngtel;
		this.mngemail = mngemail;
		this.mngdate = mngdate;
	}

	public String getMngid() {
		return mngid;
	}

	public void setMngid(String mngid) {
		this.mngid = mngid;
	}

	public String getMngpw() {
		return mngpw;
	}

	public void setMngpw(String mngpw) {
		this.mngpw = mngpw;
	}

	public String getMngname() {
		return mngname;
	}

	public void setMngname(String mngname) {
		this.mngname = mngname;
	}

	public String getMngaddr() {
		return mngaddr;
	}

	public void setMngaddr(String mngaddr) {
		this.mngaddr = mngaddr;
	}

	public String getMngtel() {
		return mngtel;
	}

	public void setMngtel(String mngtel) {
		this.mngtel = mngtel;
	}

	public String getMngemail() {
		return mngemail;
	}

	public void setMngemail(String mngemail) {
		this.mngemail = mngemail;
	}

	public String getMngdate() {
		return mngdate;
	}

	public void setMngdate(String mngdate) {
		this.mngdate = mngdate;
	}
	
	
}