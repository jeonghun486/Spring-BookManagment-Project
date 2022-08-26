<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
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
							<form action="infoModifyOk" method="post" name="join_form">
								<tr>
									<td><span class="content_text">아이디 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memid"  value="${memberDto.memid }" readonly></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 : &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw" value="${memberDto.mempw }"></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 확인 : &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw_check" placeholder="비밀번호 입력."></td>
								</tr>
								<tr>
									<td><span class="content_text">이름 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname"  value="${memberDto.memname}"></td>
								</tr>
								<tr>
									<td><span class="content_text">주소 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memaddr"  value="${memberDto.memaddr}"></td>
								</tr>
								<tr>
									<td><span class="content_text">전화번호 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memtel"  value="${memberDto.memtel}"></td>
								</tr>
								<tr>
									<td><span class="content_text">이메일 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="mememail"  value="${memberDto.mememail }"></td>
								</tr>
								<tr>
									<td><span class="content_text">가입일자 : &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memdate"  value="${memberDto.memdate }" readonly></td>
								</tr>
								<tr>
									<td colspan="3">
										<input class="btn_rent" type="button" value="정보수정" onclick="joinCheck()">
										<input class="btn_rent" type="button" value="회원탈퇴" onclick="location.href='delete'">
										<input class="btn_rent" type="button" value="취소" onclick="location.href='index'">
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