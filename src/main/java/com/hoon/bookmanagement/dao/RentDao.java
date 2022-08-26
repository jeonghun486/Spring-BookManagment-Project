package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.RentDto;

public interface RentDao {

	//member 관련 dao 메서드
		public void rentDao(String rid, String rname, String raddr, String rtel, String remail, String risbn, String title, 
				String rauthor, String rpublisher, String rprice, String rntdate, String rtrndate, String rimage ); //회원 가입 메서드
		public ArrayList<RentDto> rentListDao();
		public RentDto memberInfoDao(String memid);//id로 검색해서 해당 id의 모든 정보를 반환하는 메서드
		public void infoModifyDao(String mempw, String memname, String memaddr, String memtel, String mememail, String memid);
		public void memberDeleteDao(String memid, String mempw);
		public void returnCheckDao(int rent, String rdate, String risbn);
		
}