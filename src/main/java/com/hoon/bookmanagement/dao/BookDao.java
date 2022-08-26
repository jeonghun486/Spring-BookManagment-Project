package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.BoardDto;
import com.hoon.bookmanagement.dto.BookDto;
import com.hoon.bookmanagement.dto.BookFileDto;




public interface BookDao {

	//book 관련 dao 메서드
		public void registerDao(String isbn, String title, String author, String publisher, String pdate, String image, String price, String description); 
		public int checkBookDao(String isbn);
		public ArrayList<BookDto> bookListDao();
		public BookDto bookViewDao(String isbn);
		public void bookDeleteDao(String isbn);
		public void bookUpdateDao(String title, String author, String publisher, String pdate, String image, String price, String description, String isbn);
		public void listCheckDao(int amount, String isbn);
		public ArrayList<BookDto> isbnSearchlist(String keyword);
		//게시판 isbn으로 검색한 결과 리스트 가져오기
		public ArrayList<BookDto> titleSearchlist(String keyword);
		//게시판 제목으로 검색한 결과 리스트 가져오기
		public ArrayList<BookDto> authorSearchlist(String keyword);
		//게시판 저자로 검색한 결과 리스트 가져오기
		public ArrayList<BookDto> publisherSearchlist(String keyword);
		//게시판 출판사로 검색한 결과 리스트 가져오기
		
		//첨부파일용 dao
		public void fileInsertDao(String isbn, String fname, String orifname, String furl, String fextension);
		//파일 업로드
		public BookFileDto GetFileInfoDao(String isbn);//파일이 첨부된 게시글의 번호로 검색하여 첨부된 파일의 정보 불러오기
}