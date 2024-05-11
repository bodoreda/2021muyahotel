package kr.co.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;

import kr.co.member.model.vo.DirectMessage;
import kr.co.member.model.vo.Member;
import kr.co.member.service.MemberService;


@Controller

public class MemberController {
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/loginFrm.do")
	public String loginFrm() {
		return "member/loginFrm";
	}
	
	@RequestMapping(value="/login.do")
	public String login(Member m,HttpSession session,Model model) {
		Member member = service.selectOneMember(m);
		if(member!=null) {			 
			session.setAttribute("m", member);
			model.addAttribute("msg","로그인 성공");						
		}else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";		
	}
	
	@RequestMapping(value="/joinForm.do")
	public String joinForm() {
		return "member/joinForm";
	}
	@RequestMapping(value="/joinFrm.do")
	public String joinFrm() {
		return "member/joinFrm";
	}
	@RequestMapping(value="/join.do")
	public String join(Member m, Model model) {
		int result = service.insertMember(m);
		if(result>0) {
			Member mem = service.selectOneMemberName(m);
			model.addAttribute("mem",mem);
			System.out.println(mem.getMemberName());
			return "member/check";
		}else {
			model.addAttribute("msg", "회원가입 실패");
			model.addAttribute("loc", "/");
			return "common/msg";
	}
	}
	@RequestMapping(value="/idSearchFrm.do")
	public String idSearchFrm() {
		return "member/idSearchFrm";
	}
	@RequestMapping(value="/idSearch.do")
	public String idSearch(Member m,Model model) {
		Member member = service.searchId(m);
		if(member!=null) {
			model.addAttribute("msg","아이디는 ["+member.getMemberId()+"] 입니다.");
		}else {
			model.addAttribute("msg","이름 또는 휴대폰번호를 다시 입력해주세요.");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@ResponseBody
	@RequestMapping(value="/idCheck.do")
	public String idCheck(Member m, Model model) {
		Member member = service.selectOneMember(m);
		if( member!=null) {
			return "1";
		
		}else {
			return "0";
		}
		
		
	}
	
	@RequestMapping(value="/pwSearchFrm.do")
	public String pwSearchFrm() {
		return "member/pwSearchFrm";
	}
	
	@RequestMapping(value="/pwSearch.do")
	public String pwSearch(Member m,Model model) {
		Member member = service.searchPw(m);
		if(member!=null) {
			model.addAttribute("msg","비밀번호는 ["+member.getMemberPw()+"] 입니다.");
		}else {
			model.addAttribute("msg","아이디 또는 이름을 다시 입력해주세요.");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/mypage.do")
	public String mypage(@SessionAttribute Member m,Model model) {
		Member mem = new Member();
		mem.setMemberId(m.getMemberId());
		Member member = service.selectOneMember(mem);
		model.addAttribute("m", member);
		return "member/mypage";
	}
	@RequestMapping(value="/updateMember.do")
	public String updateMember(Member m,Model model) {
		int result = service.updateMember(m);
		if(result>0) {
			model.addAttribute("msg","정보수정이 완료되었습니다.");
		}else {
			model.addAttribute("msg","다시입력해주세요.");
		}
		model.addAttribute("loc","/mypage.do");
		return "common/msg";
	}
	@RequestMapping(value="/deleteMember.do")
	public String deleteMember(String memberId,HttpSession session,Model model) {
		int result = service.deleteMember(memberId);
		if(result>0) {
			session.invalidate();
			model.addAttribute("msg", "탈퇴되었습니다.");
		}else {
			model.addAttribute("msg", "에러발생");
		}
		model.addAttribute("loc", "/");
		return "common/msg";
	}
	@RequestMapping(value="/check.do")
	public String check() {
		return "member/check";
	}
	//여기여기
	@RequestMapping(value="/admin.do")
	public String admin(Model model) {
		ArrayList<Member> list = service.selectAllMember();
		model.addAttribute("list", list);
		return "member/admin";
	}
	@RequestMapping(value="/changeLevel.do")
	public String changeLevel(Member m, Model model) {
		int result = service.updateMemberLevel(m);
		if(result>0) {
			model.addAttribute("msg","등급변경이 되었습니다.");
		}else {
			model.addAttribute("msg","다시입력해주세요.");
		}
		model.addAttribute("loc","/admin.do");
		return "common/msg";
	}
	@RequestMapping(value="/inputPoint.do")
	public String inputPoint(Member m, Model model) {
		int result = service.updateInputPoint(m);
		if(result>0) {
			model.addAttribute("msg","포인트입력이 완료되었습니다.");
		}else {
			model.addAttribute("msg","다시입력해주세요.");
		}
		model.addAttribute("loc","/admin.do");
		return "common/msg";
	}
	
	
	
	/*DM*/
	@RequestMapping(value="/dmList.do")
	public String dmList(@SessionAttribute(required = false) Member m, Model model) {
		ArrayList<DirectMessage> list = service.selectDmList(m.getMemberId());
		model.addAttribute("list", list);
		if(m.getMemberId().equals("admin")) {
			return "dm/dmAdmin";
		}
		return "dm/dmList";
	}
	@ResponseBody
	@RequestMapping(value="/receiverList.do",produces="application/json;charset=utf-8")
	public String receiverList(@SessionAttribute Member m) {
		ArrayList<String> list = service.receiverList(m.getMemberId());
		return new Gson().toJson(list);
	}
	@ResponseBody
	@RequestMapping(value="/sendDm.do")
	public int sendDm(DirectMessage dm) {
		return service.insertDm(dm);
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteDm.do")
	public String delete(DirectMessage dm) {
		int result = service.deleteDm(dm);
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	
	}
	@RequestMapping(value="/updateDm.do")
	public String updateDm(int dmNo,Model model) {
		int result = service.updateDm(dmNo);
		if(result>0) {
			model.addAttribute("msg","읽기 완료");
		}else {
			model.addAttribute("msg","읽기 실패.");
		}
		model.addAttribute("loc","/dmList.do");
		return "common/msg";
	}
	
}

