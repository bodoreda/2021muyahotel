package kr.co.spa.service;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.member.model.vo.Member;
import kr.co.spa.dao.SpaDao;
import kr.co.spa.model.vo.Spa;

@Service
public class SpaService {
	@Autowired
	private SpaDao dao;

	public int resSpa(Spa spa) {
		// TODO Auto-generated method stub
		return dao.resSpa(spa);
	}

	public Spa selectOneSpa(int spaUser) {
		// TODO Auto-generated method stub
		return dao.selectOneSpa(spaUser);
	}

	public int resChk(Spa spa) {
		System.out.println(spa);
		Spa s = dao.resChk(spa);
		System.out.println(s);
		if(s==null) {
			
			int result = dao.resChkPeople(spa);
			if(result==8) {
				return 1;
			}
			else {
				return 0;
			}
		} else {
			return 1;
		}
	}

	public ArrayList<Spa> resView(Member m) {
		// TODO Auto-generated method stub
		return dao.resView(m);
	}
}
