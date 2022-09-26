<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/titletext.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/join.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/post.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>회원 가입</title>
</head>
<body>
	<%@ include file="../include/header.jsp" %>
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
						<form action="joinOk" method="post" name="join_form">
						<table>
								<span class="login_title"><h1>회원가입</h1></span>
								<tr>
									<td><span class="content_text">아이디  &nbsp;</span></td>
									<td>
										<input  class="input_box" type="text"  name="memid" id="memid" placeholder="아이디를 입력해주세요">
										<!-- <input class="button" type="button" value="중복확인" onclick="#"> -->
									</td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">비밀번호 확인  &nbsp;</span></td>
									<td><input  class="input_box" type="password" name="mempw_check" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">이름  &nbsp;</span></td>
									<td><input  class="input_box" type="text" name="memname" placeholder="이름을 입력해주세요"></td>
								</tr>
								<tr>
									<td><span class="content_text">주소 &nbsp;</span></td>
									<td><input class="input_box" type="text" name="mempost" id="mempost" placeholder="우편번호"></td>
									<td><input class="input_box" type="text" name="memdoro" id="memdoro" placeholder="도로명주소"></td>
									<td><input class="btn_post" type="button" onclick="sample4_execDaumPostcode()" value="우편번호/도로명 찾기"><br></td>
									
								</tr>
								<tr>
									<td><span class="content_text">상세주소 &nbsp;</span></td>
									<td colspan="2"><input class="input_post" type="text" name="memaddr" placeholder="상세주소"></td>
								</tr>
								<tr>
									<td><span class="content_text">전화번호  &nbsp;</span></td>
									<td colspan="3">&nbsp;
										<select class="select" name="slt_tel">
										    <option value="010">010</option>
										    <option value="naver.com">02</option>
										    <option value="gmail.com">031</option>
										    <option value="hanmail.net">032</option>
										    <option value="hotmail.com">043</option>
										    <option value="korea.com">051</option>
										    <option value="nate.com">053</option>
										    <option value="yahoo.com">062</option>
										</select>&nbsp;&nbsp;-
										<input class="input_tel" type="text" name="memtel1" id="mempost">-
										<input class="input_tel" type="text" name="memtel2" id="mempost">
									</td>
								</tr>
								<tr>
									<td><span class="content_text">이메일  &nbsp;</span></td>
									<td colspan="3">
										<input class="input_box" type="text" name="mememail" id="mememail" class="form_w200" value="" title="이메일 아이디" placeholder="이메일" maxlength="18" />@ 
										<input class="input_box" type="text" name="memdomain" id="memdomain" class="form_w200" value="" title="이메일 도메인" placeholder="도메인" maxlength="18"/>
										<select class="select" title="이메일 도메인 주소 선택" onclick="setEmailDomain(this.value)">
										    <option value="">-선택-</option>
										    <option value="naver.com">naver.com</option>
										    <option value="gmail.com">gmail.com</option>
										    <option value="hanmail.net">hanmail.net</option>
										    <option value="hotmail.com">hotmail.com</option>
										    <option value="korea.com">korea.com</option>
										    <option value="nate.com">nate.com</option>
										    <option value="yahoo.com">yahoo.com</option>
										</select>
									</td>
									<!-- <td><input  class="input_box" type="text" name="mememail" placeholder="이메일을 입력해주세요"></td> -->
								</tr>
								<tr height = "40"></tr>
								<script>
									function setEmailDomain(domain) {
										document.getElementById('memdomain').value = domain;
									}
								</script>
								<tr>
									<td colspan="4" align="center">
										<input class="btn_rent" type="button" value="회원가입" onclick="joinCheck()">&nbsp;&nbsp;
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