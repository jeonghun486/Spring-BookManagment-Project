/**
 * 
 */
 

 function rntCheck(){
	
	
	if(document.rent_form.rntdate.value.length == 0){
		alert("대여일을 적어주세요");
		rent_form.rntdate.focus();
		return;
	}
	if(document.rent_form.rtrndate.value.length == 0){
		alert("반납일을 적어주세요");
		rent_form.rtrndate.focus();
		return;
	}
	
	document.rent_form.submit();
}