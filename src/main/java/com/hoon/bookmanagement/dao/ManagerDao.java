package com.hoon.bookmanagement.dao;

import com.hoon.bookmanagement.dto.ManagerDto;

public interface ManagerDao {

	//manager 관련 dao 메서드
		public void joinDao(String mngid, String mngpw, String mngname, String mngaddr, String mngtel, String mngemail); //회원 가입 메서드
		public int checkIdDao(String mngid); //회원가입 여부 체크 메서드 (아이디가 존재하면 1, 아니면 0 반환)

		public int checkIdPwDao(String mngid, String mngpw);//아이디와 비밀번호 일치여부 체크(일치하면 1, 아니면 0)
		public ManagerDto managerInfoDao(String mngid);//id로 검색해서 해당 id의 모든 정보를 반환하는 메서드
		public void infoModifyDao(String mngpw, String mngname, String mngaddr, String mngtel, String mngemail, String mngid);
		public void managerDeleteDao(String mngid, String mngpw);
}