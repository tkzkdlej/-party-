package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CDAO {
	ArrayList<CDTO> cartlist(String id);
	void roomdel(String x1, int x2, String x3);
	void proddel(String x1, int x2);
	void totalproddel(String x1, int x2);
	void totalroomdel(String x1, int x2, String x3);
	void prodcartQtyUp(int x1, String x2, int x3);
	void roomcartQtyUp(int x1, String x2, int x3, String x4);
	ArrayList<CDTO> maxNum();
	void cartDel(int x1);
	void orderCartIn(int x1, int x2, String x3);
	ArrayList<CDTO> moveBox(int x1);
	void prodOrder(int x1);
	void qtyrevice(int x1, String x2);
	
}
