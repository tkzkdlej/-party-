package com.human.springboot;

import lombok.Data;

@Data
public class BCDTO {
	int Bcoment_num;
	int Board_num;
	String BC_writer;
	String BC_create_date;
	String BC_update_date;
	String BC_content;
	public int getBcoment_num() {
		return Bcoment_num;
	}
	public void setBcoment_num(int bcoment_num) {
		Bcoment_num = bcoment_num;
	}
	public int getBoard_num() {
		return Board_num;
	}
	public void setBoard_num(int board_num) {
		Board_num = board_num;
	}
	public String getBC_writer() {
		return BC_writer;
	}
	public void setBC_writer(String bC_writer) {
		BC_writer = bC_writer;
	}
	public String getBC_create_date() {
		return BC_create_date;
	}
	public void setBC_create_date(String bC_create_date) {
		BC_create_date = bC_create_date;
	}
	public String getBC_update_date() {
		return BC_update_date;
	}
	public void setBC_update_date(String bC_update_date) {
		BC_update_date = bC_update_date;
	}
	public String getBC_content() {
		return BC_content;
	}
	public void setBC_content(String bC_content) {
		BC_content = bC_content;
	}
	
}
