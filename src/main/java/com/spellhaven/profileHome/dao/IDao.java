package com.spellhaven.profileHome.dao;

import java.util.ArrayList;

import com.spellhaven.profileHome.dto.BoardDto;
import com.spellhaven.profileHome.dto.MemberDto;

public interface IDao {
	
	
	// 멤버 가입 관련 DAO 메서드들
	public void joinDao(String mid, String mpw, String mname, String memail); // 회원 가입 메서드. 컨트롤러에 join()이라는 함수가 이미 있어서 넌 이렇게 ㅎㅌㅊ 같은 이름을 받는단다.
	public int checkIdDao(String mid); // 회원가입 시 기존 아이디 존재 여부 체크, 로그인 시 아이디 존재 여부 체크
	public int checkPwDao(String mid, String mpw); //로그인 시 아이디 비번 일치 여부 체크
	public MemberDto loginInfoDao(String mid); // 로그인한 회원의 모든 정보를 DB에서 가져옴
	public void infoModify(String mpw, String mname, String memail, String mid); // 회원 정보 수정해 주는 놈. (왜 인수 순서가 이러냐? 앞의 3개 값은 유저가 바꾸는 놈이고, mid는 못 바꾸지만 그래도 WHERE mid = ?로 mid가 뭔지 찾아서 해당 회원을 찾아야 DB 수정이 되니까.)
	
	// 질문게시판 관련 DAO 메서드들 (복붙띠, 하하호호.)
	public void writeDao(String qid, String qname, String qcontent, String qemail);//글쓰기
	public ArrayList<com.spellhaven.profileHome.dto.BoardDto> listDao();//리스트 가져오기
	public BoardDto viewDao(String qnum);//글 내용 보기
	public void boardModify(String qname, String qcontent, String qemail, String qnum);//글 수정하기
	public void deleteDao(String qnum);//글 삭제
	
	
	
}
