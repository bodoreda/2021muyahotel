package kr.co.member.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.member.model.vo.DirectMessage;
import kr.co.member.model.vo.Member;



@Repository
public class MemberDao {
	@Autowired 
	private SqlSession session;
	public Member selectOneMember(Member m) {
		
		return session.selectOne("member.selectOneMember",m);
	}
	public int insertMember(Member m) {
		
		return session.insert("member.insertMember",m);
	}
	public Member searchId(Member m) {
		// TODO Auto-generated method stub
		return session.selectOne("member.searchId",m);
	}
	public Member searchPw(Member m) {
		// TODO Auto-generated method stub
		return session.selectOne("member.searchPw",m);
	}
	public int updateMember(Member m) {
		// TODO Auto-generated method stub
		return session.update("member.updateMember",m);
	}
	public int deleteMember(String memberId) {
		// TODO Auto-generated method stub
		return session.delete("member.deleteMember",memberId);
	}
	//여기여기
	public ArrayList<Member> selectAllMember() {
		List<Member>list = session.selectList("member.selectAllMember");
		return (ArrayList<Member>)list;
	}
	public int updateMemberLevel(Member m) {
		// TODO Auto-generated method stub
		return session.update("member.updateMemberLevel",m);
	}
	public int updateInputPoint(Member m) {
		// TODO Auto-generated method stub
		return session.update("member.updateInputPoint",m);
	}
	public int updateGrade(Member member) {
		// TODO Auto-generated method stub
		return session.update("member.updateGrade",member);
	}
	public Member selectOneMemberName(Member m) {
		// TODO Auto-generated method stub
		return session.selectOne("member.selectOneMember",m);
	}

	
	/*DM*/
	public ArrayList<DirectMessage> selectDmList(String memberId) {
		List<DirectMessage> list= session.selectList("member.selectDmList",memberId);
		return (ArrayList<DirectMessage>)list;
	}
	public ArrayList<String> receiverList(String memberId) {
		List<String> list = session.selectList("member.receiverList",memberId);
		return (ArrayList<String>)list;
	}
	public int insertDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return session.insert("member.insertDm",dm);
	}
	public int dmCount(String memberId) {
		// TODO Auto-generated method stub
		return session.selectOne("member.dmCount",memberId);
	}
	public int deleteDm(DirectMessage dm) {
		// TODO Auto-generated method stub
		return session.delete("member.deleteDm",dm);
	}

	public int updateDm(int dmNo) {
		// TODO Auto-generated method stub
		return session.update("member.updateDm",dmNo);
	}
	public Member selectOneMemberNum(Member m) {
		// TODO Auto-generated method stub
		return session.selectOne("member.selectOneMemberNum",m);
	}
	
}
