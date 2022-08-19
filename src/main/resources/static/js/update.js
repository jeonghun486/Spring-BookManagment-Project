/**
 * 
 */
 
 function boardCheck(){
	
	
	if(document.board_form.bmtitle.value.length == 0){
		alert("제목을 적어주세요");
		board_form.bmtitle.focus();
		return;
	}
	
	if(document.board_form.bmcontent.value.length == 0){
		alert("내용을 적어주세요!");
		board_form.bmcontent.focus();
		return;
	}
	
	document.board_form.submit();
}

 function mngBoardCheck(){
	
	
	if(document.board_form.bmtitle.value.length == 0){
		alert("제목을 적어주세요");
		board_form.bmtitle.focus();
		return;
	}
	
	if(document.board_form.bmcontent.value.length == 0){
		alert("내용을 적어주세요!");
		board_form.bmcontent.focus();
		return;
	}
	
	document.board_form.submit();
}

 function mngBookCheck(){
	
	
	if(document.book_form.title.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.title.focus();
		return;
	}
	if(document.book_form.author.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.author.focus();
		return;
	}
	if(document.book_form.publisher.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.publisher.focus();
		return;
	}
	if(document.book_form.pdate.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.pdate.focus();
		return;
	}
	if(document.book_form.price.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.price.focus();
		return;
	}
	if(document.book_form.image.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.image.focus();
		return;
	}
	if(document.book_form.description.value.length == 0){
		alert("ISBN을 적어주세요");
		book_form.description.focus();
		return;
	}
	
	document.book_form.submit();
}