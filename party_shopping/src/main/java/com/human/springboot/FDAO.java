package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface FDAO {
	ArrayList<String> useemail(String a, String b);
	ArrayList<String> usephone(String a, String b);
}
