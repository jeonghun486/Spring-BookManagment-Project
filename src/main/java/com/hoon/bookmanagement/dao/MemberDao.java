package com.hoon.bookmanagement.dao;

import com.hoon.bookmanagement.dto.MemberDto;

public interface MemberDao {

	//member 관련 dao 메서드
		public void joinDao(String memid, String mempw, String memname, String memaddr, String memtel, String mememail); //회원 가입 메서드
		public int checkIdDao(String memid); //회원가입 여부 체크 메서드 (아이디가 존재하면 1, 아니면 0 반환)

		public int checkIdPwDao(String memid, String mempw);//아이디와 비밀번호 일치여부 체크(일치하면 1, 아니면 0)
		public MemberDto memberInfoDao(String memid);//id로 검색해서 해당 id의 모든 정보를 반환하는 메서드
		public void infoModifyDao(String mempw, String memname, String memaddr, String memtel, String mememail, String memid);
		public void memberDeleteDao(String memid, String mempw);
}