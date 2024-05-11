package kr.co.promotion.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.event.model.vo.Event;
import kr.co.member.model.vo.Member;
import kr.co.promotion.model.vo.Promotion;

@Repository
public class PromotionDao {
	
	@Autowired
	private SqlSessionTemplate session;

	public ArrayList<Promotion> proList() {
		List<Promotion> list = session.selectList("pro.proList");
		return (ArrayList<Promotion>)list;
	}

	public int insetPro(Promotion p) {
		// TODO Auto-generated method stub
		return session.insert("pro.insertPro",p);
	}

	public int proDelete(int proNo) {
		// TODO Auto-generated method stub
		return session.delete("pro.deletePro",proNo);
	}

	

	/*프로모션 더보기 페이징*/
	public ArrayList<Promotion> proMore(HashMap<String, Integer> map) {
		List<Promotion>list = session.selectList("pro.proMore",map);
		return  (ArrayList<Promotion>)list;
	}

	public int proTotal() {
		// TODO Auto-generated method stub
		return session.selectOne("pro.proTotal");
	}

	public ArrayList<Promotion> searchList(HashMap<String, String> map) {
		List<Promotion>list = session.selectList("pro.searchList",map);
		return  (ArrayList<Promotion>)list;
	}
	
	public ArrayList<Event> eventList() {
		List<Event>list = session.selectList("event.eventList");
		return (ArrayList<Event>)list;
	}

	
}
