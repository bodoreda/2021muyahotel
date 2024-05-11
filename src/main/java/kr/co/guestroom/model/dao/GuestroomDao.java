package kr.co.guestroom.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.guestroom.model.vo.Guestroom;
import kr.co.guestroom.model.vo.ReservedRoom;

@Repository
public class GuestroomDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	public List selectAllGuestroom() {
		List list = sqlSession.selectList("guestroom.selectAllGuestroom");
		return list;
	}
	public List selectReservedRoom(int roomNo) {
		List list = sqlSession.selectList("guestroom.selectReservedRoom", roomNo);
		return list;
	}
	public Guestroom selectRoomName(int roomNo) {
		return sqlSession.selectOne("guestroom.selectRoomName", roomNo);
	}
	public int insertReserve(ReservedRoom rsv) {
		return sqlSession.insert("guestroom.insertReserve",rsv);
	}
	
}
