package com.ac.shopping.member.dto;

public class SignUpDTO {
	
	//멤버 id
	String m_id;
	//비밀번호
	String pwd;
	//비밀번호 확인
	String pwd_confirm;
	//이름
	String name;
	//생년월일
	String birth1;
	String birth2;
	String birth3;
	//주소
	String address;
	//전화번호
	int phone;
	//email
	String email;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd_confirm() {
		return pwd_confirm;
	}
	public void setPwd_confirm(String pwd_confirm) {
		this.pwd_confirm = pwd_confirm;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth1() {
		return birth1;
	}
	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}
	public String getBirth2() {
		return birth2;
	}
	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}
	public String getBirth3() {
		return birth3;
	}
	public void setBirth3(String birth3) {
		this.birth3 = birth3;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
