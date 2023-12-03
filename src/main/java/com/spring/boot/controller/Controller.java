package com.spring.boot.controller;


import com.spring.boot.dto.AdminDTO;
import com.spring.boot.dto.FeeDTO;
import com.spring.boot.dto.MemberDTO;
import com.spring.boot.service.AdminService;
import com.spring.boot.service.FeeService;
import com.spring.boot.service.MemberService;
import com.spring.boot.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private AdminService adminService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private FeeService feeService;
	@Autowired
	private PayService payService;

	@RequestMapping(value = "/")
	public String index(HttpSession session) throws Exception{
		if (session.getAttribute("login") != null) {
			return "redirect:/main";
		}
		return "redirect:/login";
	}

	@RequestMapping(value = "/login")
	public String login(HttpSession session) throws Exception{
		return "index";
	}

	@PostMapping(value = "/loginAction")
	public String login(AdminDTO admin, HttpSession session) throws Exception{
		AdminDTO foundAdmin = adminService.login(admin);
		if (foundAdmin == null) {
			// TODO : 로그인 실패 경고창?
			return "redirect:/login";
		}
		System.out.println(foundAdmin);
		session.setAttribute("login", foundAdmin);
		return "redirect:/";
	}

	@PostMapping(value = "/join")
	public String join() throws Exception{
		return "UserJoin";
	}

	@PostMapping(value = "/joinAction")
	public String joinAction(AdminDTO admin, HttpSession session) throws Exception{
		System.out.println(admin);
		adminService.save(admin);

		session.setAttribute("login", admin);
		return "redirect:/";
	}

	@RequestMapping(value = "/main")
	public String main(HttpSession session) throws Exception{
		return "main";
	}
	@RequestMapping(value = "/menu")
	public String menu(HttpSession session) throws Exception{
		return "menu";
	}

	@RequestMapping(value = "/memberManager")
	public String memberManager(HttpSession session) throws Exception{
		return "memberManager";
	}
	@RequestMapping(value = "/eventManager")
	public String eventManager(HttpSession session) throws Exception{
		return "eventManager";
	}
	@RequestMapping(value = "/moneyManager")
	public String moneyManager(HttpSession session) throws Exception{
		return "moneyManager";
	}

//	@RequestMapping(value = "/list.action",
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView list(BoardDTO dto, HttpServletRequest request) throws Exception{
//
//		String pageNum = request.getParameter("pageNum");//문자만 따온건가?
//
//		int currentPage = 1;
//
//		if(pageNum!=null)
//			currentPage = Integer.parseInt(pageNum);
//
//		String searchKey = request.getParameter("searchKey");
//		String searchValue = request.getParameter("searchValue");
//
//		if(searchValue==null) {
//			searchKey = "subject";
//			searchValue = "";
//		}else {
//			if(request.getMethod().equalsIgnoreCase("GET")) {
//				searchValue = URLDecoder.decode(searchValue, "UTF-8");
//			}
//		}
//
//		int dataCount = boardService.getDataCount(searchKey, searchValue);
//
//		int numPerPage = 5;
//		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
//
//		if(currentPage>totalPage)
//			currentPage = totalPage;
//
//		int start = (currentPage-1)*numPerPage+1; // 1 6 11 16
//		int end = currentPage*numPerPage;
//
//		List<BoardDTO> lists = boardService.getLists(start, end, searchKey, searchValue);
//
//		String param = "";
//
//		if(searchValue!=null&&!searchValue.equals("")) { //널을 찾아내지 못하는경우가 있기때문에 양쪽에 부정문을 써준다.
//			param = "searchKey=" + searchKey;
//			param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
//		}
//
//		String listUrl = "/list.action";
//
//		if(!param.equals("")) {
//			listUrl += "?" + param;
//		}
//
//		String pageIndexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
//
//		String articleUrl = "/article.action?pageNum=" + currentPage;
//
//		if(!param.equals("")) {
//			articleUrl += "&" + param;
//		}
//
//		/*
//		request.setAttribute("lists", lists);
//		request.setAttribute("articleUrl", articleUrl);
//		request.setAttribute("pageIndexList", pageIndexList);
//		request.setAttribute("dataCount", dataCount);
//
//		return "bbs/list";
//		*/
//		//ModelAndView로 전송
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("lists", lists);
//		mav.addObject("articleUrl", articleUrl);
//		mav.addObject("pageIndexList", pageIndexList);
//		mav.addObject("dataCount", dataCount);
//
//		mav.setViewName("bbs/list");
//
//		return mav;
//	}
//
//	@RequestMapping(value = "/article.action",
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView article(HttpServletRequest request) throws Exception{
//
//		int num = Integer.parseInt(request.getParameter("num"));
//		String pageNum = request.getParameter("pageNum");
//
//		String searchKey = request.getParameter("searchKey");
//		String searchValue = request.getParameter("searchValue");
//
//		if(searchValue!=null) {
//			searchValue = URLDecoder.decode(searchValue, "UTF-8");
//		}
//
//		boardService.updateHitCount(num);
//
//		BoardDTO dto = boardService.getReadData(num);
//
//		if(dto==null) {
//
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("redirect:/list.action?pageNum=" + pageNum);
//			return mav;
//			//return "redirect:/list.action"; 반환값이 String 일때 이렇게 써주고 모델엔뷰니깐 위처럼
//		}
//
//		int lineSu = dto.getContent().split("\n").length;
//
//
//		String param = "pageNum=" + pageNum;
//		if(searchValue!=null&&!searchValue.equals("")) { //검색을 했다는뜻
//
//			param += "&searchKey=" + searchKey;
//			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
//	}
//
//	//모델엔뷰는 String을 받아내지 못한다.	ModelAndView mav = new ModelAndView();
//
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("dto", dto);
//		mav.addObject("params", param);
//		mav.addObject("lineSu", lineSu);
//		mav.addObject("pageNum", pageNum);
//
//		mav.setViewName("bbs/article");
//
//		return mav;
//
//	}
//
//	@RequestMapping(value = "/updated.action",
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView updated(HttpServletRequest request) throws Exception{
//
//		int num = Integer.parseInt(request.getParameter("num"));
//	  	String pageNum = request.getParameter("pageNum");
//
//
//	  	String searchKey = request.getParameter("searchKey");
//	  	String searchValue = request.getParameter("searchValue");
//
//	  	if(searchValue!=null) {
//		  	searchValue = URLDecoder.decode(searchValue, "UTF-8");
//	  	}
//
//	  	BoardDTO dto = boardService.getReadData(num);
//
//		if(dto==null) {
//
//			ModelAndView mav = new ModelAndView();
//			mav.setViewName("redirect:/list.action?pageNum=" + pageNum);
//			return mav;
//			//return "redirect:/list.action"; 반환값이 String 일때 이렇게 써주고 모델엔뷰니깐 위처럼
//		}
//
//		String param = "pageNum=" + pageNum;
//
//		if(searchValue!=null&&!searchValue.equals("")) {
//			param += "&searchKey=" +searchKey;
//			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
//		}
//
//		/*
//		request.setAttribute("dto", dto);
//		request.setAttribute("pageNum", pageNum);
//		request.setAttribute("params", param);
//		request.setAttribute("searchKey", searchKey);
//		request.setAttribute("searchValue", searchValue);
//
//		return "bbs/updated";
//		*/
//		//모델앤뷰 전송방식
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("dto", dto);
//		mav.addObject("pageNum", pageNum);
//		mav.addObject("params", param);
//		mav.addObject("searchKey", searchKey);
//		mav.addObject("searchValue", searchValue);
//
//		mav.setViewName("bbs/updated");
//
//		return mav;
//
//	}
//
//	@RequestMapping(value = "/updated_ok.action",
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView updated_ok(BoardDTO dto, HttpServletRequest request) throws Exception{
//
//		String pageNum = request.getParameter("pageNum");
//
//		String searchKey = request.getParameter("searchKey");
//		String searchValue = request.getParameter("searchValue");
//
//		dto.setContent(dto.getContent().replaceAll( "<br/>", "\r\n"));
//
//		boardService.updateData(dto);
//
//		String param = "?pageNum=" + pageNum;
//
//		if(searchValue!=null&&!searchValue.equals("")) {
//			param += "&searchKey=" + searchKey;
//			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
//		}
//		//ModelAndView는 데이터랑 경로가 같이 넘어갈때 사용 여긴 데이터가 안넘어가니깐 경로만 반환해주면됌
//		ModelAndView mav = new ModelAndView();
//
//		mav.setViewName("redirect:/list.action" + param);
//
//		return mav;
//  }
//
//
//	@RequestMapping(value = "/deleted_ok.action",
//			method = {RequestMethod.GET,RequestMethod.POST})
//	public ModelAndView deleted_ok(HttpServletRequest request) throws Exception{
//
//		int num = Integer.parseInt(request.getParameter("num"));
//		String pageNum = request.getParameter("pageNum");
//
//		String searchKey = request.getParameter("searchKey");
//		String searchValue = request.getParameter("searchValue");
//
//		boardService.deleteData(num);
//
//		String param = "?pageNum=" + pageNum;
//
//		if(searchValue!=null&&!searchValue.equals("")) {
//			param += "&searchKey=" + searchKey;
//			param += "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
//		}
//		ModelAndView mav = new ModelAndView();
//
//		mav.setViewName("redirect:/list.action" + param);
//
//		return mav;
//
//	}


	@RequestMapping(value = "/prac")
	public ModelAndView index() throws Exception{
//		System.out.println(payService.findByFeeId(2));
//
//		FeeDTO fee2 = new FeeDTO("fee2", 200, LocalDate.of(1111,1,1));
//		PayDTO pay11 = new PayDTO(1, 1, LocalDate.of(1111,1,1));
//		PayDTO pay12 = new PayDTO(1, 2, LocalDate.of(1111,1,1));
//		PayDTO pay21 = new PayDTO(2, 1, LocalDate.of(1111,1,1));
//		PayDTO pay22 = new PayDTO(2, 2, LocalDate.of(1111,1,1));
//		feeService.save(fee);
//		feeService.save(fee2);
//		payService.save(pay11);
//		payService.save(pay12);
//		payService.save(pay21);
//		payService.save(pay22);
//
//		System.out.println(feeService.findAll());
//		System.out.println(payService.findByFeeId(1));
//		System.out.println(payService.findByFeeId(2));
//
		List<FeeDTO> fees = feeService.findAll();
		FeeDTO fee = fees.get(0);
		int i = feeService.sumPayAmount(fee);
		System.out.println("i = " + i);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("index"); //jsp(html)로 갈때는 setViewName // class로 갈때는 setView

		return mav;
	}
		
}
