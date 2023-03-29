package com.kh.app.adopt.vo;

import com.kh.app.animal.vo.AnimalVo;

public class AniadoptVo {
	
	private AdoptVo adp;
	private AnimalVo ani;
	
	public AdoptVo getAdp() {
		return adp;
	}
	public void setAdp(AdoptVo adp) {
		this.adp = adp;
	}
	public AnimalVo getAni() {
		return ani;
	}
	public void setAni(AnimalVo ani) {
		this.ani = ani;
	}
	@Override
	public String toString() {
		return "AniadoptVo [adp=" + adp + ", ani=" + ani + "]";
	}
	public AniadoptVo(AdoptVo adp, AnimalVo ani) {
		super();
		this.adp = adp;
		this.ani = ani;
	}
	public AniadoptVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	
	
}
