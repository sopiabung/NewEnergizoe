package com.kh.app.member.vo;

import java.time.LocalDateTime;

public class MemberVo {
	private String no;
	private String div;
	private String name;
	private String id;
	private String pwd;
	private String nick;
	private String hp;
	private String birth;
	private String address;
	private String email;
	private String quitYn;
	private String joinDate;
	private String confirmPwd;


	public String getNo() {
		return no;
	}


	public void setNo(String no) {
		this.no = no;
	}


	public String getDiv() {
		return div;
	}


	public void setDiv(String div) {
		this.div = div;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getNick() {
		return nick;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getHp() {
		return hp;
	}


	public void setHp(String hp) {
		this.hp = hp;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
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


	public String getQuitYn() {
		return quitYn;
	}


	public void setQuitYn(String quitYn) {
		this.quitYn = quitYn;
	}


	public String getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	
	public String getConfirmPwd() {
		return confirmPwd;
	}
	
	
	public void setConfirmPwd(String confirmPwd) {
		this.confirmPwd = confirmPwd;
	}
	


	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", div=" + div + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", nick="
				+ nick + ", hp=" + hp + ", birth=" + birth + ", address=" + address + ", email=" + email + ", quitYn="
				+ quitYn + ", joinDate=" + joinDate + "]";
	}


	public MemberVo(String no, String div, String name, String id, String pwd, String nick, String hp, String birth,
			String address, String email, String quitYn, String joinDate) {
		super();
		this.no = no;
		this.div = div;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.hp = hp;
		this.birth = birth;
		this.address = address;
		this.email = email;
		this.quitYn = quitYn;
		this.joinDate = joinDate;
	}


	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}


//	비밀번호 확인 메소드 추가..
//	public String getPwdConfirm() {
//		if (!pwd.equals(confirmPwd)) {
//			return "비밀번호와 비밀번호 확인이 일치하지 않습니다.";
//		} else {
//			return null;
//		}
//	}
//	public String getPwdConfirm() {
//              
//        // 비밀번호 확인
//        String pwd = vo.getPwd();
//        String pwdConfirm = vo.getPwdConfirm();
//        if (!pwd.equals(pwdConfirm)) {
//            return 0; // 비밀번호가 일치하지 않을 경우 0 반환
//        }
//                
//        return result;
   

	














}
