package com.daycaree.vo;

public class WarningVO {
	private int w_number;
	private String w_name;
	private String w_address;
	private String w_loca;
	private String w_type;
	private String w_leader;
	private String w_boss;
	private String w_act;
	private String w_content;
	public int getW_number() {
		return w_number;
	}
	public void setW_number(int w_number) {
		this.w_number = w_number;
	}
	public String getW_name() {
		return w_name;
	}
	public void setW_name(String w_name) {
		this.w_name = w_name;
	}
	public String getW_address() {
		return w_address;
	}
	public void setW_address(String w_address) {
		this.w_address = w_address;
	}
	public String getW_loca() {
		return w_loca;
	}
	public void setW_loca(String w_loca) {
		this.w_loca = w_loca;
	}
	public String getW_type() {
		return w_type;
	}
	public void setW_type(String w_type) {
		this.w_type = w_type;
	}
	public String getW_leader() {
		return w_leader;
	}
	public void setW_leader(String w_leader) {
		this.w_leader = w_leader;
	}
	public String getW_boss() {
		return w_boss;
	}
	public void setW_boss(String w_boss) {
		this.w_boss = w_boss;
	}
	public String getW_act() {
		return w_act;
	}
	public void setW_act(String w_act) {
		this.w_act = w_act;
	}
	public String getW_content() {
		return w_content;
	}
	public void setW_content(String w_content) {
		this.w_content = w_content;
	}
	@Override
	public String toString() {
		return "WarningVO [w_number=" + w_number + ", w_name=" + w_name + ", w_address=" + w_address + ", w_loca="
				+ w_loca + ", w_type=" + w_type + ", w_leader=" + w_leader + ", w_boss=" + w_boss + ", w_act=" + w_act
				+ ", w_content=" + w_content + "]";
	}
	
	
}
