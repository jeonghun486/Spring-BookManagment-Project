<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/update.js"></script>
<title>게시판 자세히 보기</title>
</head>
<body>
	<%@ include file="../include/mngHeader.jsp" %>
	<center>
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		
		<tr>
			<td align="center">
				<span class="index_title02"></span>
			</td>
		</tr>
		<tr>
			<table width="70%" cellspacing="0" border="0" cellpadding="10">
				<tr height="1000">
					<td class="board_form">
					<hr color="10459e" width="80%">
						<center><span class="content_text">고객문의 게시판</span></center>
						<hr color="10459e" width="80%"><br><br>
						<table align="center" width="80%">
							<form action="board_modify" method="post" name="board_form">
								<input type = "hidden" name="bmnum" value="${bmView.bmnum }">
								<tr>
									<td><span class="content_text">작성자 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="bmid" value="${bmView.bmid }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">작성날짜 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="bmdate" value="${bmView.bmdate }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">제목 : &nbsp;</span></td>
									<td><input  class="input_title" type="text" name="bmtitle" value="${bmView.bmtitle }"></td>
								</tr>
								
								<tr>
									<td valign="middle"><span class="content_text">내용 : &nbsp;</span></td>
									<td>
										<textarea class="content" rows="5" cols="25" name="bmcontent">${bmView.bmcontent }</textarea>
									</td>
								</tr>
								
								<tr>
									<td colspan="3" align="right">
										<% 
											String smngid = (String) session.getAttribute("smngid");
											String bmid = request.getAttribute("boardID").toString();
											if (smngid == null){
												smngid="Guest";
											}
											if((smngid != null) && (smngid.equals(bmid)) || (smngid.equals("manager"))){
										%>
											<input class="button" type="button" value="글 수정" onclick="mngBoardCheck()">
											<input class="button" type="button" value="글 삭제" onclick="location.href='mngBoard_delete?bmnum='+${bmView.bmnum}">
										<%
											}else if((smngid != null || (smngid.equals("manaager")))){
										%>
											<input class="button" type="button" value="글 삭제" onclick="location.href='mngBoard_delete?bmnum='+${bmView.bmnum}">
										<%
											}
										%>
											<input class="button" type="button" value="글 목록" onclick="location.href='mngBoard_list'">&nbsp;
									</td>
								</tr>
							</form>
						</table><br><br>
						<hr color="10459e" width="80%">
						<center><span class="content_text" >댓글 내용</span></center>
						<hr color="10459e" width="80%"><br><br>
						<!-- 해당 글의 댓글 리스트 출력 -->
						
					  <table border="1" cellpading="0" cellspacing="0" width="80%" align="center">
					     <c:forEach items="${rblist }" var="dto">
					     	<table class="rpy_box" align="center">
					     	<input type="hidden" name="rbnum" value="${dto.rbnum }">
					        <tr>
					           <td width="20%">
					             댓글쓴이 | ${dto.rbid }
					           </td>
					           <td align="right">
					             댓글 게시일 | ${dto.rbdate}&nbsp;&nbsp;
										
					             <input type="button" name="rpy_delete" value="X" onclick="location.href='mngRpy_delete?rbnum='+${dto.rbnum }">
					             
					      </td>
					        </tr>
					        <tr>
					           <td colspan="2">
					           	<hr color=4044ee>
					             댓글내용 | ${dto.rbcontent }
					           </td>
					        </tr>
					        </table>
					     </c:forEach><br><br>
					     <table align="center">
							<form action="mngBoard_reply" name="reply_form">
							<input type = "hidden" name="bmnum" value="${bmView.bmnum }">
								<tr>
									<td>
										<span class="rpy_title1">댓글 작성</span><br>
										<span class="rpy_title2">Comment</span>
									</td>
									<td>
										<textarea class="rbcontent" name ="rbcontent"></textarea>
									</td>
									<td>
										<input type="button" class="btn_reply" value="댓글쓰기" onclick="chk_reply()">
									</td>
								</tr>
							</form>
						</table>
					  </table><br><br>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>