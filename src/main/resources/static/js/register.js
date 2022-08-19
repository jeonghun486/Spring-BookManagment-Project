/**
 * 
 */
 
 /* 가입 양식 체크 */
 
 function regCheck(){
	
	if(document.reg_form.isbn.value.length == 0){
		alert("ISBN을 입력해 주세요.");
		reg_form.isbn.focus();
		return;
	}
	if(document.reg_form.title.value.length == 0){
		alert("제목을 입력해 주세요.");
		reg_form.title.focus();
		return;
	}
	if(document.reg_form.author.value.length == 0){
		alert("저자를 입력해 주세요.");
		reg_form.author.focus();
		return;
	}
	if(document.reg_form.publisher.value.length == 0){
		alert("출판사를 입력해 주세요.");
		reg_form.publisher.focus();
		return;
	}
	if(document.reg_form.pdate.value.length == 0){
		alert("출판일을 입력해 주세요.");
		reg_form.pdate.focus();
		return;
	}
	if(document.reg_form.image.value.length == 0){
		alert("이미지링크 입력해 주세요.");
		reg_form.image.focus();
		return;
	}
	if(document.reg_form.price.value.length == 0){
		alert("가격을 입력해 주세요.");
		reg_form.price.focus();
		return;
	}
	if(document.reg_form.description.value.length == 0){
		alert("책 소개를 입력해 주세요.");
		reg_form.description.focus();
		return;
	}
	
	document.reg_form.submit();
	
}