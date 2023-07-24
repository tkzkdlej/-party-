package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ARDAO {
	ArrayList<ARDTO> rList();
	 void reviewDel(String x1);
}
