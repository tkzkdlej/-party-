package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PDAO {
//	상품정렬페이지
	ArrayList<PDTO> getProd();
	ArrayList<PDTO> descProd();
	ArrayList<PDTO> ascProd();
	ArrayList<PDTO> checkNum(String x1);

//	상품상세페이지
	PDTO getDetail(String x1);
	
	void addCart(String x1, int x2, int x3);
	void addToCart(String x1, int x2);
	void nomalAddToCart(String x1, int x2, String x3);
	void qtyUp(int x1, String x2, int x3);
//	리뷰페이지 in 상품상세
	ArrayList<RDTO> getProdrev();
//	ArrayList<RDTO> getRoomrev();
	
	void prodrevInsert(int x1, int x2, String x3, int x4, String x5, String x6, String x7, int x8, String x9,String x10,String x11);
//	void roomrevInsert(int x1, int x2, String x3, int x4, String x5, String x6, String x7, int x8, String x9,String x10,String x11);
	
	void prodrevUpdate(int x1, int x2, String x3, int x4, String x5, String x6, String x7, int x8, String x9,String x10,String x11);
//	void roomrevUpdate(int x1, int x2, String x3, int x4, String x5, String x6, String x7, int x8, String x9,String x10,String x11);
	
	void prodrevDelete(int x1);
//	void roomrevDelete(int x1);
	
	void newProduct(String x1, int x2, int x3);
	//---
		void newUrl(String x1,String x2);
	//----
		void newUrlC(String prod_content, String name);
//		----
		ArrayList<PDTO> pList();
//		-----------
		PDTO viewPro(int x1);
//		---------
		void proDelete(int x1);
//		---------
		void updatePro(int x1, String x2, int x3, int x4);
	//---
		void updateUrl(String x1, int x2);
	//----
		void updateUrlC(String prod_content, int prod_num);
	
}
