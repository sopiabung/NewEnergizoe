package com.kh.app.board.vo;

public class WhatchPhotoVo {

	private String no;
	private String originName;
	private String changeName;
	private String refBoardNo;
	
	public WhatchPhotoVo() {
		super();
	}

	public WhatchPhotoVo(String no, String originName, String changeName, String refBoardNo) {
		super();
		this.no = no;
		this.originName = originName;
		this.changeName = changeName;
		this.refBoardNo = refBoardNo;
	}

	@Override
	public String toString() {
		return "FreePhoto [no=" + no + ", originName=" + originName + ", changeName=" + changeName + ", refBoardNo="
				+ refBoardNo + "]";
	}
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getChangeName() {
		return changeName;
	}
	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	public String getRefBoardNo() {
		return refBoardNo;
	}
	public void setRefBoardNo(String refBoardNo) {
		this.refBoardNo = refBoardNo;
	}
	
}
