package kr.co.promotion.model.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kr.co.event.model.vo.Event;
import kr.co.promotion.model.service.PromotionService;
import kr.co.promotion.model.vo.Promotion;

@Controller
public class PromotionController {

	@Autowired
	private PromotionService service;
	
	//전체출력
	@RequestMapping(value="/proList.do")
	public String proList(Model model) {
		ArrayList<Promotion>list = service.proList();
int ttc = service.totalCount();
		
		model.addAttribute("list", list);
		model.addAttribute("ttc", ttc);
		return "promotion/proList";
	}
	@RequestMapping(value="/adminPro.do")
	public String proAdmin(Model model) {
		ArrayList<Promotion>list = service.proList();
		int ttc = service.totalCount();
		
		model.addAttribute("list", list);
		model.addAttribute("ttc", ttc);
		return "promotion/adminPro";
	}
	
	@RequestMapping(value="/proWriteFrm.do")
	public String proWriteFrm() {
		return "promotion/proWriteFrm";
	}
	
	
	//프로모션 작성
	@RequestMapping(value="/proWrite.do")
	public String proWrite(String proContent,String proTitle,String proEnter,String proDate,MultipartFile file,HttpServletRequest request, Model model) {
		if(file.isEmpty()) {
			//첨부파일이 없는경우
		}else {
		
		String savePath = request.getSession()
				.getServletContext()
				.getRealPath("/resources/upload/promotion/");
		
			//실제 유저가 올린 파일명(filename)
			String filename = file.getOriginalFilename();
			//유저가 올린 파일명을 마지막 . 기준으로 분리     test.txt -> test / .txt
			String onlyFilename = filename.substring(0,filename.indexOf("."));//test
			String extention = filename.substring(filename.indexOf("."));//.txt
			String filepath = null;
			int count = 0;			
			while(true) {
				if(count == 0) {
					filepath = onlyFilename+extention;//text.txt
				}else {
					filepath = onlyFilename+"_"+count+extention;//test_4.txt
				}
				File checkFile = new File(savePath+filepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
		
	
		
		Promotion p = new Promotion();
		p.setProPath(filepath);
		p.setProName(filename);
		p.setProTitle(proTitle);
		p.setProContent(proContent);
		p.setProDate(proDate);
		p.setProEnter(proEnter);
		
		System.out.println("filename : "+filename);
		System.out.println("filepath : "+filepath);
		
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(new File(savePath+filepath));
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			byte[] bytes = file.getBytes();
			bos.write(bytes);
			bos.close();
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
					
		int result = service.insertPro(p);
			
	if(result>0) {
		model.addAttribute("msg", "프로모션 등록성공");
	}else {
		model.addAttribute("msg", "프로모션 등록실패");
	}
		model.addAttribute("loc", "/eventList.do"); 
		}
		return "common/msg";
}
	//프로모션 삭제
	@RequestMapping(value="/proDelete.do")
	public String proDelete(int proNo, Model model) {
		int result = service.proDelete(proNo);
		if(result>0) {
			model.addAttribute("msg", "프로모션 삭제 성공");
		}else {
			model.addAttribute("msg", "프로모션 삭제 실패");
		}
		model.addAttribute("loc", "/eventList.do");
		return "common/msg";
	}
	
	/*프로모션 더보기*/
	 @RequestMapping(value = "/proTotal.do")
	   public String proTotal(Model model){
	      int totalCount = service.totalCount();
	      model.addAttribute("totalCount",totalCount);
	      List list = service.proList();
	      model.addAttribute("list",list);
//	      System.out.println(totalCount);
//	      System.out.println(list);
	      return "promotion/proList";
	 }
	 
	 
	 @ResponseBody
	   @RequestMapping(value = "/proMore.do",produces="application/json;charset=utf-8")
	   public String proMore(int start){
	      ArrayList<Promotion> list = service.proMore(start);
//	      System.out.println("more"+list);
	      return new Gson().toJson(list);
	   }
	
	 /*키워드검색*/
		@RequestMapping(value="/searchPro.do")
		public String searchList(Promotion pt,String searchCondition,String searchkeyword ,Model model) {
			ArrayList<Event>eList = service.eventList();
			
			HashMap<String,String> map = new HashMap<String,String>();
			map.put("searchCondition", searchCondition);
			map.put("searchkeyword", searchkeyword);
			
			
			System.out.println(map);
			ArrayList<Promotion>list = service.searhList(map);
			model.addAttribute("eList", eList);
			model.addAttribute("list", list);
			if(list.size()== 0) {
				return "promotion/noSearchpro";
			}
			return "promotion/proSearch";
		}
		
		
}
