package com.human.springboot;

import java.time.LocalDate;
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
public class gussiController {
	
	// 회원가입
	@Autowired
	private JDAO jdao;
	
	
	
	// 마이페이지
	@Autowired private MDAO mdao;
	@Autowired private PDAO pdao;
	@Autowired private CDAO cdao;
	@Autowired private SDAO sdao;
	
	@Autowired private QADAO qadao;
	

	
	
////////////////////////////////////////// join part ///////////////////////////////////////////////////
	
	@GetMapping("/join")
	public String dojoin() {
		return "join";
	}
	
	@PostMapping("/doInsert")
	public String doInsert(HttpServletRequest req) {
		String j_id=req.getParameter("j_id");
		String j_pwd=req.getParameter("j_pwd");
		String j_name=req.getParameter("j_name");
		
		
		// address
		String zip_code=req.getParameter("zip_code");
		String j_address1 =req.getParameter("j_address1");
		String j_address2 =req.getParameter("j_address2");
		String j_address =j_address1+"@"+j_address2;
		
		// mobile
		String j_firstphone =req.getParameter("j_firstphone");
		String j_midphone =req.getParameter("j_midphone");
		String j_lastphone =req.getParameter("j_lastphone");
		String j_mobile = j_firstphone+" "+j_midphone+" "+j_lastphone;
		
		
		String j_email =req.getParameter("j_email");
		String j_year =req.getParameter("j_year");
		String j_month =req.getParameter("j_month");
		String j_day =req.getParameter("j_day");
		String j_birth =j_year+" "+j_month+" "+j_day;
		String j_joinDate = LocalDate.now().toString(); // 현재 날짜를 가져와서 문자열로 변환
		jdao.doInsert(j_id,j_pwd,j_name,j_email,zip_code,j_address,j_mobile,j_birth,j_joinDate);
		
		
		return "login";
	}
		
	@PostMapping("/idCheck")
	@ResponseBody
	public String idCheck(HttpServletRequest req) {
		
		String j_id= req.getParameter("j_id");
		
		if(j_id==null || j_id.equals("")) {
			return "아이디를 입력해주세요";
		}
		
		ArrayList<JDTO> users = jdao.confirmId();
		for(int i=0;i<users.size();i++) {
			if(j_id.equals(users.get(i).getID())) {
				return "중복된 아이디입니다";
			}
		}
		
		return "사용 가능한 아이디입니다";
	}
	
////////////////////////////////////////// join part ///////////////////////////////////////////////////		

	
	
	
	
	
	
	
	
////////////////////////////////////////// mypage part ///////////////////////////////////////////////////
	
    @GetMapping("/mypage")
    public String showMypage(HttpServletRequest req, Model model) {
    	
    	HttpSession session = req.getSession();
		String id=(String)session.getAttribute("id");
		System.out.println(id);
		
		MDTO showAdr = mdao.showAdr(id);
		MDTO showMob = mdao.showMob(id);
		MDTO showBir = mdao.showBir(id);
		System.out.println(showBir);
		
		String cut[]=showAdr.getAddress().split("@");
		System.out.println(cut[1]);
		
		showAdr.setAddress1(cut[0]);
		showAdr.setAddress2(cut[1]);
		
		String cut1[]=showMob.getMobile().split(" ");
		System.out.println(cut1[1]);
		
		showMob.setMobile1(cut1[0]);
		showMob.setMobile2(cut1[1]);
		showMob.setMobile3(cut1[2]);
		
		String cut3=showBir.getBirth();
		String cut4 = cut3.substring(0, 10);
		
		String cut2[]=cut4.split("-");
		System.out.println(cut2[1]);
		
		showBir.setBirth1(cut2[0]);
		showBir.setBirth2(cut2[1]);
		showBir.setBirth3(cut2[2]);
		
		
		ArrayList<MDTO> selectMy = mdao.selectMy(id);
		
		for (int i = 0; i < selectMy.size(); i++) {
		    String id1 = selectMy.get(i).getId();
		    String pwd = selectMy.get(i).getPwd();
		    String name = selectMy.get(i).getName();
		    String zip_code = selectMy.get(i).getZip_code();
		    String email = selectMy.get(i).getEmail();
		    String mobile= selectMy.get(i).getMobile();
		    String birth= selectMy.get(i).getBirth();
		}
		

		model.addAttribute("selectMy",selectMy);
		model.addAttribute("showAdr",showAdr);
		model.addAttribute("showMob",showMob);
		model.addAttribute("showBir",showBir);
		
		
		
		
	///// 주문내역 상품 select 하는 코드 /////
			  ArrayList<DELIDTO> mydeli = mdao.selectDelInfo(id);
		      
		      ArrayList<Integer> product_prices = new ArrayList<>();
		      
		      for (int i = 0; i < mydeli.size(); i++) {
		        
		    	///// 주문내역 상품 select 하는 코드 /////
		    	  String ordered_date = mydeli.get(i).getOrdered_date();       
		          String qty = mydeli.get(i).getQty(); // int
		          String prod_num = mydeli.get(i).getProd_num();
		          String prod_image = mydeli.get(i).getProd_image();
		          String prod_name = mydeli.get(i).getProd_name();
		          String prod_price = mydeli.get(i).getProd_price(); // int
		          
		           // 주문한 각 상품의 가격을 계산합니다.
		         
		          
		      ///// 주문내역 룸 select 하는 코드 /////
		    	  String room_name = mydeli.get(i).getRoom_name();
		    	  String room_num = mydeli.get(i).getRoom_num();
		    	  String room_image = mydeli.get(i).getRoom_image();
		    	  String room_price = mydeli.get(i).getRoom_price();
		    	  String stay_date = mydeli.get(i).getStay_date();
		    	  String rt_howmany = mydeli.get(i).getRt_howmany();
		          
		    	  if (qty != null) {
		    		  mydeli.get(i).setOPTION("개");
				    }
		    	  
				    if (rt_howmany != null) {
				    	mydeli.get(i).setOPTION("명");
//				    	mydeli.get(i).setCHECK(stayDate.replace(" ", "").replace(":", "").replace("-", "").replace("0", ""));
				    	
				    }
				    
				    if(room_price != null) {
				    	mydeli.get(i).setPR(Integer.parseInt(room_price));
//				    	total=total+Integer.parseInt(roomprice);
				    	
				    }
				    
				    if(prod_price != null) {
				    	int product_price = (Integer.parseInt(prod_price) * Integer.parseInt(qty));
				    	mydeli.get(i).setPR(product_price);
//				    	total=total+Integer.parseInt(prodprice)*Integer.parseInt(QTY);
				    }
				    if(stay_date != null) {
				    if(stay_date.contains(" 00:00:00")) {
				    	mydeli.get(i).setStay_date(stay_date.replace(" 00:00:00", ""));
				    
				    	
				    }
				    }
				    if(prod_name != null) {
				    	mydeli.get(i).setIMG_NAME1("상품"+prod_name);
				    }
				    if(room_name != null) {
				    	mydeli.get(i).setIMG_NAME1("룸"+room_name);
				    	mydeli.get(i).setCHECK("팀플넘무좋아");
				    }
				    
				    mydeli.get(i).setROOM_NUM2("룸넘버"+room_num);
				    mydeli.get(i).setPROD_NUM2("물품넘버"+prod_num);
				    	
		          
		      }
		      

		      model.addAttribute("mydeli",mydeli);
		      
		      
		       return "mypage";

	    }
    
    
    
////////////////////////////// 주문내역 part //////////////////////////////


    
  
    
    
////////////////////////////// 주문내역 part //////////////////////////////    
    
    
    
////////////////////////////// 게시글 part //////////////////////////////
    @GetMapping("/myPlist")
	@ResponseBody
	public String doGetList(HttpServletRequest req) {
    	
    	HttpSession session = req.getSession();
		String id=(String)session.getAttribute("id");
		
		System.out.println(id);
    	
		ArrayList<POSTDTO> plist = mdao.selectPlist(id);
		System.out.println(plist);
		
		JSONArray ja =new JSONArray();
		
		for(int i=0; i<plist.size(); i++) {
			
			JSONObject jo = new JSONObject();
			jo.put("board_num", plist.get(i).getBoard_num());
			jo.put("Btitle", plist.get(i).getBtitle());
			jo.put("B_writer", plist.get(i).getB_writer());
			jo.put("B_Create_date", plist.get(i).getB_create_date());
			jo.put("B_rcount",plist.get(i).getB_rcount());
		
			ja.put(jo);
		}
		return ja.toString();
	} 
////////////////////////////// 게시글 part //////////////////////////////
    
    
    
////////////////////////////// 댓글 part ///////////////////////////////   
    @PostMapping("/showBC")
	@ResponseBody
	public String showBC(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		
		ArrayList<POSTDTO> myComment = mdao.myComment(writer);
		JSONArray ja = new JSONArray();
		for(int i=0; i<myComment.size(); i++) {
			
			JSONObject jo = new JSONObject();
			jo.put("BC_num", myComment.get(i).getBcoment_num());
			jo.put("BC_content", myComment.get(i).getBC_content());
			jo.put("BC_writer", myComment.get(i).getBC_writer());
			jo.put("BC_create", myComment.get(i).getBC_create_date());
			if(writer.equals(myComment.get(i).getBC_writer())) {
				jo.put("check", "check");
			}
			
			
			ja.put(jo);
		}
		return ja.toString();
	}
    @GetMapping("/doQview2")
	@ResponseBody
	public String viewBBS(HttpServletRequest req) {
    	System.out.println("checkComment");
		String id=req.getParameter("name");
		String num=req.getParameter("num");
		System.out.println("num ["+num+"]");
		System.out.println("id "+id);
		POSTDTO BordNum=mdao.selectBordNum(num);
		
			
			System.out.println("bordNum= "+BordNum.getBoard_num());
		
		qadao.Qread(BordNum.getBoard_num());
		QADTO qo=qadao.QviewList(BordNum.getBoard_num());
		System.out.println("btitle="+qo.getBtitle());
		String pstr=qo.getBtitle()+",:"+qo.getBcontent()+",:"+qo.getB_writer()+
				",:"+qo.getB_Create_date()+",:"+qo.getB_Update_date()+",:"+
				qo.getB_rcount()+",:"+qo.getBoard_num();

		
		//System.out.println(qa);
		return pstr;
	}
////////////////////////////// 댓글 part ///////////////////////////////
    
    
    
////////////////////////////// 회원정보 part /////////////////////////////
    @PostMapping("/updateMy")
    @ResponseBody
    public String updateMy(HttpServletRequest req) {
    	String id= req.getParameter("id");
    	String id2= req.getParameter("id2");
    	String pwd=req.getParameter("pwd");
    	String name = req.getParameter("name");
    	String email = req.getParameter("email");
    	String zip_code = req.getParameter("zip_code");
    	String address = req.getParameter("address");
    	String mobile = req.getParameter("mobile");
    	String birth = req.getParameter("birth");
    	
    
		
    	System.out.println(id);
    	System.out.println(id2);
		System.out.println(pwd);
		System.out.println(name);
		System.out.println(email);
		System.out.println(zip_code);
		System.out.println(address);
		System.out.println(mobile);
		System.out.println(birth);


		mdao.updateMy(id, id2, pwd, name, email, zip_code, address, mobile, birth);
		
		return "ok";
		
    }
////////////////////////////// 회원정보 part /////////////////////////////
    

    
    
////////////////////////////////////////// mypage part ///////////////////////////////////////////////////
    @PostMapping("/MyPageAddCart")
    @ResponseBody
    public String doAddCart(HttpServletRequest req) {
       String id=req.getParameter("id");
       String box=req.getParameter("prod_num");
       System.out.println(box);
       String[] box1=box.split(",");
       System.out.println(box1[0]);
       System.out.println(box1[1]);
       int prod_num = Integer.parseInt(box1[0]);
       int qty = Integer.parseInt(box1[1]);
       boolean a= false;
       boolean b= false;
       System.out.println(id);
       
       ArrayList<CDTO> cart = cdao.cartlist(id);
       ArrayList<SDTO> order = sdao.order(id);
       for (int i = 0; i < cart.size(); i++) {
          

          // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
          String tNum = cart.get(i).getTcart_num();
//          System.out.println("tcart= "+tNum);
          for(int j = 0; j< order.size(); j++ ) {
             String oNum = order.get(j).getTcart_num()+"";
//             System.out.println("ordernum "+oNum);
             if(tNum.equals(oNum)) {
                b=true;
             }
   
          }
  
      }

//      try {   
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
    
    
    

    
  
}
