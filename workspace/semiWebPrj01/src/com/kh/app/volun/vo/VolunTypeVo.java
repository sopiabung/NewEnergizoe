package com.kh.app.volun.vo;

public class VolunTypeVo {
	
	private String code;
	private String type;
	
	public VolunTypeVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public VolunTypeVo(String code, String type) {
		super();
		this.code = code;
		this.type = type;
	}

	@Override
	public String toString() {
		return "VolunTypeVo [code=" + code + ", type=" + type + "]";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
