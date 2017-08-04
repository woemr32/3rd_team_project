/**
 * 
 */

function readEvt(year, month, day) {
	if (confirm(day + "일의 이벤트를 읽으시겠습니까?")) {
		location.href = "calendar.jsp?param_year=" + year
			+ "&param_month=" + month
			+ "&param_day=" + day
			+ "&pageFlag=read_form.jsp"
			+ "&num=" + num;
	} //end if	  
} //readEvt()


function writeEvt(eYear, eMonth, eDay) {
	if (confirm(eDay + "일에 이벤트를 작성하시겠습니까?")) {
		location.href = "calendar.jsp?param_year=" + eYear
			+ "&param_month=" + eMonth
			+ "&param_day=" + eDay
			+ "&pageFlag=write_form.jsp";
	} //end if
}//writeEvt()