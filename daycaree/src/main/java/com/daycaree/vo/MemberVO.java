package com.daycaree.vo;

public class MemberVO {
	private String m_id;
	private String m_pass;
	private String m_address;
	private int m_age;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pass() {
		return m_pass;
	}
	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	public int getM_age() {
		return m_age;
	}
	public void setM_age(int m_age) {
		this.m_age = m_age;
	}
	
	@Override
	public String toString() {
		return "MemberVO [m_id=" + m_id + ", m_pass=" + m_pass + ", m_address=" + m_address + ", m_age=" + m_age + "]";
	}
	
	
}
