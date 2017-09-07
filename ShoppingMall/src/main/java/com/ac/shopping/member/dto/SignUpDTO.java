package com.ac.shopping.member.dto;

public class SignUpDTO {
	
	//��� id
	String m_id;
	//��й�ȣ
	String pwd;
	//��й�ȣ Ȯ��
	String pwd_confirm;
	//�̸�
	String name;
	//�������
	String birth1;
	//�ּ�
	String address;
	//��ȭ��ȣ
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
