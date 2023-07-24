package com.human.springboot;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class prodController {
	
	
	
	// 상품페이지&상세
	@Autowired
	private PDAO pdao;
	
	// 룸페이지&상세
	@Autowired
	private RMDAO rmdao;
	
	
	// 결제페이지
	@Autowired
	private CDAO cdao;

		@Autowired
		private SDAO sdao;
	
	
	
//	@GetMapping("/psort")
//	public String dopsort() {
//		return "psort";
//	}
	
	
	

//	@PostMapping("/doSelect")
//	public String doSelect() {
//		
//	}
	
	


	
//	@PostMapping("/doUpdate")
//		public String doUpdate() {
//		
//	}
		
	
	
	
/////////////////////////////////////prod_part////////////////////////////////////////
	
	@GetMapping("/psort")
	public String showPsort(HttpServletRequest req,Model model) {
		
		ArrayList<PDTO> prod = pdao.getProd();
//		for (int i = 0; i < prod.size(); i++) {
//			
//			String prod_name = prod.get(i).getProd_name();
//			int prod_price = prod.get(i).getProd_price();	        
//			String prod_image = prod.get(i).getProd_image();
//			
//			
//		}    
		
		model.addAttribute("prod",prod);
		
		return "psort";
	}
	@GetMapping("/descsort")
	public String descsort(HttpServletRequest req,Model model) {
		
		ArrayList<PDTO> prod = pdao.descProd();
		model.addAttribute("prod",prod);
		return "psort";
	}
	@GetMapping("/ascsort")
	public String ascsort(HttpServletRequest req,Model model) {
		
		ArrayList<PDTO> prod = pdao.ascProd();
		model.addAttribute("prod",prod);
		return "psort";
	}
	
//	@GetMapping("/pdetail")
//	public String showPdetail() {
//		return "pdetail";
//	}

    @GetMapping("/pdetail/{prod_num}")
    public String getDetail(@PathVariable("prod_num") String prod_name,
    						Model model) {
    
//    	System.out.println("prod_name ["+prod_name+"]");
    	PDTO prod2 = pdao.getDetail(prod_name);
//		System.out.println("prod2 ["+prod2+"]");
		
		try {	
			
		String prod_name2 = prod2.getProd_name();
		int prod_price = prod2.getProd_price();	        
		int stock = prod2.getStock();	
		String prod_image = prod2.getProd_image();
		String prod_content = prod2.getProd_content();
		int prod_num = prod2.getProd_num(); 
		
//		System.out.println(prod_name2);
//		System.out.println(prod_price);
//		System.out.println(prod_image);
//		System.out.println(prod_content);
	    
		model.addAttribute("prod_nam",prod_name2);
		model.addAttribute("prod_pri",prod_price);
		model.addAttribute("stock",stock);
		model.addAttribute("prod_img",prod_image);
		model.addAttribute("prod_content",prod_content);
		model.addAttribute("prod_num",prod_num);
		
		} catch(Exception e) {
			
//			retval= "fail";
		}
	
    	return "pdetail";
    }
    
//    @PostMapping("/review")
//    @ResponseBody
//    public String doReview() {
//    	
//    	
//    	
//    	return "";
//    }
//    
//    @PostMapping("/reviews")
//    @ResponseBody
//    public String doReviews() {
//    	
//    	
//    	
//    	return "";
//    }
    
    @PostMapping("/addCart")
    @ResponseBody
    public String doAddCart(HttpServletRequest req) {
    	System.out.println("cart check");
    	String id=req.getParameter("id");
    	int prod_num = Integer.parseInt(req.getParameter("prod_num"));
    	int qty = Integer.parseInt(req.getParameter("qty"));
    	boolean a= false;
    	boolean b= false;
    	ArrayList<CDTO> cart = cdao.cartlist(id);
    	ArrayList<SDTO> order = sdao.order(id);
    	for (int i = 0; i < cart.size(); i++) {
		    

		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String tNum = cart.get(i).getTcart_num();
//		    System.out.println("tcart= "+tNum);
		    for(int j = 0; j< order.size(); j++ ) {
		    	String oNum = order.get(j).getTcart_num()+"";
//		    	System.out.println("ordernum "+oNum);
		    	if(tNum.equals(oNum)) {
		    		b=true;
		    	}
	
		    }
  
		}

//		try {	
		ArrayList<PDTO> users = pdao.checkNum(id);
		ArrayList<CDTO> max= cdao.maxNum();
		String num="";
		for(CDTO x:max) {
			num=x.getTcart_num();
		}
		System.out.println("num= "+num);
		
			for(int i=0;i<users.size();i++) {
				if(users.get(i).prod_num==prod_num&&users.get(i).order_check==null) {
					a=true;
					System.out.println("up");
					pdao.qtyUp(qty, id, prod_num);
					return "ok";
				} 		
		}
			if(a) {
				
			}else {
				pdao.addCart(id, prod_num, qty);
			
				if(b) {
					System.out.println("OredsequnsUp");
					pdao.addToCart(id, prod_num);
				}else {
					if (num != "") {
						System.out.println("check");
						System.out.println("sequnsStay");
						// do something with str
						pdao.nomalAddToCart(id, prod_num, num);	
						num="";
					}else {
						System.out.println("sequnsUp");
						pdao.addToCart(id, prod_num);
					}
				}
					
				
				
			}
			
			
		return "ok";
    	
    }
    
    
    
/////////////////////////////////////prod_part////////////////////////////////////////
    
/////////////////////////////////////room_part////////////////////////////////////////    
    
	@GetMapping("/rsort")
	public String showRsort(HttpServletRequest req,Model model) {
		
		ArrayList<RMDTO> room = rmdao.getRoom(); 
		
		model.addAttribute("room",room);
		
		return "rsort";
	}
	@GetMapping("/Rdescsort")
	public String Rdescsort(HttpServletRequest req,Model model) {
		
		ArrayList<RMDTO> room = rmdao.RdescProd();
		model.addAttribute("room",room);
		return "rsort";
	}
	@GetMapping("/Rascsort")
	public String Rascsort(HttpServletRequest req,Model model) {
		
		ArrayList<RMDTO> room = rmdao.RascProd();
		model.addAttribute("room",room);
		return "rsort";
	}
	
    @GetMapping("/rdetail/{room_name}")
    public String getRmDetail(@PathVariable("room_name") String room_name,
    						Model model) {
    
//    	System.out.println("prod_name ["+prod_name+"]");
    	RMDTO room = rmdao.getRmDetail(room_name);
//		System.out.println("prod2 ["+prod2+"]");
		
		try {	
			
		int room_num = room.getRoom_num(); 
		String room_name2 = room.getRoom_name();
		int howmany = room.getHowmany();	
		int prod_price = room.getRoom_price();
		String room_date = room.getRoom_date();
		String room_content = room.getRoom_content();
		String room_image = room.getRoom_image();
		
//		System.out.println(prod_name2);
//		System.out.println(prod_price);
//		System.out.println(prod_image);
//		System.out.println(prod_content);
	    
		model.addAttribute("room_num",room_num);
		model.addAttribute("room_name",room_name2);
		model.addAttribute("howmany",howmany);
		model.addAttribute("room_price",prod_price);
		model.addAttribute("room_date",room_date);
		model.addAttribute("room_content",room_content);
		model.addAttribute("room_image",room_image);
		
		} catch(Exception e) {
			
//			retval= "fail";
		}
	
    	return "rdetail";
    }
    
    
    @PostMapping("/addRmCart")
    @ResponseBody
    public String doAddRmCart(HttpServletRequest req) {
    	
    	String id=req.getParameter("id");
    	int room_num = Integer.parseInt(req.getParameter("room_num"));
    	String stay_date = req.getParameter("stay_date");
    	int howmany = Integer.parseInt(req.getParameter("howmany"));
    	
    	if(stay_date == null) {
            String alert2 = "날짜를 선택해주세요.";
            return alert2;
        }
    	
    	boolean a= false;
    	boolean b= false;
    	ArrayList<CDTO> cart = cdao.cartlist(id);
    	ArrayList<SDTO> order = sdao.order(id);
		
		for (int i = 0; i < cart.size(); i++) {
		    

		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String tNum = cart.get(i).getTcart_num();
		   
		    for(int j = 0; j< order.size(); j++ ) {
		    	String oNum = order.get(j).getTcart_num()+"";
		    	System.out.println("ordernum "+oNum);
		    	if(tNum.equals(oNum)) {
		    		b=true;
		    	}
	
		    }
  
		}
//		try {///
		/////------------------건들지마 수저본
		ArrayList<RMDTO> users = rmdao.checkNum(room_num);
		//-----------------------------------
		ArrayList<PDTO> users2 = pdao.checkNum(id);
		ArrayList<CDTO> max= cdao.maxNum();
			for(int i=0;i<users.size();i++) {
				System.out.println(users.get(i).stay_date);
				System.out.println(stay_date);
				if(users.get(i).stay_date.replace(" 00:00:00","").equals(stay_date)) {
					System.out.println("check");
					a=true;
					
					System.out.println("id= "+id);
					System.out.println("room num= "+room_num);
					System.out.println("stay_date= "+users.get(i).stay_date);
					System.out.println("date= "+stay_date);
					System.out.println("howmany= "+howmany);
					
					String alert = "이미 예약된 날짜 입니다";
					
					
					
					return alert;
				} 		
			}
			String num="";
			for(CDTO x:max) {
				System.out.println("num= "+x.getTcart_num());
				num=x.getTcart_num();
			}
			
				
			if(a) {
				
			} else {
				
				rmdao.addRmCart(id, room_num, stay_date, howmany);
				if(b) {
				rmdao.addRmToCart(id, room_num, stay_date);
				}else {
					if (num != "") {
						System.out.println("check");
						
						// do something with str
						rmdao.nomalRmAddToCart(id, room_num, stay_date, num);	
					}else {
						rmdao.addRmToCart(id, room_num, stay_date);
					}
				}
					
				
				
			}
			
			
			
		return "ok";
    	
    }
    
    @PostMapping("/addRmBuy")
    @ResponseBody
    public String doAddRmBuy(HttpServletRequest req) {
    	
    	String id=req.getParameter("id");
    	int room_num = Integer.parseInt(req.getParameter("room_num"));
    	String stay_date = req.getParameter("stay_date");
    	int howmany = Integer.parseInt(req.getParameter("howmany"));
    	
    	if(stay_date == null) {
            String alert2 = "날짜를 선택해주세요.";
            return alert2;
        }
    	
    	boolean a= false;
    	boolean b= false;
    	ArrayList<CDTO> cart = cdao.cartlist(id);
    	ArrayList<SDTO> order = sdao.order(id);
		System.out.println(id);
		System.out.println(room_num);
		System.out.println(stay_date);
		System.out.println(howmany);
		for (int i = 0; i < cart.size(); i++) {
		    

		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String tNum = cart.get(i).getTcart_num();
		    System.out.println(tNum);
		    for(int j = 0; j< order.size(); j++ ) {
		    	String oNum = order.get(j).getTcart_num()+"";
		    	System.out.println("ordernum "+oNum);
		    	if(tNum.equals(oNum)) {
		    		b=true;
		    	}
	
		    }
  
		}
//		try {	
		ArrayList<RMDTO> users = rmdao.checkNum(room_num);
		ArrayList<PDTO> users2 = pdao.checkNum(id);
		ArrayList<CDTO> max= cdao.maxNum();
			for(int i=0;i<users.size();i++) {
				System.out.println(users.get(i).stay_date);
				System.out.println(stay_date);
				if(users.get(i).stay_date.replace(" 00:00:00","").equals(stay_date)) {
					System.out.println("check");
					a=true;
					
					System.out.println("id= "+id);
					System.out.println("room num= "+room_num);
					System.out.println("stay_date= "+users.get(i).stay_date);
					System.out.println("date= "+stay_date);
					System.out.println("howmany= "+howmany);
					
					String alert = "이미 예약된 날짜 입니다";
					
					
					
					return alert;
				} 		
			}
			String num="";
			for(CDTO x:max) {
				System.out.println("num= "+x.getTcart_num());
				num=x.getTcart_num();
			}
			
				
			if(a) {
				
			} else {
				
				rmdao.addRmCart(id, room_num, stay_date, howmany);
				if(b) {
				rmdao.addRmToCart(id, room_num, stay_date);
				}else {
					if (num != "") {
						System.out.println("check");
						
						// do something with str
						rmdao.nomalRmAddToCart(id, room_num, stay_date, num);	
					}else {
						rmdao.addRmToCart(id, room_num, stay_date);
					}
				}
					
				
				
			}
			
			
			
		return "ok";
    	
    }
//    @PostMapping("/doreview")
//    public String doReview(HttpServletRequest req) {
//    	
//    	
//    	
//    	return "";
//    }
    @PostMapping("/addPBuy")
    @ResponseBody
    public String doAddPBuy(HttpServletRequest req) {
    	
    	System.out.println("cart check");
    	String id=req.getParameter("id");
    	int prod_num = Integer.parseInt(req.getParameter("prod_num"));
    	int qty = Integer.parseInt(req.getParameter("qty"));
    	boolean a= false;
    	boolean b= false;
    	ArrayList<CDTO> cart = cdao.cartlist(id);
    	ArrayList<SDTO> order = sdao.order(id);
    	for (int i = 0; i < cart.size(); i++) {
		    

		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String tNum = cart.get(i).getTcart_num();
//		    System.out.println("tcart= "+tNum);
		    for(int j = 0; j< order.size(); j++ ) {
		    	String oNum = order.get(j).getTcart_num()+"";
//		    	System.out.println("ordernum "+oNum);
		    	if(tNum.equals(oNum)) {
		    		b=true;
		    	}
	
		    }
  
		}

//		try {	
		ArrayList<PDTO> users = pdao.checkNum(id);
		ArrayList<CDTO> max= cdao.maxNum();
		String num="";
		for(CDTO x:max) {
			num=x.getTcart_num();
		}
		System.out.println("num= "+num);
		
			for(int i=0;i<users.size();i++) {
				if(users.get(i).prod_num==prod_num&&users.get(i).order_check==null) {
					a=true;
					System.out.println("up");
					pdao.qtyUp(qty, id, prod_num);
					return "ok";
				} 		
		}
			if(a) {
				
			}else {
				pdao.addCart(id, prod_num, qty);
			
				if(b) {
					System.out.println("OredsequnsUp");
					pdao.addToCart(id, prod_num);
				}else {
					if (num != "") {
						System.out.println("check");
						System.out.println("sequnsStay");
						// do something with str
						pdao.nomalAddToCart(id, prod_num, num);	
						num="";
					}else {
						System.out.println("sequnsUp");
						pdao.addToCart(id, prod_num);
					}
				}
					
				
				
			}
			
			
		return "ok";
    	
    }
    @PostMapping("/addOrderlist")
    @ResponseBody
    public String addOrderlist(HttpServletRequest req) {
    	int tcart_num = Integer.parseInt(req.getParameter("tcart_num"));
    	System.out.println(req.getParameter("tcart_num"));
//    	//-------------------------------------------------------건들지마세용 수정했어요
    	String id=req.getParameter("id");
    	String saddress = req.getParameter("saddress");
    	String s_phone = req.getParameter("s_phone");
    	String s_name = req.getParameter("s_name");
    	int total_price = Integer.parseInt(req.getParameter("total_price"));	
    	String pay_way = req.getParameter("pay_way");
    	ArrayList<CDTO> cart = cdao.cartlist(id);
    	for(int i=0; i<cart.size(); i++) {
    		if(cart.get(i).PROD_NUM!=null) {
    		String cartNum=cart.get(i).PROD_NUM;
    		String cartQty=cart.get(i).QTY;
    		String cartStock=cart.get(i).STOCK;
    			
    			int RStock= Integer.parseInt(cartStock)-Integer.parseInt(cartQty);
    			System.out.println("prodNum "+cartNum);
    			System.out.println("stock "+RStock);
    			cdao.qtyrevice(RStock,cartNum);
    			
    			
    		}
    		
    		
    	}
    	//----------------------------------------------------------------
    	if(saddress.equals(null)) {
    		
            String addresswarn = "상품을 받을 주소를 입력해주세요.";
            
            return addresswarn;
        }
    	
    	
    	if(pay_way.equals(null)) {
    		
    		String paywarn = "결제 방법을 선택해주세요.";
    		
    		return paywarn;
    	}
		
    	
		ArrayList<CDTO> box = cdao.moveBox(tcart_num);
		for(int i=0; i<box.size(); i++) {
			int tnum=Integer.parseInt(box.get(i).tcart_num);
			int cnum=Integer.parseInt(box.get(i).cart_num);
			String Tid=box.get(i).TC_ID;
		cdao.prodOrder(cnum);
		cdao.orderCartIn(tnum,cnum,Tid);
		}
		sdao.addOrder(tcart_num, id, saddress, s_phone, s_name, total_price, pay_way);
		cdao.cartDel(tcart_num);
		
		return "ok";
		
    }
 ///////////////////////////////////////////////////////////결제   
    
    
    @GetMapping("/payment")
    public String showPayment(HttpServletRequest req, Model model) {
    	
    	HttpSession session = req.getSession();
		String id=(String)session.getAttribute("id");
		
		ArrayList<CDTO> cart = cdao.cartlist(id);
		SDTO ship = sdao.selectShip(id);
		String cut[]=ship.getAddress().split("@");
		System.out.println(cut[1]);
		ship.setAddress1(cut[0]);
		ship.setAddress2(cut[1]);
		
		int total=0;
		
		
		for (int i = 0; i < cart.size(); i++) {
		    
			String cart_num1 = cart.get(i).getCart_num();
		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String stayDate = cart.get(i).getSTAY_DATE();
		    String QTY = cart.get(i).getQTY();
		    String HOWMANY = cart.get(i).getHOWMANY();
		    String roomnum = cart.get(i).getROOM_NUM();
		    String prodnum = cart.get(i).getPROD_NUM();
		    String OPTION_NAME = cart.get(i).getOPTION_NAME();
		    String roomprice= cart.get(i).getROOM_PRICE();
		    String prodprice= cart.get(i).getPROD_PRICE();
		    if (stayDate != null) {
		        cart.get(i).setSTAY_DATE("예약일: "+stayDate);
		    }
		    if (QTY != null) {
		    	cart.get(i).setOPTION("수량");
		    }
		    if (HOWMANY != null) {
		    	cart.get(i).setOPTION("인원");
		    }
		    if (OPTION_NAME != null) {
		    	cart.get(i).setOPTION_NAME(OPTION_NAME+": ");
		    }
		    if(roomprice != null) {
		    	cart.get(i).setPR(Integer.parseInt(roomprice));
		    	total=total+Integer.parseInt(roomprice);
		    	
		    }
		    if(prodprice != null) {
		    	cart.get(i).setPR(Integer.parseInt(prodprice)*Integer.parseInt(QTY));
		    	total=total+Integer.parseInt(prodprice)*Integer.parseInt(QTY);
		    }
		    	cart.get(i).setROOM_NUM("룸넘버"+roomnum);
		    	cart.get(i).setPROD_NUM("물품넘버"+prodnum);
		    	
		    
		}
			ship.setTotalP(total);
		
		
			model.addAttribute("carts",cart);
		model.addAttribute("ship",ship);   
		
		int cart_num = req.getParameter("cart_num") != null ? Integer.parseInt(req.getParameter("cart_num")) : 0;
		System.out.println(cart_num);
		
		SDTO tcart_num = sdao.total_Tcart(id,cart_num);
    	
    	return "payment";
    }
    
    
    ////////////////// 룸 리뷰 관련  ////////////////////////////
    @PostMapping("/revInsert")
	@ResponseBody
	public String revInsert(HttpServletRequest req, Model model) {
    	
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		
		int room_num = Integer.parseInt(req.getParameter("room_num"));
		String RCONTENT =req.getParameter("RCONTENT");
		
		System.out.println("writer "+writer);
		System.out.println("room_num "+room_num);
		System.out.println("RCONTENT "+RCONTENT);
	
		
		if (RCONTENT == null || RCONTENT.isEmpty()) {
	        return "리뷰를 작성해주세요.";
	    }
		
		
		rmdao.revInsert(writer, room_num, RCONTENT);
		
		
		
		return "ok";
	}
    @PostMapping("/selectRe")
	@ResponseBody
	public String selectRe(HttpServletRequest req) {
    	
    	int room_num = Integer.parseInt(req.getParameter("room_num"));
    	
    	ArrayList<RMDTO> alList = rmdao.selectR(room_num);
    	JSONArray ja = new JSONArray();
        for (int i = 0; i < alList.size(); i++) {
            JSONObject jo = new JSONObject();
            jo.put("R_WRITER", alList.get(i).getR_writer());
            jo.put("REVIEW_NUM", alList.get(i).getReview_num());
            jo.put("RCONTENT", alList.get(i).getRcontent());
            jo.put("R_CREATE_DATE", alList.get(i).getR_create_date());
           


            ja.put(jo);
        }
        return ja.toString();
    	
    	
    	
		
	}
    
    ////////////////// 용품 리뷰 관련  ////////////////////////////
    @PostMapping("/revpInsert")
	@ResponseBody
	public String revpInsert(HttpServletRequest req, Model model) {
    	
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		
		int prod_num = Integer.parseInt(req.getParameter("prod_num"));
		String RCONTENT =req.getParameter("RCONTENT");
		
		
		
		System.out.println("writer "+writer);
		System.out.println("prod_num "+prod_num);
		System.out.println("RCONTENT "+RCONTENT);
	
		
		if (RCONTENT == null || RCONTENT.isEmpty()) {
	        return "리뷰를 작성해주세요.";
	    }
		
		
		rmdao.revpInsert(writer, prod_num, RCONTENT);
		
		
		
		return "ok";
	}
    @PostMapping("/selectpRe")
	@ResponseBody
	public String selectpRe(HttpServletRequest req) {
    	
    	int prod_num = Integer.parseInt(req.getParameter("prod_num"));
    	
    	ArrayList<RMDTO> alpList = rmdao.selectpR(prod_num);
    	JSONArray ja = new JSONArray();
        for (int i = 0; i < alpList.size(); i++) {
            JSONObject jo = new JSONObject();
            jo.put("R_WRITER", alpList.get(i).getR_writer());
            jo.put("REVIEW_NUM", alpList.get(i).getReview_num());
            jo.put("RCONTENT", alpList.get(i).getRcontent());
            jo.put("R_CREATE_DATE", alpList.get(i).getR_create_date());
           


            ja.put(jo);
        }
        return ja.toString();
    	
    	
    	
		
	}
    
    @GetMapping("/showReview")
    public String re(HttpServletRequest req, 
			Model model) {
    	String num=req.getParameter("token");
    	System.out.println(num+"==== ");
    	String token="prod";
    	model.addAttribute("one",num);
    	model.addAttribute("token",token);
    
	    
    	return "review";
    			
    }
    
    @GetMapping("/showReview3")
    public String re3(HttpServletRequest req, 
			Model model) {
    	String num=req.getParameter("token");
    	System.out.println(num+"==== ");
    	String token="room";
    	model.addAttribute("token",token);
    	model.addAttribute("one",num);
    
	    
    	return "review";
    			
    }
    @PostMapping("/showReview1")
	@ResponseBody
	public String re(HttpServletRequest req) {
//    	String prod_num = req.getParameter(prod_num);
    	int prod_num = Integer.parseInt(req.getParameter("prod_num"));
        return prod_num+"";
    	
    	
    	
		
	}
    
    @PostMapping("/showReview2")
	@ResponseBody
	public String re2(HttpServletRequest req) {
//    	String prod_num = req.getParameter(prod_num);
    	int room_num = Integer.parseInt(req.getParameter("room_num"));
        return room_num+"";
    	
    	
    	
		
	}
    
    @GetMapping("/review")
    public String rev(HttpServletRequest req, 
					  Model model ) {
    	
    	
	    
    	return "review";
    }
}
    