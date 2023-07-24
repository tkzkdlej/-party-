package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AMDAO {
	ArrayList<AMDTO> mList();
	  void memberDel(String x1);
	  	  void MtDel(String x1);
		  void MocDel(String x1);
		  void MpcDel(String x1);
		  void MrcDel(String x1);
		  void MQdelete(String x1);
		  void Mbcdel(String x1);
		  void Mbcdel1(String x1);
		  void MrDel(String x1);
}
