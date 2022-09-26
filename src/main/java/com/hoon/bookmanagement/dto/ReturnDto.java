package com.hoon.bookmanagement.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

public class ReturnDto {

	private String rtid;
	private String rtname;
	private String rtisbn;
	private String rttitle;
	private String rtauthor;
	private String rtoverdue;
	
	public ReturnDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReturnDto(String rtid, String rtname, String rtisbn, String rttitle, String rtauthor, String rtoverdue) {
		super();
		this.rtid = rtid;
		this.rtname = rtname;
		this.rtisbn = rtisbn;
		this.rttitle = rttitle;
		this.rtauthor = rtauthor;
		this.rtoverdue = rtoverdue;
	}

	public String getRtid() {
		return rtid;
	}

	public void setRtid(String rtid) {
		this.rtid = rtid;
	}

	public String getRtname() {
		return rtname;
	}

	public void setRtname(String rtname) {
		this.rtname = rtname;
	}

	public String getRtisbn() {
		return rtisbn;
	}

	public void setRtisbn(String rtisbn) {
		this.rtisbn = rtisbn;
	}

	public String getRttitle() {
		return rttitle;
	}

	public void setRttitle(String rttitle) {
		this.rttitle = rttitle;
	}

	public String getRtauthor() {
		return rtauthor;
	}

	public void setRtauthor(String rtauthor) {
		this.rtauthor = rtauthor;
	}

	public String getRtoverdue() {
		return rtoverdue;
	}

	public void setRtoverdue(String rtoverdue) {
		this.rtoverdue = rtoverdue;
	}
	
	
	
}
