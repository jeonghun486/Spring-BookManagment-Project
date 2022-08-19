/**
 * 
 */
 

 function rntCheck(){
	
	
	if(document.rent_form.from_date.value.length == 0){
		alert("대여일을 적어주세요");
		rent_form.from_date.focus();
		return;
	}
	if(document.rent_form.by_date.value.length == 0){
		alert("반납일을 적어주세요");
		rent_form.by_date.focus();
		return;
	}
	
	document.rent_form.submit();
}