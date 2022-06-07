/* 자바스크립트는 디버깅하기 ㅈㄴ 힘들다. 그러니까 정말 문제가 일어나면 ㄹㅇ "한 단계 한 단계" 차근차근 확인해 봐야 한다.
예를 들어 이번에 난 에러는 mpw_check를 pw_check라고 잘못 쳐서 생겼던 문제라,
무려 앞의 아이디랑 비밀번호 창에서는 경고창이 잘 뜨다가 그 뒤로부터는 희한하게 회원가입이 않 되는... "ㄹㅇ 개무서운 에러였다"

에러가 뜨지도 않고 그냥 가만히 죽어버리고... 자바스크립트! 나도 너 싫어 🥰*/

function joinCheck() {
	
	if(document.reg_frm.mid.value.length == 0) {
		alert("아이디는 필수 입력사항입니다.");
		reg_frm.mid.focus();
		return;		
	}
	
	if(document.reg_frm.mid.value.length < 4) {
		alert("아이디는 4글자 이상이어야 합니다.");
		reg_frm.mid.focus();
		return;		
	}
	
	if(document.reg_frm.mpw.value.length == 0) {
		alert("비밀번호는 필수 입력사항입니다.");
		reg_frm.mpw.focus();
		return;		
	}
	
	if(document.reg_frm.mpw_check.value.length == 0) {
		alert("비밀번호 체크는 필수 입력사항입니다.");
		reg_frm.mpw_check.focus();
		return;		
	}
	
	if(document.reg_frm.mpw.value != document.reg_frm.mpw_check.value) {
		alert("비밀번호가 일치하지 않습니다. 비밀번호 체크 입력 사항을 확인해주세요.");
		reg_frm.mpw.focus();
		return;		
	}
	
	if(document.reg_frm.mname.value.length == 0) {
		alert("이름은 필수 입력사항입니다.");
		reg_frm.mname.focus();
		return;		
	}
	
	if(document.reg_frm.memail.value.length == 0) {
		alert("이메일은 필수 입력사항입니다.");
		reg_frm.memail.focus();
		return;		
	}
	
	document.reg_frm.submit();
	
}

