package com.kh.app.free.vo;

public class FreeVo {
	private String no;
	private String writer;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String changeName;

	public FreeVo() {
	}

	public FreeVo(String no, String writer, String title, String content, String enrollDate, String delYn,
			String changeName) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.changeName = changeName;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
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

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	@Override
	public String toString() {
		return "FreeVo [no=" + no + ", writer=" + writer + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + ", delYn=" + delYn + ", changeName=" + changeName + "]";
	}
}