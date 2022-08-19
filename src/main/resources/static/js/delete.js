/**
 * 
 */
 
 /* 가입 양식 체크 */
 
 function deleteCheck(){
	
	
	if(document.delete_form.mempw_check.value.length == 0){
		alert("비밀번호를 입력해주세요");
		delete_form.mempw_check.focus();
		return;
	}
	
	if(document.delete_form.mempw_check.value != document.delete_form.mempw.value){
		alert("비밀번호가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		delete_form.mempw_check.focus();
		return;
	}

	document.delete_form.submit();
	
}

 function mngDeleteCheck(){
	
	
	if(document.delete_form.mngpw_check.value.length == 0){
		alert("비밀번호를 입력해주세요");
		delete_form.mngpw_check.focus();
		return;
	}
	
	if(document.delete_form.mngpw_check.value != document.delete_form.mngpw.value){
		alert("비밀번호가 일치하지 않습니다. 비밀번호 체크사항을 다시 확인해주세요.");
		delete_form.mngpw_check.focus();
		return;
	}

	document.delete_form.submit();
	
}

	
		
