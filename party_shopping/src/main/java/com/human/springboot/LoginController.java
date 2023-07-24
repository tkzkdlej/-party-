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
public class LoginController {
	@Autowired
	private LDAO ldao;

	@GetMapping("/login")
	   public String login() {
	      
	      return "login";
	   }
	   
	   @PostMapping("/doLogin")
	   public String doLogin(HttpServletRequest req, Model model) {
	      
	      String id = req.getParameter("id");
	      String pwd = req.getParameter("pwd");
	      
	      ArrayList<LDTO> usersInfo = ldao.L_Users();
	      
	      for(int i=0;i<usersInfo.size();i++) {
	         
	         if(usersInfo.get(i).getId().equals(id) && 
	            usersInfo.get(i).getPwd().equals(pwd))
	         {
	            HttpSession session = req.getSession();
	            session.setAttribute("id", id);
	            return "redirect:/main";
	         }
	            
	      }
//	      HttpSession session = req.getSession();
//	      session.setAttribute("id", id);
	      model.addAttribute("guide", "<script>alert('아이디나 비밀번호가 올바르지 않습니다')</script>");
	      return "login";
	   }
	   
	   @GetMapping("/logout")
	   public String doLogout(HttpServletRequest req) {
	      
	      HttpSession session = req.getSession();
	      session.invalidate();
	      
	      return "redirect:/main";
	   }
	   
	   @GetMapping("/main")
	   public String main() {
	      
	      return "main";
	   }
}
