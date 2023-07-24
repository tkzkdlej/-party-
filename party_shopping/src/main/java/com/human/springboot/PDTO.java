package com.human.springboot;

import lombok.Data;

@Data
public class PDTO {
	
	int prod_num;
	String prod_name;
	int prod_price;
	int stock;
	String prod_content;
	String prod_image;
	String order_check;
	String id;
	int qty;
}
