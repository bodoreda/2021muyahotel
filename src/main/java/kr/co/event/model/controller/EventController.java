package kr.co.event.model.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import kr.co.event.model.service.EventService;
import kr.co.event.model.vo.Event;
import kr.co.event.model.vo.EventPt;
import kr.co.member.model.vo.Member;

@Controller
public class EventController {
	@Autowired
	private EventService service;
	
	@RequestMapping(value="/eventList.do")
	public String eventList(Model model) {
		ArrayList<Event>list = service.eventList();
		model.addAttribute("list", list);
		return "event/eventList";
	}
	
	@RequestMapping(value="/eventWriteFrm.do")
	public String eventWriteFrm() {
		return "event/eventWriteFrm";
	}
	
	
	@RequestMapping(value="/eventWrite.do")
	public String eventWrite(String evContent,String evTitle,String evDate,MultipartFile file,HttpServletRequest request, Model model) {
		if(file.isEmpty()) {
			//첨부파일이 없는경우
		}else {
		
		String savePath = request.getSession()
				.getServletContext()
				.getRealPath("/resources/upload/event/");
		
			//실제 유저가 올린 파일명(filename)
			String filename = file.getOriginalFilename();
			//유저가 올린 파일명을 마지막 . 기준으로 분리     test.txt -> test / .txt
			String onlyFilename = filename.substring(0,filename.indexOf("."));//test
			String extention = filename.substring(filename.indexOf("."));//.txt
			String filepath = null;
			int count = 0;			
			while(true) {
				if(count == 0) {
					filepath = onlyFilename+extention;//text.txt
				}else {
					filepath = onlyFilename+"_"+count+extention;//test_4.txt
				}
				File checkFile = new File(savePath+filepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
		
		Event e = new Event();
		e.setFilePath(filepath);
		e.setFileName(filename);
		e.setEvContent(evContent);
		e.setEvTitle(evTitle);
		e.setEvDate(evDate);
		
		System.out.println("filename : "+filename);
		System.out.println("filepath : "+filepath);
		
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(new File(savePath+filepath));
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			byte[] bytes = file.getBytes();
			bos.write(bytes);
			bos.close();
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
					
		int result = service.insertEvent(e);
			
	if(result>0) {
		model.addAttribute("msg", "이벤트 등록성공");
	}else {
		model.addAttribute("msg", "이벤트 등록실패");
	}
		model.addAttribute("loc", "/eventList.do");
		}
		return "common/msg";
}

	
	@RequestMapping(value="/eventEnter.do")
	public String eventEnter(int evNo,String memberId,Model model) {
		EventPt ep = new EventPt();
		ep.setEvNo(evNo);
		ep.setMemberId(memberId);
		
		int result = service.insertEvent(ep);
		if(result>0) {
			model.addAttribute("msg", "이벤트 참여 성공");
		}else if(result<0){
			model.addAttribute("msg", "이미 참여중인 이벤트입니다.");
		}else {
			model.addAttribute("msg", "이벤트 참여실패");
		}
		model.addAttribute("loc", "/eventList.do");
		return "common/msg";
	
	}
	
	
	@RequestMapping(value="/searchlist.do")
	public String searchList(Event e,String searchCondition,String searchkeyword ,Model model) {
//		String searchCondition = searchCondition.checkNull(request.getParameter("searchCondition"));
//		String searchkeyword = searchkeyword.checkNull(request.getParameter("searchkeyword"));
		
		HashMap<String,String> map = new HashMap<String,String>();
		map.put("searchCondition", searchCondition);
		map.put("searchkeyword", searchkeyword);
		
		
		System.out.println(map);
		ArrayList<Event>list = service.searhList(map);
		
		model.addAttribute("list", list);
		System.out.println(list);
		if(list.size()== 0) {
			return "event/noSearch";
		}
		return "event/eventList";
	}
	@ResponseBody
	@RequestMapping(value="/eventCount.do")
	public int eventCount(Event e,Model model) {
		int result = service.selectAllEventCount(e);
		model.addAttribute("msg", "총 참여 수는 "+result+"명 입니다.");
		model.addAttribute("loc", "/eventList.do");
		return result;
	}
	
	@RequestMapping(value="/eventDelete.do")
	public String eventDelete(int evNo, Model model) {
		int result = service.eventDelete(evNo);
		if(result>0) {
			model.addAttribute("msg", "이벤트 삭제 성공");
		}else {
			model.addAttribute("msg", "이벤트 삭제 실패");
		}
		model.addAttribute("loc", "/eventList.do");
		return "common/msg";
	}
	
	
	@RequestMapping(value="/eventUpdate.do")
	public String eventUpdate(Event e,Model model) {
		int result = service.eventUpdate(e);
		if(result>0) {
			model.addAttribute("msg","수정 완료");
		}else {
			model.addAttribute("msg","수정 실패");
		}
		model.addAttribute("loc","/eventList.do");
		return "common/msg";
	}
	
	
}


	