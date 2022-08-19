package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.BoardDto;
import com.hoon.bookmanagement.dto.MemberDto;

public interface BoardDao {
	
	//board 관련 dao 메서드
	public void writeDao(String bmid, String bmtitle, String bmcontent);//게시판 글쓰기
	public ArrayList<BoardDto> listDao(); // 게시판 글 목록 가져오기
	public BoardDto contentViewDao(String bmnum); // 게시판 글 내용 가져오기 
	public void deleteDao (String bmnum); // 게시판 글 삭제
	public void qmodifyDao(String bmid, String bmtitle, String bmcontent, String bmnum); // 게시판 글 내용 수정하기
		
	
}
