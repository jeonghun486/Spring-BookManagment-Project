package com.hoon.bookmanagement.dao;

import java.util.ArrayList;

import com.hoon.bookmanagement.dto.BoardDto;
import com.hoon.bookmanagement.dto.BookDto;


public interface BookDao {

	//book 관련 dao 메서드
		public void registerDao(String isbn, String title, String author, String publisher, String pdate, String image, String price, String description); 
		public int checkBookDao(String isbn);
		public ArrayList<BookDto> bookListDao();
		public BookDto bookViewDao(String isbn);
		public void bookDeleteDao(String isbn);
		public void bookUpdateDao(String title, String author, String publisher, String pdate, String image, String price, String description, String isbn);
}