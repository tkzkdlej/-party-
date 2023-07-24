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
public class AdministratorMemberController {
	@Autowired
	private AMDAO amdao;
	
//	회원목록
	@GetMapping("/AdministratorMember")
	public String mList(Model model) {
		ArrayList<AMDTO> mList= amdao.mList();
		model.addAttribute("AM",mList);
		return "AdministratorMember";
	}

//	회원정보 삭제
	@PostMapping("/memberDel")
	@ResponseBody
	public String memberDel(HttpServletRequest req) {
		String val="ok";
		try {
			String id=req.getParameter("id");
			amdao.Mbcdel(id);
			amdao.Mbcdel1(id);
			amdao.MQdelete(id);
			amdao.MrcDel(id);
			amdao.MpcDel(id);
			amdao.MocDel(id);
			amdao.MtDel(id);
			amdao.MrDel(id);
			amdao.memberDel(id);
		} catch(Exception e) {
			val="fail";
			e.printStackTrace();
			System.out.println(req.getParameter("id"));
		}
		return val;
	}
	
}
