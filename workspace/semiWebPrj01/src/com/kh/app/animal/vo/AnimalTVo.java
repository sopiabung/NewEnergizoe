package com.kh.app.animal.vo;

public class AnimalTVo {
	
	private String code;
	private String type;
	
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
	@Override
	public String toString() {
		return "AnimalTVo [code=" + code + ", type=" + type + "]";
	}
	public AnimalTVo(String code, String type) {
		super();
		this.code = code;
		this.type = type;
	}
	public AnimalTVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
