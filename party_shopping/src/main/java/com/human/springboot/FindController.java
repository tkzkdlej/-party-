package com.human.springboot;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FindController {
	@Autowired
	private FDAO fdao;

	@GetMapping("/FindId")
	public String findid() {
		return "Find_id";
	}

	@PostMapping("/using_email")
	@ResponseBody
	public String using_email(HttpServletRequest req) {
		String val="";
		System.out.println(req.getParameter("name"));
		System.out.println(req.getParameter("mail"));
		String name = req.getParameter("name");
		String email = req.getParameter("mail");
		ArrayList<String> findid = fdao.useemail(name,email);
		val=findid.toString();
		
		return val;
	}
	@PostMapping("/using_phone")
	@ResponseBody
	public String using_phone(HttpServletRequest req, Model model) {
		String val="";
		String name = req.getParameter("name");
		String mobile = req.getParameter("phone");
		String mobile1 = mobile.substring(0, 3);
		String mobile2 = mobile.substring(3,7);
		String mobile3 = mobile.substring(7);
		mobile=mobile1+" "+mobile2+" "+mobile3;
		ArrayList<String> findid = fdao.usephone(name,mobile);
		val=findid.toString();
		return val;
	}
}
