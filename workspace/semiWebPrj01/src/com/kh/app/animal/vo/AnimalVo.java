package com.kh.app.animal.vo;

public class AnimalVo {
	
	private String aniNo;
	private String typeCode;
	private String specCode;
	private String color;
	private String birthYear;
	private String neutYnx;
	private String weight;
	private String character;
	private String gender;
	private String name;
	public String getAniNo() {
		return aniNo;
	}
	public void setAniNo(String aniNo) {
		this.aniNo = aniNo;
	}
	public String getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(String typeCode) {
		this.typeCode = typeCode;
	}
	public String getSpecCode() {
		return specCode;
	}
	public void setSpecCode(String specCode) {
		this.specCode = specCode;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getBirthYear() {
		return birthYear;
	}
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}
	public String getNeutYnx() {
		return neutYnx;
	}
	public void setNeutYnx(String neutYnx) {
		this.neutYnx = neutYnx;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "AniVo [aniNo=" + aniNo + ", typeCode=" + typeCode + ", specCode=" + specCode + ", color=" + color
				+ ", birthYear=" + birthYear + ", neutYnx=" + neutYnx + ", weight=" + weight + ", character="
				+ character + ", gender=" + gender + ", name=" + name + "]";
	}
	public AnimalVo(String aniNo, String typeCode, String specCode, String color, String birthYear, String neutYnx,
			String weight, String character, String gender, String name) {
		super();
		this.aniNo = aniNo;
		this.typeCode = typeCode;
		this.specCode = specCode;
		this.color = color;
		this.birthYear = birthYear;
		this.neutYnx = neutYnx;
		this.weight = weight;
		this.character = character;
		this.gender = gender;
		this.name = name;
	}
	public AnimalVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
