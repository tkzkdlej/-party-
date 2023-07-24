package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface QADAO {
	ArrayList<QADTO> blist();
	void bInsert(String x1, String x2, String x3);
	QADTO QviewList(int x1);
	void updateView(String Btitle, String Bcontent, int board_num);
	void Qdelete(int x1);
	void Qread(int board_num);
	void bcInsert(String x1, int x2, String x3);
	void bcdel(int x1);
	void bcdel2(int x1);
	ArrayList<BCDTO> comment(int x1);
	
//	댓글
	
}
