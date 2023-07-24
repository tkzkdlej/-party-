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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class QAcontroller {
	@Autowired
	private QADAO qadao;
	
	
	@GetMapping("/Q&A")
	public String q() {
		return "Q&A";
	}

	@GetMapping("/blist")
	@ResponseBody
	public String doGetList() {
		ArrayList<QADTO> list=qadao.blist();
		System.out.println(list);
		JSONArray ja =new JSONArray();
		for(int i=0; i<list.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("board_num", list.get(i).getBoard_num());
			jo.put("Btitle", list.get(i).getBtitle());
			jo.put("B_writer", list.get(i).getB_writer());
			jo.put("B_Create_date", list.get(i).getB_Create_date());
			jo.put("B_rcount",list.get(i).getB_rcount());
		
			ja.put(jo);
		}
		return ja.toString();
	}
	@GetMapping("/new")
	public String qnew() {
		return "Qnew";
	}
	@GetMapping("/newQ&A")
	public String newQ(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		String Btitle=req.getParameter("Btitle");
		String Bcontent=req.getParameter("Bcontent");
		
		System.out.println(Btitle);
		System.out.println(Bcontent);
		qadao.bInsert(Btitle,Bcontent,writer);
		return "redirect:/Q&A";
	}
	@GetMapping("/doQview")
	@ResponseBody
	public String viewBBS(HttpServletRequest req) {

		String id=req.getParameter("name");
		String num=req.getParameter("num");
		System.out.println("num ["+num+"]");
		System.out.println("id "+id);
		
		qadao.Qread(Integer.parseInt(num));
		QADTO qo=qadao.QviewList(Integer.parseInt(num));
		System.out.println("btitle="+qo.getBtitle());
		String pstr=qo.getBtitle()+",:"+qo.getBcontent()+",:"+qo.getB_writer()+
				",:"+qo.getB_Create_date()+",:"+qo.getB_Update_date()+",:"+
				qo.getB_rcount()+",:"+qo.getBoard_num();

		
		//System.out.println(qa);
		return pstr;
	}
	
	@GetMapping("/Qview")
	public String showView(HttpServletRequest req,Model model) {
		
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		
		
		String[] token=req.getParameter("token").split(",:");
		
		model.addAttribute("btitle",token[0]);
		model.addAttribute("bcontent",token[1]);
		model.addAttribute("b_writer",token[2]);
		model.addAttribute("b_create_date",token[3]);
		model.addAttribute("b_update_date",token[4]);
		model.addAttribute("b_rcount",token[5]);
		model.addAttribute("board_num",token[6]);
		
		return "Qview";
	}
	@PostMapping("/modifyview")
	public String modify(HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		
		String Btitle=req.getParameter("Btitle");
		String B_rcount=req.getParameter("B_rcount");
		String B_writer=req.getParameter("B_writer");
		String Bcontent=req.getParameter("Bcontent");
		String B_Create_date=req.getParameter("B_Create_date");
		String B_Update_date=req.getParameter("B_Update_date");
		String board_num=req.getParameter("board_num");
		
		model.addAttribute("Btitle",Btitle);
		model.addAttribute("B_rcount",B_rcount);
		model.addAttribute("B_writer",B_writer);
		model.addAttribute("Bcontent",Bcontent);
		model.addAttribute("B_Create_date",B_Create_date);
		model.addAttribute("B_Update_date",B_Update_date);
		model.addAttribute("board_num",board_num);
		
		return "Qupdate";
	}
	
	@PostMapping("/updateView")
	public String uBbs(HttpServletRequest req, Model model) {
		String Btitle=req.getParameter("Btitle");
		String Bcontent=req.getParameter("Bcontent");
		int board_num=Integer.parseInt(req.getParameter("board_num"));
		
		qadao.updateView(Btitle,Bcontent,board_num);
		return "redirect:/Q&A";
	}
	
	@GetMapping("/Qdelete/{board_num}")
	public String Qdelete(@PathVariable("board_num") int board_num) {
		
		qadao.bcdel2(board_num);
		qadao.Qdelete(board_num);
		return "redirect:/Q&A";
	}
	
	@PostMapping("/bcInsert")
	@ResponseBody
	public String bcInsert(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		String content=req.getParameter("BC_content");
		System.out.println("content "+content);
		String url=req.getParameter("token");
		String Q=url;
		String[] token=Q.split(",:");
		String board_num=token[6];
		String bc_writer=writer;
		qadao.bcInsert(content,Integer.parseInt(board_num),bc_writer);
		
		
		String box=token[0]+", "+token[1]+", "+token[2]+", "+token[3]+", "+token[4]+", "+token[5]+", "+token[6];
		System.out.println("whynot");
		System.out.println(box);
//		model.addAttribute("btitle",token[0]);
//		model.addAttribute("bcontent",token[1]);
//		model.addAttribute("b_writer",token[2]);
//		model.addAttribute("b_create_date",token[3]);
//		model.addAttribute("b_update_date",token[4]);
//		model.addAttribute("b_rcount",token[5]);
//		model.addAttribute("board_num",token[6]);
		
		return box;
	}
	
	@PostMapping("/selectBC")
	@ResponseBody
	public String selectBC(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String writer=(String) session.getAttribute("id");
		String num=req.getParameter("board_num");
		ArrayList<BCDTO> comment = qadao.comment(Integer.parseInt(num));
		JSONArray ja = new JSONArray();
		for(int i=0; i<comment.size(); i++) {
			
			JSONObject jo = new JSONObject();
			jo.put("BC_writer", comment.get(i).getBC_writer());
			jo.put("BC_create", comment.get(i).getBC_create_date());
			jo.put("BC_content", comment.get(i).getBC_content());
			jo.put("BC_num", comment.get(i).getBcoment_num());
			if(writer.equals(comment.get(i).getBC_writer())) {
				jo.put("check", "check");
			}
			
			
			ja.put(jo);
		}
		return ja.toString();
	}
	
	@PostMapping("/bcdel")
	@ResponseBody
	public String bcdel(HttpServletRequest req, Model model) {
		String num=req.getParameter("num");
		qadao.bcdel(Integer.parseInt(num));
		
		
		
		String box="";
		
		
		return box;
	}
	
	
	
	
	
	
	
	
	
	
}
