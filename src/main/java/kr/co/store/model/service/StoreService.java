package kr.co.store.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.member.model.vo.Member;
import kr.co.store.model.dao.StoreDao;
import kr.co.store.model.vo.Basket;
import kr.co.store.model.vo.Payment;
import kr.co.store.model.vo.PetSupplies;

@Service
public class StoreService {
	@Autowired
	private StoreDao dao;

	public ArrayList<PetSupplies> selectAllSup() {
		return dao.selectAllSup();
	}
	
	public PetSupplies selectOneSup(PetSupplies ps) {
		return dao.selectOneSup(ps);
	}

	public int insertSup(PetSupplies petSupplies) {
		return dao.insertSup(petSupplies);
	}

	public int updateSup(PetSupplies petSupplies) {
		return dao.updateSup(petSupplies);
	}

	public int deleteSup(String psNo) {
		return dao.deleteSup(psNo);
	}

	public int insertBasket(Basket bsk) {
		return dao.insertBasket(bsk);
	}

	public ArrayList<Basket> selectBasket(String memberId) {
		return dao.selectBasket(memberId);
	}

	public int updateBasket(Basket basket) {
		return dao.updateBasket(basket);
	}

	public int deleteBasket(int basketNo) {
		return dao.deleteBasket(basketNo);
	}

	public int insertPayment(Payment pm) {
		return dao.insertPayment(pm);
	}

	public int updateBasketStatus(Basket bsk) {
		return dao.updateBasketStatus(bsk);
	}

	public ArrayList<Payment> selectPayment(String memberId) {
		return dao.selectPayment(memberId);
	}
	
	public int updateMemberPoint(Member m) {
		return dao.updateMemberPoint(m);
	}
}
