package kr.co.guestroom.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.guestroom.model.dao.GuestroomDao;
import kr.co.guestroom.model.vo.Guestroom;
import kr.co.guestroom.model.vo.ReservedRoom;

@Service
public class GuestroomService {
	@Autowired
	private GuestroomDao dao;

	public ArrayList<Guestroom> selectAllGuestroom() {
		List list = dao.selectAllGuestroom();
		return (ArrayList<Guestroom>)list;
	}

	public ArrayList<ReservedRoom> selectReservedRoom(int roomNo) {
		List list = dao.selectReservedRoom(roomNo);
		return (ArrayList<ReservedRoom>)list;
	}

	public Guestroom selectRoomName(int roomNo) {
		return dao.selectRoomName(roomNo);
	}

	public int insertReserve(ReservedRoom rsv) {
		return dao.insertReserve(rsv);
	}



}
