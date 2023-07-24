package com.human.springboot;

//import lombok.Data;
//
//@Data
public class QADTO {
	int board_num;
	String Btitle;
	String Bcontent;
	String B_writer;
	String B_Create_date;
	String B_Update_date;
	int B_rcount;
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBtitle() {
		return Btitle;
	}
	public void setBtitle(String btitle) {
		Btitle = btitle;
	}
	public String getBcontent() {
		return Bcontent;
	}
	public void setBcontent(String bcontent) {
		Bcontent = bcontent;
	}
	public String getB_writer() {
		return B_writer;
	}
	public void setB_writer(String b_writer) {
		B_writer = b_writer;
	}
	public String getB_Create_date() {
		return B_Create_date;
	}
	public void setB_Create_date(String b_Create_date) {
		B_Create_date = b_Create_date;
	}
	public String getB_Update_date() {
		return B_Update_date;
	}
	public void setB_Update_date(String b_Update_date) {
		B_Update_date = b_Update_date;
	}
	public int getB_rcount() {
		return B_rcount;
	}
	public void setB_rcount(int b_rcount) {
		B_rcount = b_rcount;
	}
	
}
