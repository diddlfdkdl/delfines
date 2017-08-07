package com.delfines.member;

public class MemberDataBean {
	private int member_num;
	private String member_id;
	private String member_pwd;
	private String member_name;
	private String member_tel;
	private String member_post1;
	private String member_post2;
	private String member_addr1;
	private String member_addr2;
	private String sns;
	
	public MemberDataBean() {
		super();
	}

	public MemberDataBean(int member_num, String member_id, String member_pwd, String member_name, String member_tel,
			String member_post1, String member_post2, String member_addr1, String member_addr2, String sns) {
		super();
		this.member_num = member_num;
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_tel = member_tel;
		this.member_post1 = member_post1;
		this.member_post2 = member_post2;
		this.member_addr1 = member_addr1;
		this.member_addr2 = member_addr2;
		this.sns = sns;
	}

	@Override
	public String toString() {
		return "MemberDataBean [member_num=" + member_num + ", member_id=" + member_id + ", member_pwd=" + member_pwd
				+ ", member_name=" + member_name + ", member_tel=" + member_tel + ", member_post1=" + member_post1
				+ ", member_post2=" + member_post2 + ", member_addr1=" + member_addr1 + ", member_addr2=" + member_addr2
				+ ", sns=" + sns + "]";
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public String getMember_post1() {
		return member_post1;
	}

	public void setMember_post1(String member_post1) {
		this.member_post1 = member_post1;
	}

	public String getMember_post2() {
		return member_post2;
	}

	public void setMember_post2(String member_post2) {
		this.member_post2 = member_post2;
	}

	public String getMember_addr1() {
		return member_addr1;
	}

	public void setMember_addr1(String member_addr1) {
		this.member_addr1 = member_addr1;
	}

	public String getMember_addr2() {
		return member_addr2;
	}

	public void setMember_addr2(String member_addr2) {
		this.member_addr2 = member_addr2;
	}

	public String getSns() {
		return sns;
	}

	public void setSns(String sns) {
		this.sns = sns;
	}
}
