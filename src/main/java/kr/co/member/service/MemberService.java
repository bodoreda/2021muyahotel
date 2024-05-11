package kr.co.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.member.dao.MemberDao;
import kr.co.member.model.vo.DirectMessage;
import kr.co.member.model.vo.Member;


@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	public Member selectOneMember(Member m) {
		
		return dao.selectOneMember(m);
	}
	@Transactional
	public int insertMember(Member m) {
		
		return dao.insertMember(m);
	}

	public Member searchId(Member m) {
		// TODO Auto-generated method stub
		return dao.searchId(m);
	}

	public Member searchPw(Member m) {
		// TODO Auto-generated method stub
		return dao.searchPw(m);
	}
	@Transactional
	public int updateMember(Member m) {
		// TODO Auto-generated method stub
		return dao.updateMember(m);
	}
	@Transactional
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return dao.deleteMember(memberId);
	}
	//여기여기
	public ArrayList<Member> selectAllMember() {
		// TODO Auto-generated method stub
		return dao.selectAllMember();
	}
	@Transactional
	public int updateMemberLevel(Member m) {
		// TODO Auto-generated method stub
		return dao.updateMemberLevel(m);
	}
	@Transactional
	public int updateInputPoint(Member m) {
		// TODO Auto-generated method stub
		int result = dao.updateInputPoint(m);
		Member member = dao.selectOneMemberNum(m);
		System.out.println(member.getMemberPoint());
		if(member.getMemberPoint() >= 0 && member.getMemberPoint() <= 3000) {
			member.setMemberLevel(1);
		}else if(member.getMemberPoint() >= 3100 && member.getMemberPoint()<=8000) {
			member.setMemberLevel(2);
		}else if(member.getMemberPoint() >= 8100) {
			member.setMemberLevel(3);
		}
		return dao.updateGrade(member);
	}
	public Member selectOneMemberName(Member m) {
		// TODO Auto-generated method stub
		return dao.selectOneMemberName(m);
	}
	
	
	/*DM*/
	public ArrayList<DirectMessage> selectDmList(String memberId) {
		// TODO Auto-generated method stub
		return dao.selectDmList(memberId);
	}

	public ArrayList<String> receiverList(String memberId) {
		// TODO Auto-generated method stub
		return dao.receiverList(memberId);
	}
	@Transactional
	public int insertDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return dao.insertDm(dm);
	}

	public int dmCount(String memberId) {
		// TODO Auto-generated method stub
		return dao.dmCount(memberId);
	}
	public int deleteDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return dao.deleteDm(dm);
	}
	public int updateDm(int dmNo) {
		// TODO Auto-generated method stub
		return dao.updateDm(dmNo);
	}
}
