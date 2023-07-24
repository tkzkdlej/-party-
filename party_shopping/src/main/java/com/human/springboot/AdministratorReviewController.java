package com.human.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller	
public class AdministratorReviewController {
	@Autowired
	private ARDAO ardao;
	
//	리뷰목록
	@GetMapping("/AdministratorReview")
	public String rList(Model model) {
		ArrayList<ARDTO> rList= ardao.rList();
		model.addAttribute("AR",rList);
		return "AdministratorReview";
	}
//리뷰삭제
	@PostMapping("/reviewDel")
	@ResponseBody
	public String reviewDel(HttpServletRequest req) {
		String val="ok";
		try {
			String id=req.getParameter("id");
			ardao.reviewDel(id);
			
		} catch(Exception e) {
			val="fail";
			e.printStackTrace();
			System.out.println(req.getParameter("id"));
		}
		return val;
	}
	
}
