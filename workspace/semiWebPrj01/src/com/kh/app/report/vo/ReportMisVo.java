package com.kh.app.report.vo;

public class ReportMisVo {
	
	private String no;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String misDate;
	private String area;
	private String writer;

	public ReportMisVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReportMisVo(String reportNo, String title, String content, String enrollDate, String delYn, String misDate,
			String area, String writer) {
		super();
		this.no = reportNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.misDate = misDate;
		this.area = area;
		this.writer = writer;

	}
	@Override
	public String toString() {
		return "ReportMisVo [reportNo=" + no + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + ", delYn=" + delYn + ", misDate=" + misDate + ", area=" + area + ", writer=" + writer
				+ "]";
	}
	public String getNo() {
		return no;
	}
	public void setNo(String reportNo) {
		this.no = reportNo;
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
	
}