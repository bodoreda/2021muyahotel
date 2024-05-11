package kr.co.promotion.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.event.model.vo.Event;
import kr.co.member.model.vo.Member;
import kr.co.promotion.model.dao.PromotionDao;
import kr.co.promotion.model.vo.Promotion;

@Service
public class PromotionService {

	@Autowired
	private PromotionDao dao;

	public ArrayList<Promotion> proList() {
		// TODO Auto-generated method stub
		return dao.proList();
	}

	public int insertPro(Promotion p) {
		// TODO Auto-generated method stub
		return dao.insetPro(p);
	}

	public int proDelete(int proNo) {
		// TODO Auto-generated method stub
		return dao.proDelete(proNo);
	}

	
	
	/*프로모션 더보기 페이징*/
	public ArrayList<Promotion> proMore(int start) {
		int length = 4;	//더보기를 눌렀을 때 표시되는 사진의 갯수
		int end = start+length-1;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("end",end);
		map.put("length",length);
		map.put("start",start);
		
		return dao.proMore(map);
	}

	public int totalCount() {
		// TODO Auto-generated method stub
		return dao.proTotal();
	}

	public ArrayList<Promotion> searhList(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return dao.searchList(map);
	}

	public ArrayList<Event> eventList() {
		return dao.eventList();
	}
}
