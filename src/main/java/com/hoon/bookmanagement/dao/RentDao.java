package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.RentDto;

public interface RentDao {

	//member 관련 dao 메서드
		public void rentDao(String rid, String rname, String raddr, String rtel, String remail, String risbn, String title, 
				String rauthor, String rpublisher, String rprice, String rntdate, String rtrndate, String rimage ); //회원 가입 메서드
		public ArrayList<RentDto> rentListDao(String rid);
		public ArrayList<RentDto> mng_RentListDao();
		public void rentStatusReviseDao(int rent, String rdate, String risbn);
		public RentDto returnCheckDao(String risbn);
		public void rentCancelDao (String risbn);
		public void dateExtensionDao(String rtrndate, String risbn);
		public RentDto extensionDao(String rid);
}