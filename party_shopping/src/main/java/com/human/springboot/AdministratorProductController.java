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
//컨트롤러
@Controller
public class AdministratorProductController {
	
	@Autowired
	private PDAO pdao;
	String name="";
	int num;
	
//상품등록
	@GetMapping("/Administratorproductnew")
	public String addProduct() {
		return "AdministratorProductNew";
	}
	//상품등록-상품명, 가격, 재고
	@PostMapping("/newProduct")
	@ResponseBody
	public String newProduct(HttpServletRequest req) {
		String retval="ok";
//		try {
		String prod_name=req.getParameter("prod_name");
		int prod_price=Integer.parseInt(req.getParameter("prod_price"));
		int stock=Integer.parseInt(req.getParameter("stock"));	
		name=prod_name;
		pdao.newProduct(prod_name,prod_price,stock);
//	} catch(Exception e) {
//		return "fail";
//	}
		return retval;
}
//	상품등록-제품이미지 img
	@PostMapping("/newfile")
	   @ResponseBody
	   public String doUpload(HttpServletRequest hsr, MultipartFile file) {
		System.out.println("hi");
	      try {
	         String fileName = file.getOriginalFilename();
	         // webapp 폴더까지의 경로 정보를 가져온다.
	         String prod_image="/img/" + fileName;
	         String folder2 = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
	         file.transferTo(new File(folder2 + prod_image)); 
	         pdao.newUrl(prod_image,name);	
	      } catch (Exception ex) {
	         System.out.println(ex.getMessage());
	      }

	      return "ok";
	   }
//	상품등록-상세설명 img
	@PostMapping("/newfile2")
	   @ResponseBody
	   public String doUpload2(HttpServletRequest hsr, MultipartFile prod_content_file) {
		System.out.println("hi");
	      try {
	         String fileName = prod_content_file.getOriginalFilename();
	         // webapp 폴더까지의 경로 정보를 가져온다.
	         String prod_content="/img/" + fileName;
	         String folder = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
	         prod_content_file.transferTo(new File(folder + prod_content)); 
	         pdao.newUrlC(prod_content,name);	
	      } catch (Exception ex) {
	         System.out.println(ex.getMessage());
	      }

	      return "ok";
	   }
//	상품목록
	@GetMapping("/Administratorproduct")
	public String pList(Model model) {
			ArrayList<PDTO> pList= pdao.pList();
			model.addAttribute("p",pList);
		return "AdministratorProduct";
	}
//	상품수정페이지 열기
	@GetMapping("/productView/{prod_num}")
		public String viewPro(@PathVariable("prod_num") int prod_num, Model model) {
		pdao.viewPro(prod_num);
		PDTO pro=pdao.viewPro(prod_num);
		model.addAttribute("pro",pro);
		return "AdministratorProductUpdate";
	}
//	상품수정하기
	@PostMapping("/updatePro")
	public String updatePro(HttpServletRequest req, Model model) {
		int prod_num=Integer.parseInt(req.getParameter("prod_num"));
		String prod_name=req.getParameter("prod_name");
		int prod_price=Integer.parseInt(req.getParameter("prod_price"));
		int stock=Integer.parseInt(req.getParameter("stock"));
		num=prod_num;
		pdao.updatePro(prod_num,prod_name,prod_price,stock);
		return "redirect:/Administratorproduct";
	}
//	상품수정 상품사진 img
	@PostMapping("updatefile")
	   @ResponseBody
	   public String updatefile(HttpServletRequest hsr, MultipartFile file) {
		System.out.println("hi");
	      try {
	         String fileName = file.getOriginalFilename();
	         // webapp 폴더까지의 경로 정보를 가져온다.
	         String prod_image="/img/" + fileName;
	         String folder2 = "C:\\Users\\admin\\eclipse-workspace\\party_shopping\\src\\main\\resources\\static";
	         file.transferTo(new File(folder2 + prod_image)); 
	         pdao.updateUrl(prod_image,num);	
	      } catch (Exception ex) {
	         System.out.println(ex.getMessage());
	      }

	      return "ok";
	   }
//	상품수정 상품상세 img
	@PostMapping("/updatefile2")
	   @ResponseBody
	   public String updatefile2(HttpServletRequest hsr, MultipartFile prod_content_file) {
		System.out.println("hi");
	      try {
	         String fileName = prod_content_file.getOriginalFilename();
	         // webapp 폴더까지의 경로 정보를 가져온다.
	         String prod_content="/img/" + fileName;
	         String folder = "C:\\Users\\admin\\eclipse-workspace\\Gussi\\src\\main\\resources\\static";
	         prod_content_file.transferTo(new File(folder + prod_content)); 
	         pdao.updateUrlC(prod_content,num);	
	      } catch (Exception ex) {
	         System.out.println(ex.getMessage());
	      }

	      return "ok";
	   }
//	상품삭제
	@GetMapping("/productDelete/{prod_num}")
	public String proDelete(@PathVariable("prod_num") int prod_num) {
		pdao.proDelete(prod_num);
		return "redirect:/Administratorproduct";
	}
}
