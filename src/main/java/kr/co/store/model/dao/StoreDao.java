package kr.co.store.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.member.model.vo.Member;
import kr.co.store.model.vo.Basket;
import kr.co.store.model.vo.Payment;
import kr.co.store.model.vo.PetSupplies;

@Repository
public class StoreDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<PetSupplies> selectAllSup() {
		List<PetSupplies> list = sqlSession.selectList("store.selectAllSup");
		return (ArrayList<PetSupplies>)list;
	}
	
	public PetSupplies selectOneSup(PetSupplies ps) {
		return sqlSession.selectOne("store.selectOneSup",ps);
	}

	public int insertSup(PetSupplies ps) {
		return sqlSession.insert("store.insertSup",ps);
	}

	public int updateSup(PetSupplies ps) {
		return sqlSession.update("store.updateSup",ps);
	}

	public int deleteSup(String psNo) {
		return sqlSession.delete("store.deleteSup",psNo);
	}

	public int insertBasket(Basket bsk) {
		return sqlSession.insert("store.insertBasket",bsk);
	}

	public ArrayList<Basket> selectBasket(String memberId) {
		List<Basket> list = sqlSession.selectList("store.selectBasket",memberId);
		return (ArrayList<Basket>)list;
	}

	public int updateBasket(Basket basket) {
		return sqlSession.update("store.updateBasket",basket);
	}

	public int deleteBasket(int basketNo) {
		return sqlSession.delete("store.deleteBasket",basketNo);
	}

	public int insertPayment(Payment pm) {
		return sqlSession.insert("store.insertPayment",pm);
	}

	public int updateBasketStatus(Basket bsk) {
		return sqlSession.update("store.updateBasketStatus",bsk);
	}

	public ArrayList<Payment> selectPayment(String memberId) {
		List<Payment> list = sqlSession.selectList("store.selectPayment",memberId);
		return (ArrayList<Payment>)list;
	}
	
	public int updateMemberPoint(Member m) {
		return sqlSession.update("store.updateMemberPoint",m);
	}
}
