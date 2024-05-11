package kr.co.event.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.event.model.vo.Event;
import kr.co.event.model.vo.EventPt;
import kr.co.member.model.vo.Member;

@Repository
public class EventDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Event> eventList() {
		List<Event>list = sqlSession.selectList("event.eventList");
		return (ArrayList<Event>)list;
	}

	public int insertMember(EventPt ep) {
		// TODO Auto-generated method stub
		return sqlSession.insert("eventPt.insertEvent",ep);
	}


	public int selectAllMemberCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("eventPt.eventCount");
	}

	public int insertEvent(Event e) {
		
		return  sqlSession.insert("event.insertEvent",e);
	}


	public ArrayList<Event> searchList(HashMap<String, String> map) {
		List<Event>list = sqlSession.selectList("event.searchList",map);
		return  (ArrayList<Event>)list;
	}

	public int selectAllEventCount(Event e) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("eventPt.allEventCount",e);
	}

	public int eventDelete(int evNo) {
		// TODO Auto-generated method stub
		return sqlSession.delete("event.eventDelete",evNo);
	}
	
	public EventPt selectEvent(EventPt ep) {
		// TODO Auto-generated method stub
		EventPt epEnter = sqlSession.selectOne("eventPt.selectEvent",ep);
		return epEnter;
	}

	public int eventUpdate(Event e) {
		// TODO Auto-generated method stub
		return sqlSession.update("event.eventUpdate",e);
	}

	
	
}
