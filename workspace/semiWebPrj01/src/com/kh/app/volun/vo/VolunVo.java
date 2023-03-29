package com.kh.app.volun.vo;

import com.kh.app.member.vo.MemberVo;

public class VolunVo {

	private String volNo; 
	private String shelNo;
	private String type;
	private String enrollDate;
	private String endTime;
	private String needPeople;
	private String content;
	private String delYn;
	private String volDate;
	private MemberVo memberVo;
	private VolunTypeVo volunType;	

	@Override
	public String toString() {
		return "vVo [volNo=" + volNo + ", shelNo=" + shelNo + ", type=" + type + ", enrollDate=" + enrollDate
				+ ", endTime=" + endTime + ", needPeople=" + needPeople + ", content=" + content + ", delYn=" + delYn
				+ ", volDate=" + volDate + "]";
	}

	public VolunVo(String volNo, String shelNo, String type, String enrollDate, String endTime, String needPeople,
			String content, String delYn, String volDate) {
		super();
		this.volNo = volNo;
		this.shelNo = shelNo;
		this.type = type;
		this.enrollDate = enrollDate;
		this.endTime = endTime;
		this.needPeople = needPeople;
		this.content = content;
		this.delYn = delYn;
		this.volDate = volDate;
	}

	public VolunVo() {
		super();
	}

	public String getVolNo() {
		return volNo;
	}

	public void setVolNo(String volNo) {
		this.volNo = volNo;
	}

	public String getShelNo() {	
		return shelNo;
	}

	public void setShelNo(String shelNo) {
		this.shelNo = shelNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getNeedPeople() {
		return needPeople;
	}

	public void setNeedPeople(String needPeople) {
		this.needPeople = needPeople;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getVolDate() {
		return volDate;
	}

	public void setVolDate(String volDate) {
		this.volDate = volDate;
	}

}
