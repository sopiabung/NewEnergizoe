package com.kh.app.animal.vo;

public class AnimalSpVo {
	
	private String code;
	private String spec;
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	@Override
	public String toString() {
		return "AnimalSpVo [code=" + code + ", spec=" + spec + "]";
	}
	public AnimalSpVo(String code, String spec) {
		super();
		this.code = code;
		this.spec = spec;
	}
	public AnimalSpVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
