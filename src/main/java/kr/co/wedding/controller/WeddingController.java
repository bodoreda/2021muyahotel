package kr.co.wedding.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.co.guestroom.model.vo.ReservedRoom;
import kr.co.member.model.vo.Member;
import kr.co.pet.model.vo.PetRoomReserve;
import kr.co.spa.model.vo.Spa;
import kr.co.wedding.model.service.WeddingService;
import kr.co.wedding.model.vo.WeddingHall;
import kr.co.wedding.model.vo.WeddingReserve;

@Controller
public class WeddingController {
	@Autowired
	private WeddingService service;
	
	@RequestMapping(value="/wedding.do")
	public String wedding(Model model) {
		return "wedding/weddingMain";
	}
	
	@RequestMapping(value="/weddingReserveFrm.do")
	public String weddingReserveFrm(Model model, String whNo) {
		ArrayList<WeddingReserve> list = service.selectAllWr(whNo);
		WeddingHall wh = service.selectOneWh(whNo);
		model.addAttribute("list",list);
		model.addAttribute("wh",wh);
		return "wedding/weddingReserveFrm";
	}
	
	@RequestMapping(value="/reserveWedding.do")
	public String reserveWedding(WeddingReserve wr, Model model) {
		int result = service.reserveWedding(wr);
		if(result>0) {
			int wrNo = service.selectWrNo();
			WeddingReserve weddingReserve = service.selectOneWr(wrNo);
			model.addAttribute("weddingReserve",weddingReserve);
			return "wedding/weddingReserveChk";
		}else {
			model.addAttribute("msg","예약에 실패했습니다.");
			model.addAttribute("loc","/");
			return "common/msg";
		}
		
		
	}
	@RequestMapping(value="/selectReserved.do")
	public String selectReservedWedding(Model model,@SessionAttribute Member m) {
		ArrayList<ReservedRoom> grList = service.selectReservedGr(m);
		ArrayList<PetRoomReserve> prrList = service.selectReservedPrr(m);
		ArrayList<Spa> spaList = service.selectReservedSpa(m);
		ArrayList<WeddingReserve> weddingList = service.selectReservedWedding(m);
		model.addAttribute("grList",grList);
		model.addAttribute("prrList",prrList);
		model.addAttribute("spaList",spaList);
		model.addAttribute("weddingList",weddingList);
		return "common/reserved";
	}
	@ResponseBody
	@RequestMapping(value="/deleteSpa.do",method=RequestMethod.POST)
	public String deleteSpa(@RequestParam(value="spaNo[]") List<Integer> spaNo, Model model) {
		System.out.println(spaNo);
		int result = 0;
		for(int i=0;i<spaNo.size();i++) {
			result = service.deleteSpa(spaNo.get(i));			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/deleteWedding.do",method=RequestMethod.POST)
	public String deleteWedding(@RequestParam(value="wrNo[]") List<Integer> wrNo, Model model) {
		System.out.println(wrNo);
		int result = 0;
		for(int i=0;i<wrNo.size();i++) {
			result = service.deleteWedding(wrNo.get(i));			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/deletePrr.do",method=RequestMethod.POST)
	public String deletePrr(@RequestParam(value="roomNo[]") List<Integer> roomNo, Model model) {
		System.out.println(roomNo);
		int result = 0;
		for(int i=0;i<roomNo.size();i++) {
			result = service.deletePrr(roomNo.get(i));			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteGr.do",method=RequestMethod.POST)
	public String deleteGr(@RequestParam(value="reserveNo[]") List<Integer> reserveNo, Model model) {
		System.out.println(reserveNo);
		int result = 0;
		for(int i=0;i<reserveNo.size();i++) {
			result = service.deleteGr(reserveNo.get(i));			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
}
