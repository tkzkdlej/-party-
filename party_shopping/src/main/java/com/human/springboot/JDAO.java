package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JDAO { // String zip_code, String address 제외
	
	ArrayList<JDTO> confirmId();
	void doInsert(String ID, String pwd, String name,String email,String zip_code,String address, String mobile, String birth, String regdate);

}
