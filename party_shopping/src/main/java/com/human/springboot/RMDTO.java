package com.human.springboot;

import lombok.Data;

@Data	
public class RMDTO {
	
	int room_num;
	String room_name;
	int howmany;
	int room_price;
	String room_date;
	String room_content;
	String room_image;
	
	int rc_num;
	String id;
	String stay_date;
	
	// 룸 리뷰 관련	
		int review_num;
		int order_num;
		String r_writer;
		int prod_num;
		String rtitle;
		String rcontent;
		String r_create_date;
		String r_update_date;
}
