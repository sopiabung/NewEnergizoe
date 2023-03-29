package com.kh.app.animal.vo;

public class AnimalVo {
	
	private String aniNo;
	private String color;
	private String birthYear;
	private String neutYnx;
	private String weight;
	private String character;
	private String gender;
	private String name;
	private AnimalSpVo animalSpVo;
	private AnimalTVo animalTVo;
	
	public String getAniNo() {
		return aniNo;
	}
	public void setAniNo(String aniNo) {
		this.aniNo = aniNo;
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
	public AnimalSpVo getAnimalSpVo() {
		return animalSpVo;
	}
	public void setAnimalSpVo(AnimalSpVo animalSpVo) {
		this.animalSpVo = animalSpVo;
	}
	public AnimalTVo getAnimalTVo() {
		return animalTVo;
	}
	public void setAnimalTVo(AnimalTVo animalTVo) {
		this.animalTVo = animalTVo;
	}
	@Override
	public String toString() {
		return "AnimalVo [aniNo=" + aniNo + ", color=" + color + ", birthYear=" + birthYear + ", neutYnx=" + neutYnx
				+ ", weight=" + weight + ", character=" + character + ", gender=" + gender + ", name=" + name
				+ ", animalSpVo=" + animalSpVo + ", animalTVo=" + animalTVo + "]";
	}
	public AnimalVo(String aniNo, String color, String birthYear, String neutYnx, String weight, String character,
			String gender, String name, AnimalSpVo animalSpVo, AnimalTVo animalTVo) {
		super();
		this.aniNo = aniNo;
		this.color = color;
		this.birthYear = birthYear;
		this.neutYnx = neutYnx;
		this.weight = weight;
		this.character = character;
		this.gender = gender;
		this.name = name;
		this.animalSpVo = animalSpVo;
		this.animalTVo = animalTVo;
	}
	public AnimalVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
	
	
}
