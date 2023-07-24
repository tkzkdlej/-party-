package com.human.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {
	
	@Autowired
	private CDAO cdao;
	
	
	
	
	
	
	
	
	
	@GetMapping("/cart")
    public String showList() {
        return "cart";
    }
	
	@GetMapping("/ShowCart")
	public String addNew(HttpServletRequest req,Model model) {
		HttpSession session = req.getSession();
		
		String writer=(String) session.getAttribute("id");
		ArrayList<String> option = null;
		if(writer!=null) {
		ArrayList<CDTO> cart = cdao.cartlist(writer);
		int total=0;
		for (int i = 0; i < cart.size(); i++) {
		    

		    // STAY_DATE 값이 null이 아닌 경우 해당 인덱스의 요소에 "예약일" 추가
		    String stayDate = cart.get(i).getSTAY_DATE();
		    String QTY = cart.get(i).getQTY();
		    String HOWMANY = cart.get(i).getHOWMANY();
		    String roomnum = cart.get(i).getROOM_NUM();
		    String prodnum = cart.get(i).getPROD_NUM();
		    String prodname = cart.get(i).getPROD_NAME();
		    String roomname = cart.get(i).getROOM_NAME();
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
		    	cart.get(i).setCHECK(stayDate.replace(" ", "").replace(":", "").replace("-", "").replace("0", ""));
		    	
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
		    if(prodname != null) {
		    	cart.get(i).setIMG_NAME1("상품"+prodname);
		    }
		    if(roomname != null) {
		    	cart.get(i).setIMG_NAME1("룸"+roomname);
		    }
		    	cart.get(i).setROOM_NUM("룸넘버"+roomnum);
		    	cart.get(i).setPROD_NUM("물품넘버"+prodnum);
		    	
		    
		}
		model.addAttribute("size",cart.size());
		model.addAttribute("option",option);
		model.addAttribute("carts",cart);
		
		model.addAttribute("total",total);
		
		
		return "cart";
		}
		return "cart";
	}
	
	@PostMapping("/DeleteCartk")
    @ResponseBody
    public String DeleteCartk(HttpServletRequest req) {
		
		
		String box=req.getParameter("s_no");
		
		if(box.contains("룸넘버null")) {
			String []roombox=box.replace("룸넘버null","").replace("물품넘버","").split(" ");
			cdao.totalproddel(roombox[1],Integer.parseInt(roombox[0]));
			cdao.proddel(roombox[1],Integer.parseInt(roombox[0]));
		}
		if(box.contains("물품넘버null")) {
			String []prodbox=box.replace("물품넘버null","").replace("룸넘버","").split(" ");
			
			cdao.totalroomdel(prodbox[1],Integer.parseInt(prodbox[0]),prodbox[3].trim().replace(" 00:00:00", ""));
			cdao.roomdel(prodbox[1],Integer.parseInt(prodbox[0]),prodbox[3].trim().replace(" 00:00:00", ""));
			
		}
		
        String retval = "ok";
       

        return retval;

    }
	
	@PostMapping("/Updatecart")
    public String Update(HttpServletRequest req) {
		String[] names = req.getParameterValues("name");
		String[] count = req.getParameterValues("num");
		String[] day = req.getParameterValues("day"); 
		HttpSession session = req.getSession();
		
		String writer=(String) session.getAttribute("id");
		int i=0;
		try {	
		for(i=0; i<names.length; i++) {

			
			if(names[i].contains("수량")) {
				names[i]=names[i].replace("수량", "").replace("인원","").replace("null", "").replace("룸넘버", "").replace("물품넘버","");
				cdao.prodcartQtyUp(Integer.parseInt(count[i]),writer,Integer.parseInt(names[i]));
			}
			if(names[i].contains("인원")) {
				names[i]=names[i].replace("수량", "").replace("인원","").replace("null", "").replace("룸넘버", "").replace("물품넘버","");
				cdao.roomcartQtyUp(Integer.parseInt(count[i]),writer,Integer.parseInt(names[i]),day[i].replace(" 00:00:00", "").replace("예약일: ",""));
				System.out.println(day[i]);
							
			}
			
			
		}
		} catch(Exception e) {
					
		//			retval= "fail";
				}
		
		
		return "redirect:/payment";
       
    }
	
	
	
	
}
	





