package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RMDAO {
	
//	룸 정렬페이지
	ArrayList<RMDTO> getRoom();
	ArrayList<RMDTO> checkNum(int x1);
	ArrayList<RMDTO> RdescProd();
	ArrayList<RMDTO> RascProd();
//	룸 상세페이지
	RMDTO getRmDetail(String x1);
	void nomalRmAddToCart(String x1, int x2, String x3, String x4);
	void addRmCart(String x1, int x2, String x3, int x4);
	void addRmToCart(String x1, int x2, String x3);
	
	// 룸 리뷰 관련
		void revInsert(String x1, int x2, String x3);
		ArrayList<RMDTO> selectR(int x1);
		RMDTO review(int x1);
		
		//용품 리뷰 관련
		void revpInsert(String writer, int prod_num, String rCONTENT);
		ArrayList<RMDTO> selectpR(int x1);
	
}
