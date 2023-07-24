package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LDAO {
	
	ArrayList<LDTO> L_Users();
}

