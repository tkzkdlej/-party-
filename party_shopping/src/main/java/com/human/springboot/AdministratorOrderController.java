package com.human.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdministratorOrderController {
	
	@Autowired
	private ODAO odao;
	
	@GetMapping("/AdministratorOrder")
	public String oList(Model model) {
		ArrayList<ODTO> oList= odao.oList();
		model.addAttribute("AO",oList);
		return "AdministratorOrder";
	}
	@PostMapping("/orderlistDel")
	@ResponseBody
	public String orderlistDel(HttpServletRequest req) {
		String val="ok";
		try {
			
			System.out.println(req.getParameter("tcart_num"));
			String tcart_num=req.getParameter("tcart_num");
		odao.pcDel(tcart_num);
		odao.rcDel(tcart_num);
		odao.ocDel(tcart_num);
		odao.orderlistDel(tcart_num);
		} catch(Exception e) {
			val="fail";
			e.printStackTrace();
			System.out.println(req.getParameter("tcart_num"));
		}
		return val;
	}
	
	@GetMapping("/AdministratorOrderView/{tcart_num}")
	public String orderView(@PathVariable("tcart_num") int tcart_num, Model model) {
	 ArrayList<ODTO> orderView=odao.orderView(tcart_num);
	model.addAttribute("orderView",orderView);
	return "AdministratorOrderView";
}
	@PostMapping("/delivery")
	public String delivery(HttpServletRequest req) {
		
		String[] delivery = req.getParameterValues("hdelivery");
		String[] order_num = req.getParameterValues("order_num");
		
		
		int j=0;
		for(int i=0; i<order_num.length; i++) {
			if(!delivery[i].equals("")) {
				j=i;
				break;
			}
		}
		System.out.println(order_num[j]);
		System.out.println(delivery[j]);
		odao.delivery(delivery[j],Integer.parseInt(order_num[j]));
		return "redirect:/AdministratorOrder";
	}
	
	
}
