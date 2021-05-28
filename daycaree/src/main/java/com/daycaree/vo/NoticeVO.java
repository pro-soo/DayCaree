package com.daycaree.vo;

public class NoticeVO {
	private String n_title;
	private String n_content;
	private String n_date;
	private int n_postnum;
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public String getN_date() {
		return n_date;
	}
	public void setN_date(String n_date) {
		this.n_date = n_date;
	}
	public int getN_postnum() {
		return n_postnum;
	}
	public void setN_postnum(int n_postnum) {
		this.n_postnum = n_postnum;
	}
	@Override
	public String toString() {
		return "NoticeVO [n_title=" + n_title + ", n_content=" + n_content + ", n_date=" + n_date + ", n_postnum="
				+ n_postnum + "]";
	}
	
	
}
