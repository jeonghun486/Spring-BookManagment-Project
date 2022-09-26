package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.BoardDto;
import com.hoon.bookmanagement.dto.MemberDto;
import com.hoon.bookmanagement.dto.ReplyDto;

public interface BoardDao {
	
	//board 관련 dao 메서드
	public void writeDao(String bmid, String bmtitle, String bmcontent);//게시판 글쓰기
	public ArrayList<BoardDto> listDao(); // 게시판 글 목록 가져오기
	public BoardDto contentViewDao(String bmnum); // 게시판 글 내용 가져오기 
	public void deleteDao (String bmnum); // 게시판 글 삭제
	public void qmodifyDao(String bmid, String bmtitle, String bmcontent, String bmnum); // 게시판 글 내용 수정하기
	public void boardHitDao(String bmnum);//게시판 조회수
	public void rbwriteDao(int boardnum, String rbid, String rbcontent); // 게시판 댓글쓰기
	public ArrayList<ReplyDto> rblistDao(int bmnum);//댓글이 달린원글의 게시판 번호로 검색하여 모든 댓글 리스트를 반환
	public ReplyDto replyViewDao(String rbnum);//댓글 정보 가져오기
	public void replyDeleteDao(String rbid);//댓글 삭제하기
}
