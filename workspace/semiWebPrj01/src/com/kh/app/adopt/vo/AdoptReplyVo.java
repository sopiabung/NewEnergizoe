package com.kh.app.adopt.vo;

public class AdoptReplyVo {
	
	private String replyNo; 			//댓글번호
	private String adoptionNo2; 		//입양게시글번호
	private String replyEnrollDate;		//작성일시
	private String replyContent;		//댓글내용
	private String delYn;				//삭제여부
	private String writer;				//작성자
	public String getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(String replyNo) {
		this.replyNo = replyNo;
	}
	public String getAdoptionNo2() {
		return adoptionNo2;
	}
	public void setAdoptionNo2(String adoptionNo2) {
		this.adoptionNo2 = adoptionNo2;
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
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	@Override
	public String toString() {
		return "AdoptReplyVo [replyNo=" + replyNo + ", adoptionNo2=" + adoptionNo2 + ", replyEnrollDate="
				+ replyEnrollDate + ", replyContent=" + replyContent + ", delYn=" + delYn + ", writer=" + writer + "]";
	}
	public AdoptReplyVo(String replyNo, String adoptionNo2, String replyEnrollDate, String replyContent, String delYn,
			String writer) {
		super();
		this.replyNo = replyNo;
		this.adoptionNo2 = adoptionNo2;
		this.replyEnrollDate = replyEnrollDate;
		this.replyContent = replyContent;
		this.delYn = delYn;
		this.writer = writer;
	}
	public AdoptReplyVo() {

	}
	
		
}
