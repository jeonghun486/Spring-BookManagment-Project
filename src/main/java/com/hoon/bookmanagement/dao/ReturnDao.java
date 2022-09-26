package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.ReturnDto;

public interface ReturnDao {

	//member 관련 dao 메서드
		public void returnDao(String rtid, String rtname,String rtisbn, String rttitle, String rtauthor, long diffrence); //회원 가입 메서드
		
}