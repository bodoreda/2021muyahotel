package kr.co.spa.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import kr.co.member.model.vo.Member;
import kr.co.spa.model.vo.Spa;
import kr.co.spa.service.SpaService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class SpaController {
	@Autowired
	private SpaService service;
	
	@RequestMapping(value="/spa.do")
	public String spa() {
		return "spa/spamain";
	}
	@RequestMapping(value ="/spaResFrm.do")
	public String spaResFrm() {
		return "spa/spaResFrm";
	}
	@RequestMapping(value="/spaRes.do")
	public String spaRes(Spa spa , Model model) {
		int result = service.resSpa(spa);
		if(result != -1) {
			model.addAttribute("msg", "등록성공");
		}else {
			model.addAttribute("msg", "등록실패");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
		
	}
	@RequestMapping(value="/spaResView.do")
	public String spaResView(@SessionAttribute Member m , Model model) {
		
		ArrayList<Spa> list = service.resView(m);
		model.addAttribute("list",list);
		System.out.println(list);
		return "spa/spaResView";
	}
	@RequestMapping(value="/resChk.do")
	@ResponseBody
	public String resChk(Spa spa) {
		int s = service.resChk(spa);
		if(s == 1) {
			return "1";
		}
		else {
			return "0";
		}
	}
	@RequestMapping(value = "/swim.do")
	public String swim() {
		return "spa/swim";
	}
}
