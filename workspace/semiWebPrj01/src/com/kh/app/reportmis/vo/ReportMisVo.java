package com.kh.app.reportmis.vo;

public class ReportMisVo {
	
	private String reportNo;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String misDate;
	private String area;
	private String writer;
	private String sCode;
	private String aniNo;
	public ReportMisVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReportMisVo(String reportNo, String title, String content, String enrollDate, String delYn, String misDate,
			String area, String writer, String sCode, String aniNo) {
		super();
		this.reportNo = reportNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.misDate = misDate;
		this.area = area;
		this.writer = writer;
		this.sCode = sCode;
		this.aniNo = aniNo;
	}
	@Override
	public String toString() {
		return "ReportMisVo [reportNo=" + reportNo + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + ", delYn=" + delYn + ", misDate=" + misDate + ", area=" + area + ", writer=" + writer
				+ ", sCode=" + sCode + ", aniNo=" + aniNo + "]";
	}
	public String getReportNo() {
		return reportNo;
	}
	public void setReportNo(String reportNo) {
		this.reportNo = reportNo;
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
	public String getMisDate() {
		return misDate;
	}
	public void setMisDate(String misDate) {
		this.misDate = misDate;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getsCode() {
		return sCode;
	}
	public void setsCode(String sCode) {
		this.sCode = sCode;
	}
	public String getAniNo() {
		return aniNo;
	}
	public void setAniNo(String aniNo) {
		this.aniNo = aniNo;
	}
}