package com.kh.app.board.vo;

public class AttachmentVo {

	private String no;
	private String originName;
	private String changeName;
	private String refBoardNo;

	public AttachmentVo() {
		super();
	}

	public AttachmentVo(String no, String originName, String changeName, String refBoardNo) {
		super();
		this.no = no;
		this.originName = originName;
		this.changeName = changeName;
		this.refBoardNo = refBoardNo;
	}

	@Override
	public String toString() {
		return "AttachmentVo [no=" + no + ", originName=" + originName + ", changeName=" + changeName + ", refBoardNo="
				+ refBoardNo + "]";
	}

	public String getNo() {
		return no;
	}

	public String getOriginName() {
		return originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public String getRefBoardNo() {
		return refBoardNo;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public void setRefBoardNo(String refBoardNo) {
		this.refBoardNo = refBoardNo;
	}

}
