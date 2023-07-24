package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper	
public interface ODAO {
	ArrayList<ODTO> oList();
	  void orderlistDel(String x1);
	  void ocDel(String x1);
	  void pcDel(String x1);
	  void rcDel(String x1);
	  ArrayList<ODTO> orderView(int x1);
	  void delivery(String x1, int x2);
}
