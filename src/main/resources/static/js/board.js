/**
 * 
 */
 
function boardConfirm() {
	
	
	if(document.question_frm.qname.value.length == 0) {
		alert("이름은 필수사항 입니다.");
		document.question_frm.qname.focus();
		return;		
	}
	
	if(document.question_frm.qname.value.length < 2) {
		alert("이름은 2자 이상이어야 합니다.");
		document.question_frm.qname.focus();
		return;		
	}
	
	if(document.question_frm.qcontent.value.length < 10) {
		alert("질문은 10글자 이상이어야 합니다.");
		document.question_frm.qcontent.focus();
		return;		
	}
	
	if(document.question_frm.qemail.value.length == 0) {
		alert("이메일은 필수사항 입니다.");
		document.question_frm.qemail.focus();
		return;		
	}	
	
	
	document.question_frm.submit();
}

function modifyAlert() {
	
	alert("글의 게시자만 글 수정이 가능합니다.");
	
}






