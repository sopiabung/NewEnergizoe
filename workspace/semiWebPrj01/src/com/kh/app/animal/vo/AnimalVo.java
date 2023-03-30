package com.kh.app.animal.vo;

public class AnimalVo {
	
	private int aniNo;
	private int typeCode;
	private int specCode;
	private String color;
	private String birthYear;
	private String neutYnx;
	private String weight;
	private String character;
	private String gender;
	private String name;
	
	public AnimalVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AnimalVo(int aniNo, int typeCode, int specCode, String color, String birthYear, String neutYnx,
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
	@Override
	public String toString() {
		return "AnimalVo [aniNo=" + aniNo + ", typeCode=" + typeCode + ", specCode=" + specCode + ", color=" + color
				+ ", birthYear=" + birthYear + ", neutYnx=" + neutYnx + ", weight=" + weight + ", character="
				+ character + ", gender=" + gender + ", name=" + name + "]";
	}
	public int getAniNo() {
		return aniNo;
	}
	public void setAniNo(int aniNo) {
		this.aniNo = aniNo;
	}
	public int getTypeCode() {
		return typeCode;
	}
	public void setTypeCode(int typeCode) {
		this.typeCode = typeCode;
	}
	public int getSpecCode() {
		return specCode;
	}
	public void setSpecCode(int specCode) {
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
	

	
}
