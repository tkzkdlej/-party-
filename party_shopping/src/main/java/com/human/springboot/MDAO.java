package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MDAO {
	
	// 회원정보수정
	ArrayList<MDTO> selectMy(String x1);
	MDTO showAdr(String x1);
	MDTO showMob(String x1);
	MDTO showBir(String x1);
	void updateMy(String id, String id2, String pwd, String name, String email, String zip_code, String address,String mobile, String birth);
	
	
	
	// 나의 게시글 
	ArrayList<POSTDTO> selectPlist(String x1);
	POSTDTO showPlist(String x1);
	void Pread(String x1);
	
	
	
	// 나의 댓글
	ArrayList<POSTDTO> myComment(String x1);	
	POSTDTO selectBordNum(String x1);
	
	
	
	/// 주문 내역 ///
	
	// 상품,룸 
	ArrayList<DELIDTO> selectDelInfo(String x1);
	
	
}
