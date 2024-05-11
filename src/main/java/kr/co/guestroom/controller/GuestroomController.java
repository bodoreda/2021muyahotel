package kr.co.guestroom.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.co.guestroom.model.service.GuestroomService;
import kr.co.guestroom.model.vo.Guestroom;
import kr.co.guestroom.model.vo.ReservedRoom;

@Controller
public class GuestroomController {
	@Autowired
	private GuestroomService service;
	
	@RequestMapping(value="/guestroom.do")
	public String GuestroomList(Model model) {
		ArrayList<Guestroom> list = service.selectAllGuestroom();
		model.addAttribute("list",list);
		return "guestroom/guestroomList";
	}
	
	@ResponseBody
	@RequestMapping(value="/reservedRoom.do",produces="application/json;charset=utf-8")
	public String reservedRoom(int roomNo) {
		ArrayList<ReservedRoom> list = service.selectReservedRoom(roomNo);
		return new Gson().toJson(list);
	}
	
	@RequestMapping(value="/reserve.do")
	public String reserveFrm(ReservedRoom rsv, Model model) {
		int roomNo = rsv.getRoomNo();
		Guestroom g = service.selectRoomName(roomNo);
		model.addAttribute("g",g);
		model.addAttribute("rsv",rsv);
		return "guestroom/reserveFrm";
	}
	
	@ResponseBody
	@RequestMapping(value="/reservation.do",produces="application/json;charset=utf-8")
	public String reserve(ReservedRoom rsv) {
		int result = service.insertReserve(rsv);
		String str;
		if(result > 0) {
			str = "객실 예약 성공!";
		}else {
			str = "객실 예약 실패..";
		}
		return new Gson().toJson(str);
	}
}
