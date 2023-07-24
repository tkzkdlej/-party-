package com.human.springboot;

import java.io.File;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdministratorRoomController {
	@Autowired
	private RDAO rdao;
	String name="";
	int num;
//	상품목록
	@GetMapping("/Administratorroom")
	public String rList(Model model) {
			ArrayList<RDTO> rList= rdao.rList();
			model.addAttribute("room",rList);
		return "AdministratorRoom";
	}
//상품등록
	@GetMapping("/Administratorroomnew")
	public String addRoom() {
		return "AdministratorRoomNew";
	}
		//상품등록-상품명, 가격, 재고
		@PostMapping("/newRoom")
		@ResponseBody
		public String newProduct(HttpServletRequest req) {
			String retval="ok";
//			try {
			String room_name=req.getParameter("room_name");
			int room_price=Integer.parseInt(req.getParameter("room_price"));
			int howmany=Integer.parseInt(req.getParameter("howmany"));	
			name=room_name;
			rdao.newRoom(room_name,room_price,howmany);
//		} catch(Exception e) {
//			return "fail";
//		}
			return retval;
	}
//		상품등록-제품이미지 img
		@PostMapping("/newfile3")
		   @ResponseBody
		   public String doUpload(HttpServletRequest hsr, MultipartFile file) {
			System.out.println("hi");
		      try {
		         String fileName = file.getOriginalFilename();
		         // webapp 폴더까지의 경로 정보를 가져온다.
		         String room_image="/img/" + fileName;
		         String folder2 = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
		         file.transferTo(new File(folder2 + room_image)); 
		         rdao.newUrl(room_image,name);	
		      } catch (Exception ex) {
		         System.out.println(ex.getMessage());
		      }

		      return "ok";
		   }
//		상품등록-상세설명 img
		@PostMapping("/newfile4")
		   @ResponseBody
		   public String doUpload2(HttpServletRequest hsr, MultipartFile room_content_file) {
			System.out.println("hi");
		      try {
		         String fileName = room_content_file.getOriginalFilename();
		         // webapp 폴더까지의 경로 정보를 가져온다.
		         String room_content="/img/" + fileName;
		         String folder = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
		         room_content_file.transferTo(new File(folder + room_content)); 
		         rdao.newUrlC(room_content,name);	
		      } catch (Exception ex) {
		         System.out.println(ex.getMessage());
		      }

		      return "ok";
		   }
//		상품수정페이지 열기
		@GetMapping("/roomView/{room_num}")
			public String viewPro(@PathVariable("room_num") int room_num, Model model) {
			rdao.viewRoom(room_num);
			RDTO room=rdao.viewRoom(room_num);
			model.addAttribute("room",room);
			return "AdministratorRoomUpdate";
		}
//		상품수정하기
		@PostMapping("/updateRoom")
		public String updateRoom(HttpServletRequest req, Model model) {
			int room_num=Integer.parseInt(req.getParameter("room_num"));
			String room_name=req.getParameter("room_name");
			int room_price=Integer.parseInt(req.getParameter("room_price"));
			int howmany=Integer.parseInt(req.getParameter("howmany"));
			num=room_num;
			rdao.updateRoom(room_num,room_name,room_price,howmany);
			return "redirect:/Administratorroom";
		}
//		상품수정 상품사진 img
		@PostMapping("updatefile3")
		   @ResponseBody
		   public String updatefile(HttpServletRequest hsr, MultipartFile file) {
			System.out.println("hi");
		      try {
		         String fileName = file.getOriginalFilename();
		         // webapp 폴더까지의 경로 정보를 가져온다.
		         String room_image="/img/" + fileName;
		         String folder2 = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
		         file.transferTo(new File(folder2 + room_image)); 
		         rdao.updateUrl(room_image,num);	
		      } catch (Exception ex) {
		         System.out.println(ex.getMessage());
		      }

		      return "ok";
		   }
//		상품수정 상품상세 img
		@PostMapping("/updatefile4")
		   @ResponseBody
		   public String updatefile2(HttpServletRequest hsr, MultipartFile room_content_file) {
			System.out.println("hi");
		      try {
		         String fileName = room_content_file.getOriginalFilename();
		         // webapp 폴더까지의 경로 정보를 가져온다.
		         String room_content="/img/" + fileName;
		         String folder = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
		         room_content_file.transferTo(new File(folder + room_content)); 
		         rdao.updateUrlC(room_content,num);	
		      } catch (Exception ex) {
		         System.out.println(ex.getMessage());
		      }

		      return "ok";
		   }
//		상품삭제
		@GetMapping("/roomDelete/{room_num}")
		public String roomDelete(@PathVariable("room_num") int room_num) {
			rdao.roomDelete(room_num);
			return "redirect:/Administratorroom";
		}
}
