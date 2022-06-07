package com.spellhaven.profileHome.dto;

public class MemberDto {
	
	private String mid; // 가입한 아이디
	private String mpw; // 가입한 비번
	private String mname; // 가입한 놈 이름
	private String memail; // 가입한 놈 아이디
	private String mdate; // 가입한 날짜 시간 (이건 유저입력 안 받고 자동으로 sysdate)
	
	public MemberDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MemberDto(String mid, String mpw, String mname, String memail, String mdate) {
		super();
		this.mid = mid;
		this.mpw = mpw;
		this.mname = mname;
		this.memail = memail;
		this.mdate = mdate;
	}

	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpw() {
		return mpw;
	}
	public void setMpw(String mpw) {
		this.mpw = mpw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	
	

}
