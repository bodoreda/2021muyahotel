package kr.co.wedding.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guestroom.model.vo.ReservedRoom;
import kr.co.member.model.vo.Member;
import kr.co.pet.model.vo.PetRoomReserve;
import kr.co.spa.model.vo.Spa;
import kr.co.wedding.model.dao.WeddingDao;
import kr.co.wedding.model.vo.WeddingHall;
import kr.co.wedding.model.vo.WeddingReserve;

@Service
public class WeddingService {
	@Autowired
	private WeddingDao dao;

	public int reserveWedding(WeddingReserve wr) {
		return dao.reserveWedding(wr);
	}

	public WeddingHall selectOneWh(String whNo) {
		return dao.selectOneWh(whNo);
	}

	public ArrayList<WeddingReserve> selectAllWr(String whNo) {
		return dao.selectAllWr(whNo);
	}

	public ArrayList<WeddingHall> selectAllWh() {
		return dao.selectAllWh();
	}

	public ArrayList<WeddingReserve> selectReservedWedding(Member m) {
		return dao.selectReservedWedding(m);
	}

	public ArrayList<Spa> selectReservedSpa(Member m) {
		return dao.selectReservedSpa(m);
	}

	public int deleteSpa(int spaNo) {
		return dao.deleteSpa(spaNo);
	}

	public int deleteWedding(int wrNo) {
		return dao.deleteWedding(wrNo);
	}

	public ArrayList<PetRoomReserve> selectReservedPrr(Member m) {
		return dao.selectReservedPrr(m);
	}

	public ArrayList<ReservedRoom> selectReservedGr(Member m) {
		return dao.selectReservedGr(m);
	}
	
	public int deleteGr(int reserveNo) {
		return dao.deleteGr(reserveNo);
	}

	
	public int deletePrr(int roomNo) {
		return dao.deletePrr(roomNo);
	}

	public WeddingReserve selectOneWr(int wrNo) {
		return dao.selectOneWr(wrNo);
	}

	public int selectWrNo() {
		return dao.selectWrNo();
	}


	
}
