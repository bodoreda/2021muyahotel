package kr.co.spa.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.member.model.vo.Member;
import kr.co.spa.model.vo.Spa;

@Repository
public class SpaDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int resSpa(Spa spa) {
		int result = sqlSession.insert("spa.resSpa",spa);
		return result;
	}

	public Spa selectOneSpa(int spaUser) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("spa.selectOneSpa",spaUser);
	}

	public Spa resChk(Spa spa) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("spa.resChk",spa);
	}

	public int resChkPeople(Spa spa) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("spa.resChkPeople",spa);
	}

	public ArrayList<Spa> resView(Member m) {
		List<Spa> list = sqlSession.selectList("spa.resView",m);
		return (ArrayList<Spa>)list;
	}
}
