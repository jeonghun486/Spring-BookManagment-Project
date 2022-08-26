/**
 * 
 */
 window.onload = () => {
	now = new Date();
										
	var year = now.getFullYear();	//연도
	var month = now.getMonth()+1;   // 월    
	var day = now.getDate();  //일
										
	var rent_date = document.getElementById('rdate').innerHTML;
	//var rent_date = document.getElementsByTagName('td')[29].childNodes[0].nodeValue;
	var rdate_arr = rent_date.split("-");
	var rDate = new Date(rdate_arr[0], rdate_arr[1], rdate_arr[2]);
	var nDate = new Date(year, month, day);
	
	if(nDate.getTime() > rDate.getTime()){
	var btMs = nDate.getTime() - rDate.getTime() ;
	var btDay = btMs / (1000*60*60*24) ;
	document.getElementById('over_Date').innerHTML = btDay;
	}
}