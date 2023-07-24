package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RDAO {
	ArrayList<RDTO> rList();
	void newRoom(String x1, int x2, int x3);
	//---
		void newUrl(String x1,String x2);
	//----
		void newUrlC(String room_content, String name);
//		----
		RDTO viewRoom(int x1);
//		----------
		void roomDelete(int x1);
//		---------
		void updateRoom(int x1, String x2, int x3, int x4);
	//---
		void updateUrl(String x1, int x2);
	//----
		void updateUrlC(String room_content, int room_num);
}


