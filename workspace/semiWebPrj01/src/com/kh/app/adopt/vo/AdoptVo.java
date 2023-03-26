package com.kh.app.adopt.vo;

public class AdoptVo {
	
	private String adpNo;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String enterDate;
	private String memberNo;
	private String shelterNo;
	private String aniNo;
	private String adpDate;
	private String replyNo;
	private String replyEnrollDate;
	private String replyContent;
	private String writer;
	private String adoptionNo2;
	
	public String getAdpNo() {
		return adpNo;
	}
	public void setAdpNo(String adpNo) {
		this.adpNo = adpNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(String enterDate) {
		this.enterDate = enterDate;
	}
	public String getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(String memberNo) {
		this.memberNo = memberNo;
	}
	public String getShelterNo() {
		return shelterNo;
	}
	public void setShelterNo(String shelterNo) {
		this.shelterNo = shelterNo;
	}
	public String getAniNo() {
		return aniNo;
	}
	public void setAniNo(String aniNo) {
		this.aniNo = aniNo;
	}
	public String getAdpDate() {
		return adpDate;
	}
	public void setAdpDate(String adpDate) {
		this.adpDate = adpDate;
	}
	public String getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(String replyNo) {
		this.replyNo = replyNo;
	}
	public String getReplyEnrollDate() {
		return replyEnrollDate;
	}
	public void setReplyEnrollDate(String replyEnrollDate) {
		this.replyEnrollDate = replyEnrollDate;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getAdoptionNo2() {
		return adoptionNo2;
	}
	public void setAdoptionNo2(String adoptionNo2) {
		this.adoptionNo2 = adoptionNo2;
	}
	@Override
	public String toString() {
		return "AdoptVo [adpNo=" + adpNo + ", title=" + title + ", content=" + content + ", enrollDate=" + enrollDate
				+ ", delYn=" + delYn + ", enterDate=" + enterDate + ", memberNo=" + memberNo + ", shelterNo="
				+ shelterNo + ", aniNo=" + aniNo + ", adpDate=" + adpDate + ", replyNo=" + replyNo
				+ ", replyEnrollDate=" + replyEnrollDate + ", replyContent=" + replyContent + ", writer=" + writer
				+ ", adoptionNo2=" + adoptionNo2 + "]";
	}
	public AdoptVo(String adpNo, String title, String content, String enrollDate, String delYn, String enterDate,
			String memberNo, String shelterNo, String aniNo, String adpDate, String replyNo, String replyEnrollDate,
			String replyContent, String writer, String adoptionNo2) {
		super();
		this.adpNo = adpNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.enterDate = enterDate;
		this.memberNo = memberNo;
		this.shelterNo = shelterNo;
		this.aniNo = aniNo;
		this.adpDate = adpDate;
		this.replyNo = replyNo;
		this.replyEnrollDate = replyEnrollDate;
		this.replyContent = replyContent;
		this.writer = writer;
		this.adoptionNo2 = adoptionNo2;
	}
	public AdoptVo() {

	}
	
	
	
	
	
	
	
}
