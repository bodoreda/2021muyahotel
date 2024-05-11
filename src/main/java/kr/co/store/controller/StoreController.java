package kr.co.store.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

import kr.co.member.model.vo.Member;
import kr.co.store.model.service.StoreService;
import kr.co.store.model.vo.Basket;
import kr.co.store.model.vo.Payment;
import kr.co.store.model.vo.PetSupplies;

@Controller
public class StoreController {
	@Autowired
	private StoreService service;
	
	@RequestMapping(value="/store.do")
	public String store(Model model) {
		ArrayList<PetSupplies> list = service.selectAllSup();
		model.addAttribute("list",list);
		return "store/storeMain";
	}
	
	@RequestMapping(value="storeInfo.do")
	public String storeInfo(PetSupplies ps, Model model) {
		PetSupplies petSupplies = service.selectOneSup(ps);
		model.addAttribute("petSupplies",petSupplies);
		return "store/storeInfo";
	}
	
	@RequestMapping(value="/insertSupFrm.do")
	public String insertSupFrm() {
		return "store/insertSupFrm";
	}
	@RequestMapping(value="/updateSupFrm.do")
	public String updateSupFrm(PetSupplies ps, Model model){
		PetSupplies petSupplies = service.selectOneSup(ps);
		model.addAttribute("petSupplies",petSupplies);
		return "store/updateSupFrm";
	}
	@RequestMapping(value="/deleteSup.do")
	public String deleteSup(String psNo, Model model) {
		int result = service.deleteSup(psNo);
		if(result>0) {
			model.addAttribute("msg","삭제 성공");
		}else {
			model.addAttribute("msg","삭제 실패");
		}
		model.addAttribute("loc","/store.do");
		return "common/msg";
	}
	
	@RequestMapping(value="/updateSup.do")
	public String updateSup(PetSupplies ps, MultipartFile mainImgFile, MultipartFile subImgFile, HttpServletRequest request, Model model) {
		kr.co.store.model.vo.PetSupplies petSupplies = new kr.co.store.model.vo.PetSupplies();
		if(mainImgFile.isEmpty() || subImgFile.isEmpty()) {
			//첨부파일이 없는 경우
		}else {
			String savePath = request.getSession().getServletContext().getRealPath("/img/store/");
			String mainFilename = mainImgFile.getOriginalFilename();
			String mainOnlyFilename = mainFilename.substring(0,mainFilename.indexOf("."));
			String mainExtention = mainFilename.substring(mainFilename.indexOf("."));
			String mainFilepath = null;
			int count = 0;
			while(true) {
				if(count == 0) {
					mainFilepath = mainImgFile.getOriginalFilename()+mainExtention;
				}else {
					mainFilepath = mainOnlyFilename+"_"+count+mainExtention;
				}
				File checkFile = new File(savePath+mainFilepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
			petSupplies.setMainImg(mainFilepath);
			try {
				FileOutputStream fos = new FileOutputStream(new File(savePath+mainFilepath));
				BufferedOutputStream bos = new BufferedOutputStream(fos);
				byte[] bytes = mainImgFile.getBytes();
				bos.write(bytes);
				bos.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String subFilename = subImgFile.getOriginalFilename();
			String subOnlyFilename = subFilename.substring(0,subFilename.indexOf("."));
			String subExtention = subFilename.substring(subFilename.indexOf("."));
			String subFilepath = null;
			while(true) {
				if(count == 0) {
					subFilepath = subImgFile.getOriginalFilename()+subExtention;
				}else {
					subFilepath = subOnlyFilename+"_"+count+subExtention;
				}
				File checkFile = new File(savePath+subFilepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
			petSupplies.setSubImg(subFilepath);
			try {
				FileOutputStream fos = new FileOutputStream(new File(savePath+subFilepath));
				BufferedOutputStream bos = new BufferedOutputStream(fos);
				byte[] bytes = subImgFile.getBytes();
				bos.write(bytes);
				bos.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		petSupplies.setPsNo(ps.getPsNo());
		petSupplies.setPsCate(ps.getPsCate());
		petSupplies.setPsName(ps.getPsName());
		petSupplies.setPsPrice(ps.getPsPrice());
		petSupplies.setPsContent(ps.getPsContent());
		
		int result = service.updateSup(petSupplies);
		if(result!=-1) {
			model.addAttribute("msg","수정성공");
		}else {
			model.addAttribute("msg","수정실패");
		}
		model.addAttribute("loc","/storeInfo.do?psNo="+petSupplies.getPsNo());
		return "common/msg";
	}
	@RequestMapping(value="/insertSup.do")
	public String insertSup(PetSupplies ps, MultipartFile mainImgFile, MultipartFile subImgFile, HttpServletRequest request, Model model) {
		kr.co.store.model.vo.PetSupplies petSupplies = new kr.co.store.model.vo.PetSupplies();
		if(mainImgFile.isEmpty() || subImgFile.isEmpty()) {
			//첨부파일이 없는 경우
		}else {
			String savePath = request.getSession().getServletContext().getRealPath("/img/store/");
			String mainFilename = mainImgFile.getOriginalFilename();
			String mainOnlyFilename = mainFilename.substring(0,mainFilename.indexOf("."));
			String mainExtention = mainFilename.substring(mainFilename.indexOf("."));
			String mainFilepath = null;
			int count = 0;
			while(true) {
				if(count == 0) {
					mainFilepath = mainImgFile.getOriginalFilename()+mainExtention;
				}else {
					mainFilepath = mainOnlyFilename+"_"+count+mainExtention;
				}
				File checkFile = new File(savePath+mainFilepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
			petSupplies.setMainImg(mainFilepath);
			try {
				FileOutputStream fos = new FileOutputStream(new File(savePath+mainFilepath));
				BufferedOutputStream bos = new BufferedOutputStream(fos);
				byte[] bytes = mainImgFile.getBytes();
				bos.write(bytes);
				bos.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String subFilename = subImgFile.getOriginalFilename();
			String subOnlyFilename = subFilename.substring(0,subFilename.indexOf("."));
			String subExtention = subFilename.substring(subFilename.indexOf("."));
			String subFilepath = null;
			while(true) {
				if(count == 0) {
					subFilepath = subImgFile.getOriginalFilename()+subExtention;
				}else {
					subFilepath = subOnlyFilename+"_"+count+subExtention;
				}
				File checkFile = new File(savePath+subFilepath);
				if(!checkFile.exists()) {
					break;
				}
				count++;
			}
			petSupplies.setSubImg(subFilepath);
			try {
				FileOutputStream fos = new FileOutputStream(new File(savePath+subFilepath));
				BufferedOutputStream bos = new BufferedOutputStream(fos);
				byte[] bytes = subImgFile.getBytes();
				bos.write(bytes);
				bos.close();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		petSupplies.setPsCate(ps.getPsCate());
		petSupplies.setPsName(ps.getPsName());
		petSupplies.setPsPrice(ps.getPsPrice());
		petSupplies.setPsContent(ps.getPsContent());
		
		int result = service.insertSup(petSupplies);
		if(result!=-1) {
			model.addAttribute("msg","등록성공");
		}else {
			model.addAttribute("msg","등록실패");
		}
		model.addAttribute("loc","/store.do");
		return "common/msg";
	}
	
	@RequestMapping(value="/basket.do")
	public String basket(Model model, String memberId) {
		ArrayList<Basket> list = service.selectBasket(memberId);
		model.addAttribute("list",list);
		return "store/basket";
	}
	
	@ResponseBody
	@RequestMapping(value="/insertBasket.do",produces="application/json;charset=utf-8")
	public String insertBasket(Basket basket, Model model) {
		int result = service.insertBasket(basket);
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}

	@ResponseBody
	@RequestMapping(value="/updateBasket.do",produces="application/json;charset=utf-8")
	public String updateBasket(Basket basket, Model model) {
		int result = service.updateBasket(basket);
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/updateBasketStatus.do",method=RequestMethod.POST)
	public String updateBasketStatus(@RequestParam(value="basketNo[]") List<Integer> basketNo, String basketStatus, Model model) {
		int result = 0;
		for(int i=0;i<basketNo.size();i++) {
			Basket bsk = new Basket();
			bsk.setBasketNo(basketNo.get(i));
			bsk.setBasketStatus(basketStatus);
			result = service.updateBasketStatus(bsk);			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/insertPayment.do",method=RequestMethod.POST)
	public String insertPayment(@RequestParam(value="basketNo[]") List<Integer> basketNo, String paymentDate, String memberId, Model model) {
		int result = 0;
		for(int i=0;i<basketNo.size();i++) {
			Payment pm = new Payment();
			pm.setBasketNo(basketNo.get(i));
			pm.setPaymentDate(paymentDate);
			pm.setMemberId(memberId);
			result = service.insertPayment(pm);			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/deleteBasket.do",method=RequestMethod.POST)
	public String deleteBasket(@RequestParam(value="basketNo[]") List<Integer> basketNo, Model model) {
		System.out.println(basketNo);
		int result = 0;
		for(int i=0;i<basketNo.size();i++) {
			result = service.deleteBasket(basketNo.get(i));			
		}
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	
	@RequestMapping(value="/selectPayment.do")
	public String selectPayment(Model model, String memberId) {
		ArrayList<Payment> list = service.selectPayment(memberId);
		model.addAttribute("list",list);
		return "store/payment";
	}
	
	@ResponseBody
	@RequestMapping(value="/updateMemberPoint.do",produces="application/json;charset=utf-8")
	public String updateMemberPoint(Member m, Model model) {
		int result = service.updateMemberPoint(m);
		if(result>0) {
			return "1";
		}else {
			return "0";
		}
	}
	
}
