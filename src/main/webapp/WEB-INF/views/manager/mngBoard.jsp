<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/update.js"></script>
<title>게시판 글 쓰기</title>
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
				<tr height="534">
					<td bgcolor="C7D3ED" align="center">
						<table>
							<form action="mngBoard_write" method="post" name="board_form">
								<tr>
									<td><span class="content_text">작성자  &nbsp;</span></td>
									<td>
									<%
									String smngid = (String)session.getAttribute("smngid");
									if(smngid != null){
									%>
									<input  class="input_box" type="text" name="bmid" value="${managerDto.mngid }" readonly>
									<%
									}else{
									%>
									<input  class="input_box" type="text" name="bmid" value="${smngid }" readonly>
									<%
									}
									%>
									</td>
								</tr>
								<tr>
									<td><span class="content_text">제목  &nbsp;</span></td>
									<td><input  class="input_title" type="text" name="bmtitle" placeholder="제목을 입력해주세요"></td>
								</tr>
								<tr>
									<td valign="middle"><span class="content_text">내용  &nbsp;</span></td>
									<td>
										<textarea class="content" rows="5" cols="25" name="bmcontent" placeholder="내용을 입력해주세요" ></textarea>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="right">
										<input class="button" type="button" value="글쓰기" onclick="boardCheck()">&nbsp;&nbsp;
										<input class="button" type="button" value="목록" onclick="location.href='mngBoard_list'">
									</td>
								</tr>
							</form>
						</table>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
	
	
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>