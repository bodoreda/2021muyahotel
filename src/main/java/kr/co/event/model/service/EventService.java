package kr.co.event.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.event.model.dao.EventDao;
import kr.co.event.model.vo.Event;
import kr.co.event.model.vo.EventPt;
import kr.co.member.model.vo.Member;

@Service
public class EventService {
	@Autowired
	private EventDao dao;

	public ArrayList<Event> eventList() {
		// TODO Auto-generated method stub
		return dao.eventList();
	}


	public int insertEvent(EventPt ep) {
		EventPt epEnter = dao.selectEvent(ep);
		if(epEnter != null) {
			return -1;
		}else {
		 return dao.insertMember(ep);
		}
	}
	

	public int selectAllMemberCount() {
		// TODO Auto-generated method stub
		return dao.selectAllMemberCount();
	}


	public int insertEvent(Event e) {
		// TODO Auto-generated method stub
		return dao.insertEvent(e);
	}



	public ArrayList<Event> searhList(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		return dao.searchList(map);
	}


	public int selectAllEventCount(Event e) {
		// TODO Auto-generated method stub
		return dao.selectAllEventCount(e);
	}


	public int eventDelete(int evNo) {
		// TODO Auto-generated method stub
		return dao.eventDelete(evNo);
	}

	public int eventUpdate(Event e) {
		// TODO Auto-generated method stub
		return dao.eventUpdate(e);
	}
	

	


}
