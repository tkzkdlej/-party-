package com.human.springboot;

import lombok.Data;

@Data
public class DELIDTO {
	
String id;
	
	
	// 상품 select 관련
	String ordered_date; // from orderlist
	
	String qty; // from prod_cart // int

	String prod_image; // from product
	String prod_name; // from product
	String prod_price; // from product // int
	String prod_num;   /// int
	
	// 룸 select 관련
	String room_name;
	String room_num; // int
	String room_image;
	String room_price; // int
	String stay_date;
	String rt_howmany; // int
	
	String IMG_NAME1;
	
	String OPTION;
	int PR;	
	String ROOM_NUM2;
	String PROD_NUM2;
	String CHECK;

	
}
