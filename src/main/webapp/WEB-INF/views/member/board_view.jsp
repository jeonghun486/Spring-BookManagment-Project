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
<title>** Profile Web</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
	<center>
	<table width="70%" cellspacing="0" border="0" cellpadding="20">
		
		<tr>
			<td align="center">
				<span class="index_title02">I'm Jeonghun Ju, a developer who wants a development job. Please call me back</span>
			</td>
		</tr>
		<tr>
			<table width="70%" cellspacing="0" border="0" cellpadding="10">
				<tr height="534">
					<td bgcolor="C7D3ED" align="center">
						<table>
							<form action="board_modify" method="post" name="board_form">
								<input type = "hidden" name="bmnum" value="${contentDto.bmnum }">
								<tr>
									<td><span class="content_text">작성자 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="bmid" value="${contentDto.bmid }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">작성날짜 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="bmdate" value="${contentDto.bmdate }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">제목 : &nbsp;</span></td>
									<td><input  class="input_title" type="text" name="bmtitle" value="${contentDto.bmtitle }"></td>
								</tr>
								
								<tr>
									<td valign="middle"><span class="content_text">내용 : &nbsp;</span></td>
									<td>
										<textarea class="content" rows="5" cols="25" name="bmcontent">${contentDto.bmcontent }</textarea>
									</td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<% 
											String smemid = (String) session.getAttribute("smemid");
											String bmid = request.getAttribute("boardID").toString();
											if (smemid == null){
												smemid="Guest";
											}
											if((smemid != null) && (smemid.equals(bmid)) || (smemid.equals("admin"))){
										%>
										<input class="button" type="button" value="글 수정" onclick="boardCheck()">
										<input class="button" type="button" value="글 삭제" onclick="location.href='board_delete?bmnum='+${contentDto.bmnum}">
										<%
											}
										%>
										<input class="button" type="button" value="글 목록" onclick="location.href='board_list'">&nbsp;
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