package com.kh.app.adopt.vo;

import com.kh.app.animal.vo.AnimalVo;
import com.kh.app.member.vo.MemberVo;

public class AniadoptVo {
	
	private String adpNo;
	private String title;
	private String content;
	private String enrollDate;
	private String delYn;
	private String adpDate;
	private String enterDate;
	private String name;
	private String hp;
	private String address;
	private String email;
	private AnimalVo ani;
	private MemberVo mv;
	
	public String getAdpNo() {
		return adpNo;
	}
	public void setAdpNo(String adpNo) {
		this.adpNo = adpNo;
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
	public String getAdpDate() {
		return adpDate;
	}
	public void setAdpDate(String adpDate) {
		this.adpDate = adpDate;
	}
	public String getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(String enterDate) {
		this.enterDate = enterDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public AnimalVo getAni() {
		return ani;
	}
	public void setAni(AnimalVo ani) {
		this.ani = ani;
	}
	public MemberVo getMv() {
		return mv;
	}
	public void setMv(MemberVo mv) {
		this.mv = mv;
	}
	@Override
	public String toString() {
		return "AniadoptVo [adpNo=" + adpNo + ", title=" + title + ", content=" + content + ", enrollDate=" + enrollDate
				+ ", delYn=" + delYn + ", adpDate=" + adpDate + ", enterDate=" + enterDate + ", name=" + name + ", hp="
				+ hp + ", address=" + address + ", email=" + email + ", ani=" + ani + ", mv=" + mv + "]";
	}
	public AniadoptVo(String adpNo, String title, String content, String enrollDate, String delYn, String adpDate,
			String enterDate, String name, String hp, String address, String email, AnimalVo ani, MemberVo mv) {
		super();
		this.adpNo = adpNo;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.adpDate = adpDate;
		this.enterDate = enterDate;
		this.name = name;
		this.hp = hp;
		this.address = address;
		this.email = email;
		this.ani = ani;
		this.mv = mv;
	}
	public AniadoptVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
		
	
}
