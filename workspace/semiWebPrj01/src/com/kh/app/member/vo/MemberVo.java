package com.kh.app.member.vo;

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
	
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
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

	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", div=" + div + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", nick="
				+ nick + ", hp=" + hp + ", birth=" + birth + ", address=" + address + ", email=" + email + ", quitYn="
				+ quitYn + ", joinDate=" + joinDate + "]";
	}

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
	
	
	
	
	
	
	
	
	
	
}
