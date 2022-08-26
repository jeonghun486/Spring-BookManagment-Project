package com.hoon.bookmanagement;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Time;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.hoon.bookmanagement.dao.BoardDao;
import com.hoon.bookmanagement.dao.BookDao;
import com.hoon.bookmanagement.dao.ManagerDao;
import com.hoon.bookmanagement.dao.MemberDao;
import com.hoon.bookmanagement.dao.RentDao;
import com.hoon.bookmanagement.dto.BoardDto;
import com.hoon.bookmanagement.dto.BookDto;
import com.hoon.bookmanagement.dto.BookFileDto;
import com.hoon.bookmanagement.dto.ManagerDto;
import com.hoon.bookmanagement.dto.MemberDto;
import com.hoon.bookmanagement.dto.RentDto;


@Controller
public class BookController {
	
	//===========================멤버 컨트롤러===============================
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/")
	public String home() {
		return "member/index";
	}
	@RequestMapping(value="/index")
	public String home2() {
		return "member/index";
	}
	
	@RequestMapping(value="/member/index")
	public String index() {
		return "member/index";
	}
	
	@RequestMapping(value="/login")
	public String login() {
		return "member/login";
	}
	@RequestMapping(value="/selectLogin")
	public String selectLogin() {
		return "member/selectLogin";
	}
	
	@RequestMapping(value="/join")
	public String join() {
		return "member/join";
	}@RequestMapping(value="/alert_login")
	public String alert_login() {
		return "member/alert_login";
	}
	
	@RequestMapping(value="/board")
	public String board(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String smemid = (String)session.getAttribute("smemid");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		if(smemid != null) {
			MemberDto memberDto = dao.memberInfoDao(smemid);
			
			model.addAttribute("memberDto", memberDto);
			model.addAttribute("smemid",smemid);
			
		} else {
			model.addAttribute("smemid", "Guest");
		}
		
		return "member/board";
	}
	
	@RequestMapping(value="/board_list")
	public String list(Model model) {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		ArrayList<BoardDto> dtos = dao.listDao();
		
		model.addAttribute("list", dtos);
		
		return "member/board_list";
	}
	
	@RequestMapping(value="/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String memid = request.getParameter("memid");
		String mempw = request.getParameter("mempw");
		String memname = request.getParameter("memname");
		String memaddr = request.getParameter("memaddr");
		String memtel = request.getParameter("memtel");
		String mememail = request.getParameter("mememail");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		int checkId = dao.checkIdDao(memid);//아이디 존재 여부체크(1이면 이미 존재, 0이면 존재 안함)
		
		if(checkId == 0) {
			dao.joinDao(memid, mempw, memname, memaddr, memtel, mememail);
			
			HttpSession session  = request.getSession();
			
			session.setAttribute("smemid", memid);
			session.setAttribute("smemname", memname);
			
			model.addAttribute("memname", memname);
			model.addAttribute("memid", memid);
		}
		model.addAttribute("checkId", checkId);//checkId값이 1(이미 존재) 또는 0(존재 안함)이 전송
		
		return "member/joinOk";
	}
	
	
	
	
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String memid = request.getParameter("memid");
		String mempw = request.getParameter("mempw");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		int checkId = dao.checkIdDao(memid);//1이 반환 되면 아이디가 존재, 0이 반환되면 아이디가 존재 안함
		
		int checkIdPw = dao.checkIdPwDao(memid, mempw);
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		
		if(checkIdPw == 1) {
			
			MemberDto memberDto = dao.memberInfoDao(memid);// 로그인한 아이디의 모든 정보를 dto로 변환
			
			//비밀번호 체크
			HttpSession session = request.getSession();
			
			String memberid = memberDto.getMemid();
			String membername = memberDto.getMemname();
			
			
			session.setAttribute("smemid", memberid);
			session.setAttribute("smemname", membername);
			
			
			model.addAttribute("memid", memberid);
			model.addAttribute("memname", membername);
		}
		
		return "member/loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "member/login";
	}
	@RequestMapping(value="/infoModify")
	public String infoModify(HttpServletRequest request, Model model) {
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		HttpSession session = request.getSession();
		
		String smemid = (String)session.getAttribute("smemid");
		
		MemberDto memberDto = dao.memberInfoDao(smemid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		return "member/infoModify";
	}
	
	@RequestMapping(value="/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		String memid = request.getParameter("memid");
		String mempw = request.getParameter("mempw");
		String memname = request.getParameter("memname");
		String memaddr = request.getParameter("memaddr");
		String memtel = request.getParameter("memtel");
		String mememail = request.getParameter("mememail");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		dao.infoModifyDao(mempw, memname, memaddr, memtel, mememail, memid);
		
		HttpSession session = request.getSession();
		
		String smemid = (String)session.getAttribute("smemid");
		
		MemberDto memberDto = dao.memberInfoDao(smemid);//정보를 수정한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		return "member/infoModifyOk";
	}
	@RequestMapping(value="/delete")
	public String delete(HttpServletRequest request, Model model) {
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		HttpSession session = request.getSession();
		
		String smemid = (String)session.getAttribute("smemid");
		
		MemberDto memberDto = dao.memberInfoDao(smemid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		return "member/delete";
	}
	
	@RequestMapping(value="/member/deleteOk")
	public String deleteOk(HttpServletRequest request, Model model) {
		String memid = request.getParameter("memid");
		String mempw = request.getParameter("mempw");
		
		MemberDao dao = sqlSession.getMapper(MemberDao.class);
		
		dao.memberDeleteDao(memid, mempw);
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		
		return "member/deleteOk";
	}
	
	@RequestMapping(value="/board_write", method=RequestMethod.POST)
	public String board_write(HttpServletRequest request, Model model) {
		
		String bmid = request.getParameter("bmid");
		String bmtitle = request.getParameter("bmtitle");
		String bmcontent = request.getParameter("bmcontent");
		
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.writeDao(bmid, bmtitle, bmcontent);
		
		return "redirect:board_list";
	}
	
	@RequestMapping(value = "/board_view")
	public String mngBoard_view(HttpServletRequest request, Model model) {
		
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		BoardDto boardDto = dao.contentViewDao(bmnum);
		
		model.addAttribute("contentDto", boardDto);
		
		String bmid = boardDto.getBmid();
		
		model.addAttribute("boardID", bmid);
		
		return "member/board_view";
	}
	
	@RequestMapping(value="/member/board_delete")
	public String board_delete(HttpServletRequest request, Model model) {
		
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.deleteDao(bmnum);
		
		return "redirect:board_list";
	}
	
	@RequestMapping(value = "/board_modify")
	public String  board_modify(HttpServletRequest request, Model model) {
		
		String bmid = request.getParameter("bmid");
		String bmcontent = request.getParameter("bmcontent");
		String bmtitle = request.getParameter("bmtitle");
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.qmodifyDao(bmid, bmtitle, bmcontent, bmnum);
		
		return "redirect:board_list";
	}
	@RequestMapping(value="/book_list")
	public String book_list(HttpServletRequest request, Model model) {
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		//ArrayList<BookDto> dtos = dao.bookListDao();
		ArrayList<BookDto> dtos = null;
		
		if(searchKeyword == null) {
			dtos = dao.bookListDao();
		}else if(searchOption.equals("isbn")) {
			dtos = dao.isbnSearchlist(searchKeyword);
		} else if(searchOption.equals("title")) {
			dtos = dao.titleSearchlist(searchKeyword);
		} else if(searchOption.equals("author")) {
			dtos = dao.authorSearchlist(searchKeyword);
		} else if(searchOption.equals("publisher")) {
			dtos = dao.publisherSearchlist(searchKeyword);
		}
		
		int listCount = dtos.size();//게시판 글목록의 글 개수
		
		model.addAttribute("bookList", dtos);
		model.addAttribute("listCount", listCount);
		
		
		return "member/book_list";
	}
	@RequestMapping(value = "/book_view")
	public String book_view(HttpServletRequest request, Model model) {
		
		String isbn = request.getParameter("isbn");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		BookDto bookDto = dao.bookViewDao(isbn);
		BookFileDto fbDto = dao.GetFileInfoDao(isbn);
		
		model.addAttribute("bookDto", bookDto);
		model.addAttribute("fbDto", fbDto);
		
		return "member/book_view";
	}
	@RequestMapping(value = "/book_rent")
	public String book_rent(HttpServletRequest request, Model model) {
		
		MemberDao mdao = sqlSession.getMapper(MemberDao.class);
		
		HttpSession session = request.getSession();
		
		String smemid = (String)session.getAttribute("smemid");
		
		MemberDto memberDto = mdao.memberInfoDao(smemid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("memberDto", memberDto);
		
		String isbn = request.getParameter("isbn");
		
		BookDao bdao = sqlSession.getMapper(BookDao.class);
		
		BookDto bookDto = bdao.bookViewDao(isbn);
		BookFileDto fbDto = bdao.GetFileInfoDao(isbn);
		
		model.addAttribute("bookDto", bookDto);
		model.addAttribute("fbDto", fbDto);
		
		return "member/book_rent";
	}
	@RequestMapping(value="/book_rentOk", method=RequestMethod.POST)
	public String book_rentOk(HttpServletRequest request, Model model) {
		
		String risbn = request.getParameter("isbn");
		String rtitle= request.getParameter("title");
		String rauthor = request.getParameter("author");
		String rpublisher = request.getParameter("publisher");
		String rprice = request.getParameter("price");
		String rname = request.getParameter("memname");
		String raddr = request.getParameter("memaddr");
		String rtel = request.getParameter("memtel");
		String remail = request.getParameter("mememail");
		String rntdate = request.getParameter("rntdate");
		String rtrndate = request.getParameter("rtrndate");
		String rimage = request.getParameter("image");
		String rid = request.getParameter("memid");
		int amount = 0;
		
		
		
		RentDao rdao = sqlSession.getMapper(RentDao.class);
		BookDao bdao = sqlSession.getMapper(BookDao.class);
		
		rdao.rentDao(rid, rname, raddr, rtel, remail, risbn, rtitle, rauthor, rpublisher, rprice, rntdate, rtrndate, rimage);
		bdao.listCheckDao(amount, risbn);
		
		
		return "member/book_rentOk";
	}
	@RequestMapping(value="/book_rentList")
	public String rentList(Model model) throws Exception {
		RentDao dao = sqlSession.getMapper(RentDao.class);
		
		ArrayList<RentDto> dtos = dao.rentListDao();
		
		model.addAttribute("rentList", dtos);
		
		return "member/book_rentList";
	}
	@RequestMapping(value = "/book_rentListView")
	public String book_rentListView(HttpServletRequest request, Model model) {
		
		String isbn = request.getParameter("isbn");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		BookDto bookDto = dao.bookViewDao(isbn);
		BookFileDto fbDto = dao.GetFileInfoDao(isbn);
		
		model.addAttribute("bookDto", bookDto);
		model.addAttribute("fbDto", fbDto);
		
		return "member/book_rentListView";
	}
	//===========================관리자 컨트롤러===============================
	
	@RequestMapping(value="/manager/mngIndex")
	public String mngIndex() {
		return "manager/mngIndex";
	}
	@RequestMapping(value="manager/mngLogin")
	public String mngLogin() {
		return "manager/mngLogin";
	}
	@RequestMapping(value="/manager/book_register")
	public String book_register(HttpServletRequest request, Model model) {
		return "manager/book_register";
	}
	
	@RequestMapping(value="/manager/rent&return_list")
	public String mngContact(HttpServletRequest request, Model model) {
		RentDao dao = sqlSession.getMapper(RentDao.class);
		
		ArrayList<RentDto> dtos = dao.rentListDao();
		
		Calendar now = Calendar.getInstance();
		int curYear = now.get(Calendar.YEAR);
		int curMonth = now.get(Calendar.MONTH) + 1;
		int curDay = now.get(Calendar.DAY_OF_MONTH);
		
		String curDate = curYear+"-"+curMonth+"-"+curDay;
		int listCount = dtos.size();
		
		model.addAttribute("curDate", curDate);
		model.addAttribute("listCount", listCount);
		model.addAttribute("rentList", dtos);
		
		return "manager/rent&return_list";
	}
	
	@RequestMapping(value="/manager/book_return")
	public String book_return(HttpServletRequest request, Model model) {
		String risbn = request.getParameter("isbn");
		
		Calendar now = Calendar.getInstance();
		int curYear = now.get(Calendar.YEAR);
		int curMonth = now.get(Calendar.MONTH) + 1;
		int curDay = now.get(Calendar.DAY_OF_MONTH);
		
		String curDate = curYear+"-"+curMonth+"-"+curDay;
		
		int rent = 0;
		int amount=1;
		
		RentDao rdao = sqlSession.getMapper(RentDao.class);
		BookDao bdao = sqlSession.getMapper(BookDao.class);
		
		rdao.returnCheckDao(rent, curDate, risbn);
		
		bdao.listCheckDao(amount, risbn);
		
		model.addAttribute("rent", rent);
		
		
		return "manager/book_return";
	}
	
	@RequestMapping(value="/manager/mngBoard")
	public String mngBoard(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		
		String smngid = (String)session.getAttribute("smngid");
		
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		if(smngid != null) {
			ManagerDto managerDto = dao.managerInfoDao(smngid);
			
			model.addAttribute("managerDto", managerDto);
			model.addAttribute("smngid",smngid);
			
		} else {
			model.addAttribute("smngid", "Guest");
		}
		
		return "manager/mngBoard";
	}
	
	@RequestMapping(value="/manager/mngBoard_list")
	public String mngBoard_list(Model model) {
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		ArrayList<BoardDto> dtos = dao.listDao();
		
		model.addAttribute("list", dtos);
		
		return "manager/mngBoard_list";
	}
	
	@RequestMapping(value = "/manager/mngLoginOk", method=RequestMethod.POST)
	public String mngLoginOk(HttpServletRequest request, Model model) {
		
		String mngid = request.getParameter("mngid");
		String mngpw = request.getParameter("mngpw");
		
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		int checkId = dao.checkIdDao(mngid);//1이 반환 되면 아이디가 존재, 0이 반환되면 아이디가 존재 안함
		
		int checkIdPw = dao.checkIdPwDao(mngid, mngpw);
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		
		if(checkIdPw == 1) {
			
			ManagerDto managerDto = dao.managerInfoDao(mngid);// 로그인한 아이디의 모든 정보를 dto로 변환
			
			//비밀번호 체크
			HttpSession session = request.getSession();
			
			String managerid = managerDto.getMngid();
			String managername = managerDto.getMngname();
			
			
			session.setAttribute("smngid", managerid);
			session.setAttribute("smngname", managername);
			
			
			model.addAttribute("mngid", managerid);
			model.addAttribute("mngname", managername);
		}
		
		return "manager/mngLoginOk";
	}
	
	@RequestMapping(value = "/manager/mngLogout")
	public String mngLogout(HttpSession session) {
		
		session.invalidate();
		
		return "manager/mngLogin";
	}
	@RequestMapping(value="/manager/mngInfoModify")
	public String mngInfoModify(HttpServletRequest request, Model model) {
		
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		HttpSession session = request.getSession();
		
		String smngid = (String)session.getAttribute("smngid");
		
		ManagerDto managerDto = dao.managerInfoDao(smngid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("managerDto", managerDto);
		
		return "manager/mngInfoModify";
	}
	
	@RequestMapping(value="/manager/mngInfoModifyOk")
	public String mngInfoModifyOk(HttpServletRequest request, Model model) {
		
		String mngid = request.getParameter("mngid");
		String mngpw = request.getParameter("mngpw");
		String mngname = request.getParameter("mngname");
		String mngaddr = request.getParameter("mngaddr");
		String mngtel = request.getParameter("mngtel");
		String mngemail = request.getParameter("mngemail");
		
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		dao.infoModifyDao(mngpw, mngname, mngaddr, mngtel, mngemail, mngid);
		
		HttpSession session = request.getSession();
		
		String smngid = (String)session.getAttribute("smngid");
		
		ManagerDto managerDto = dao.managerInfoDao(smngid);//정보를 수정한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("managerDto", managerDto);
		
		return "manager/mngInfoModifyOk";
	}
	@RequestMapping(value="/manager/mngDelete")
	public String mngDelete(HttpServletRequest request, Model model) {
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		HttpSession session = request.getSession();
		
		String smngid = (String)session.getAttribute("smngid");
		
		ManagerDto managerDto = dao.managerInfoDao(smngid);//로그인한 아이디의 모든 정보를 dto로 반환
		
		model.addAttribute("managerDto", managerDto);
		
		return "manager/mngDelete";
	}
	
	@RequestMapping(value="/manager/mngDeleteOk")
	public String mngDeleteOk(HttpServletRequest request, Model model) {
		String mngid = request.getParameter("mngid");
		String mngpw = request.getParameter("mngpw");
		
		
		ManagerDao dao = sqlSession.getMapper(ManagerDao.class);
		
		dao.managerDeleteDao(mngid, mngpw);
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		
		return "manager/mngDeleteOk";
	}
	
	@RequestMapping(value="/manager/mngBoard_write", method=RequestMethod.POST)
	public String mngBoard_write(HttpServletRequest request, Model model) {
		
		String bmid = request.getParameter("bmid");
		String bmtitle = request.getParameter("bmtitle");
		String bmcontent = request.getParameter("bmcontent");
		
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.writeDao(bmid, bmtitle, bmcontent);
		
		return "redirect:mngBoard_list";
	}
	
	@RequestMapping(value = "/manager/mngBoard_view")
	public String board_view(HttpServletRequest request, Model model) {
		
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		BoardDto boardDto = dao.contentViewDao(bmnum);
		
		model.addAttribute("contentDto", boardDto);
		
		String bmid = boardDto.getBmid();
		
		model.addAttribute("boardID", bmid);
		
		return "manager/mngBoard_view";
	}
	
	@RequestMapping(value="/manager/mngBoard_delete")
	public String mngBoard_delete(HttpServletRequest request, Model model) {
		
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.deleteDao(bmnum);
		
		return "redirect:mngBoard_list";
	}
	
	@RequestMapping(value = "/manager/mngBoard_modify")
	public String  mngBoard_modify(HttpServletRequest request, Model model) {
		
		String bmid = request.getParameter("bmid");
		String bmcontent = request.getParameter("bmcontent");
		String bmtitle = request.getParameter("bmtitle");
		String bmnum = request.getParameter("bmnum");
		
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		dao.qmodifyDao(bmid, bmtitle, bmcontent, bmnum);
		
		return "redirect:mngBoard_list";
	}
	
	
	@RequestMapping(value="/manager/book_registerOk", method=RequestMethod.POST)
	public String book_registerOK(HttpServletRequest request, Model model, @RequestPart MultipartFile uploadFiles) throws Exception, Exception {
		
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String pdate = request.getParameter("pdate");
		String image = request.getParameter("image");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String filename = request.getParameter("uploadFiles");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		int checkBook = dao.checkBookDao(isbn);//도서대여 여부체크(1이면 도서가 존재, 0이면 도서가 존재하지 않음)
		
		if(uploadFiles.isEmpty() && checkBook==0) { //파일 첨부 여부를 판단(true or false)'
			dao.registerDao(isbn, title, author, publisher, pdate, image, price, description);
	
		}else if(checkBook==0){
			if(image == null) {
				dao.registerDao(isbn, title, author, publisher, pdate, image, price, description);
			}else
				dao.registerDao(isbn, title, author, publisher, pdate, image, price, description);
			ArrayList<BookDto> bdto = dao.bookListDao();
			
			String orifname = uploadFiles.getOriginalFilename();//원래 파일의 이름 가져오기
			String fextension = FilenameUtils.getExtension(orifname).toLowerCase();//확장자 가져오기(소문자로 변환)
			String furl = "D:\\springboot_workspace\\BookManagementProject\\src\\main\\resources\\static\\uploadfiles\\";
			String fname;//변경된 파일의 이름(서버에 저장되는 파일의 이름)
			String url = "D:/springboot_workspace/BookManagementProject/src/main/resources/static/uploadfiles/";
			File destinationFile;//java.io의 파일관련 클래스
			
			do {
				fname = RandomStringUtils.randomAlphanumeric(32) + "." + fextension;
				//영문대소문자와 숫자가 혼합된 랜덤 32자의 파일이름을 생성한 후 확장자 연결하여 서버에 저장될 파일의 이름 생성			
				destinationFile = new File(furl+fname);
				}while(destinationFile.exists());//같은 이름의 파일이 저장소에 존재하면 true 출력
				
				destinationFile.getParentFile().mkdir();
				uploadFiles.transferTo(destinationFile);
				
				dao.fileInsertDao(isbn, fname, orifname, furl, fextension);
				model.addAttribute("fname", fname);
				model.addAttribute("fextension", fextension);
				
		}

		model.addAttribute("isbn", isbn);
		model.addAttribute("title", title);
		model.addAttribute("author", author);
		model.addAttribute("publisher", publisher);
		model.addAttribute("pdate", pdate);
		model.addAttribute("image", image);
		model.addAttribute("price", price);
		model.addAttribute("description", description);
		
		
			
		
		model.addAttribute("checkBook", checkBook);//checkBook값이 1(존재) 또는 0(없음)이 전송
		
		return "manager/book_registerOk";
	}
	@RequestMapping(value="/manager/mngBook_list")
	public String mngBook_list(HttpServletRequest request, Model model) {
		String searchKeyword = request.getParameter("searchKeyword");
		String searchOption = request.getParameter("searchOption");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		ArrayList<BookDto> dtos = null;
		
		if(searchKeyword == null) {
			dtos = dao.bookListDao();
		}else if(searchOption.equals("isbn")) {
			dtos = dao.isbnSearchlist(searchKeyword);
		} else if(searchOption.equals("title")) {
			dtos = dao.titleSearchlist(searchKeyword);
		} else if(searchOption.equals("author")) {
			dtos = dao.authorSearchlist(searchKeyword);
		} else if(searchOption.equals("publisher")) {
			dtos = dao.publisherSearchlist(searchKeyword);
		}
		
		int listCount = dtos.size();//게시판 글목록의 글 개수
		
		model.addAttribute("bookList", dtos);
		model.addAttribute("listCount", listCount);
		
		return "manager/mngBook_list";
	}
	@RequestMapping(value = "/manager/mngBook_view")
	public String mngBook_view(HttpServletRequest request, Model model) {
		
		String isbn = request.getParameter("isbn");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		BookDto bookDto = dao.bookViewDao(isbn);
		BookFileDto fbDto = dao.GetFileInfoDao(isbn);
		
		model.addAttribute("bookDto", bookDto);
		model.addAttribute("fbDto", fbDto);
		
		return "manager/mngBook_view";
	}
	@RequestMapping(value="/manager/mngBook_delete")
	public String mngBook_delete(HttpServletRequest request, Model model) {
		
		String isbn = request.getParameter("isbn");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		dao.bookDeleteDao(isbn);
		
		return "redirect:mngBook_list";
	}
	@RequestMapping(value = "/manager/mngBook_modify")
	public String  mngBook_modify(HttpServletRequest request, Model model) {
		
		String isbn = request.getParameter("isbn");
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String pdate = request.getParameter("pdate");
		String price = request.getParameter("price");
		String image = request.getParameter("image");
		String description = request.getParameter("description");
		
		BookDao dao = sqlSession.getMapper(BookDao.class);
		
		dao.bookUpdateDao(title, author, publisher, pdate, image, price, description, isbn);
		
		return "redirect:mngBook_list";
	}
	
}