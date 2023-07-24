package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SDAO {
	void addOrder(int x1, String x2, String x3, String x4, String x5, int x6, String x7);
	SDTO total_Tcart(String x1, int x2);
	SDTO selectShip(String x1);
	ArrayList<SDTO> order(String x1);
}
