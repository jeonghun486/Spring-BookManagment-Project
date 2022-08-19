/**
 * 
 */
 
 function loginCheck(){
	
	if(document.login_form.memid.value.length == 0){
		alert("로그인 하시려는 아이디를 입력해주세요.");
		login_form.memid.focus();
		return;
	}
	
	if(document.login_form.mempw.value.length == 0){
		alert("비밀번호를 입력해주세요.");
		login_form.mempw.focus();
		return;
	}
	
	document.login_form.submit();
}

function mngLoginCheck(){
	
	if(document.login_form.mngid.value.length == 0){
		alert("로그인 하시려는 아이디를 입력해주세요.");
		login_form.mngid.focus();
		return;
	}
	
	if(document.login_form.mngpw.value.length == 0){
		alert("비밀번호를 입력해주세요.");
		login_form.mngpw.focus();
		return;
	}
	
	document.login_form.submit();
}