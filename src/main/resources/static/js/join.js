/**
 * 
 */
 
 /* 가입 양식 체크 */
 
 function joinCheck(){
	
	if(document.join_form.memid.value.length == 0){
		alert("아이디는 필수 입력사항 입니다.");
		join_form.memid.focus();
		return;
	}
	
	if(document.join_form.memid.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다.");
		join_form.memid.focus();
		return;
	}
	
	if(document.join_form.mempw.value.length == 0){
		alert("비밀번호는 필수 입력사항 입니다.");
		join_form.mempw.focus();
		return;
	}
	
	if(document.join_form.mempw.value.length < 6){
		alert("비밀번호는 6글자 이상이어야 합니다.");
		join_form.mempw.focus();
		return;
	}
	
	if(document.join_form.mempw_check.value.length == 0){
		alert("비밀번호는 체크는 필수 입력사항 입니다.");
		join_form.mempw_check.focus();
		return;
	}
	
	if(document.join_form.mempw_check.value != document.join_form.mempw.value){
		alert("비밀번호가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		join_form.mempw.focus();
		return;
	}
	
	if(document.join_form.memname.value.length == 0){
		alert("이름는 필수 입력사항 입니다.");
		join_form.memname.focus();
		return;
	}
	
	if(document.join_form.mememail.value.length == 0){
		alert("이메일는 필수 입력사항 입니다.");
		join_form.mememail.focus();
		return;
	}
	
	document.join_form.submit();
	
}

 function mngJoinCheck(){
	
	if(document.join_form.mngid.value.length == 0){
		alert("아이디는 필수 입력사항 입니다.");
		join_form.mngid.focus();
		return;
	}
	
	if(document.join_form.mngid.value.length < 4){
		alert("아이디는 4글자 이상이어야 합니다.");
		join_form.mngid.focus();
		return;
	}
	
	if(document.join_form.mngpw.value.length == 0){
		alert("비밀번호는 필수 입력사항 입니다.");
		join_form.mngpw.focus();
		return;
	}
	
	if(document.join_form.mngpw.value.length < 6){
		alert("비밀번호는 6글자 이상이어야 합니다.");
		join_form.mngpw.focus();
		return;
	}
	
	if(document.join_form.mngpw_check.value.length == 0){
		alert("비밀번호는 체크는 필수 입력사항 입니다.");
		join_form.mngpw_check.focus();
		return;
	}
	
	if(document.join_form.mngpw_check.value != document.join_form.mngpw.value){
		alert("비밀번호가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		join_form.mngpw.focus();
		return;
	}
	
	if(document.join_form.mngname.value.length == 0){
		alert("이름는 필수 입력사항 입니다.");
		join_form.mngname.focus();
		return;
	}
	
	if(document.join_form.mngemail.value.length == 0){
		alert("이메일는 필수 입력사항 입니다.");
		join_form.mngemail.focus();
		return;
	}
	
	document.join_form.submit();
	
}

	
		
