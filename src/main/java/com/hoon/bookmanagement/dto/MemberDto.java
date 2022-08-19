package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class MemberDto {
	
	
	private String memid; //가입한 아이디
	private String mempw; // 비밀번호
	private String memname; // 가입한 이름
	private String memaddr;
	private String memtel;
	private String mememail; // 가입한 이메일
	private String memdate; // 가입한 날짜
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberDto(String memid, String mempw, String memname, String memaddr, String memtel, String mememail,
			String memdate) {
		super();
		this.memid = memid;
		this.mempw = mempw;
		this.memname = memname;
		this.memaddr = memaddr;
		this.memtel = memtel;
		this.mememail = mememail;
		this.memdate = memdate;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMempw() {
		return mempw;
	}
	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getMemaddr() {
		return memaddr;
	}
	public void setMemaddr(String memaddr) {
		this.memaddr = memaddr;
	}
	public String getMemtel() {
		return memtel;
	}
	public void setMemtel(String memtel) {
		this.memtel = memtel;
	}
	public String getMememail() {
		return mememail;
	}
	public void setMememail(String mememail) {
		this.mememail = mememail;
	}
	public String getMemdate() {
		return memdate;
	}
	public void setMemdate(String memdate) {
		this.memdate = memdate;
	}
	
}