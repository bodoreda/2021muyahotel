package kr.co.wedding.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.guestroom.model.vo.ReservedRoom;
import kr.co.member.model.vo.Member;
import kr.co.pet.model.vo.PetRoomReserve;
import kr.co.spa.model.vo.Spa;
import kr.co.wedding.model.vo.WeddingHall;
import kr.co.wedding.model.vo.WeddingReserve;

@Repository
public class WeddingDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int reserveWedding(WeddingReserve wr) {
		return sqlSession.insert("wedding.reserveWedding",wr);
	}

	public ArrayList<WeddingReserve> selectAllWr(String whNo) {
		List<WeddingReserve> list = sqlSession.selectList("wedding.selectAllWr",whNo);
		return (ArrayList<WeddingReserve>)list;
	}

	public WeddingHall selectOneWh(String whNo) {
		return sqlSession.selectOne("wedding.selectOneWh",whNo);
	}

	public ArrayList<WeddingHall> selectAllWh() {
		List<WeddingHall> list = sqlSession.selectList("wedding.selectAllWh");
		return (ArrayList<WeddingHall>)list;
	}

	public ArrayList<WeddingReserve> selectReservedWedding(Member m) {
		List<WeddingReserve> list = sqlSession.selectList("wedding.selectReservedWedding",m);
		return (ArrayList<WeddingReserve>)list;
	}

	public ArrayList<Spa> selectReservedSpa(Member m) {
		List<Spa> list = sqlSession.selectList("wedding.selectReservedSpa",m);
		return (ArrayList<Spa>)list;
	}

	public int deleteSpa(int spaNo) {
		return sqlSession.delete("wedding.deleteSpa",spaNo);
	}

	public int deleteWedding(int wrNo) {
		return sqlSession.delete("wedding.deleteWedding",wrNo);
	}

	public ArrayList<PetRoomReserve> selectReservedPrr(Member m) {
		List<PetRoomReserve> list = sqlSession.selectList("wedding.selectReservedPrr",m);
		return (ArrayList<PetRoomReserve>)list;
	}

	public ArrayList<ReservedRoom> selectReservedGr(Member m) {
		List<ReservedRoom> list = sqlSession.selectList("wedding.selectReservedGr",m);
		return (ArrayList<ReservedRoom>)list;
	}
	
	public int deleteGr(int reserveNo) {
		return sqlSession.delete("wedding.deleteGr",reserveNo);
	}

	public int deletePrr(int roomNo) {
		return sqlSession.delete("wedding.deletePrr",roomNo);
	}

	public WeddingReserve selectOneWr(int wrNo) {
		return sqlSession.selectOne("wedding.selectOneWr",wrNo);
	}

	public int selectWrNo() {
		return sqlSession.selectOne("wedding.selectWrNo");
	}
}
