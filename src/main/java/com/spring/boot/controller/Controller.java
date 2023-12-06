package com.spring.boot.controller;


import com.spring.boot.dto.AdminDTO;
import com.spring.boot.dto.EventDTO;
import com.spring.boot.dto.FeeDTO;
import com.spring.boot.dto.MemberDTO;
import com.spring.boot.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Member;
import java.util.List;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	private AdminService adminService;
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
			return "redirect:/login";
		}
		session.setAttribute("login", foundAdmin.getId());
		return "redirect:/";
	}

	@PostMapping(value = "/join")
	public String join() throws Exception{
		return "UserJoin";
	}

	@PostMapping(value = "/joinAction")
	public String joinAction(AdminDTO admin, HttpSession session) throws Exception{
		adminService.save(admin);

		session.setAttribute("login", admin.getId());
		return "redirect:/";
	}

	@RequestMapping(value = "/main")
	public String main(HttpSession session) throws Exception{
		System.out.println("login" + session.getAttribute("login"));
		if (session.getAttribute("login") == null) {
			return "redirect:/login";
		}
		return "main";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) throws Exception{
		session.setAttribute("login", null);

		return "redirect:/";
	}

	@RequestMapping(value = "/adminEdit")
	public String menu(HttpSession session) throws Exception{
		if (session.getAttribute("login") == null) {
			return "redirect:/login";
		}
		return "useredit";
	}

	@PostMapping(value = "/userEditAction/{id}")
	public String menu(@PathVariable("id") String id, AdminDTO admin, HttpSession session) throws Exception{
		if (session.getAttribute("login") == null) {
			return "redirect:/login";
		}
		adminService.update(id, admin.getPassword());
		System.out.println(session.getAttribute("login"));
		return "redirect:/logout";
	}


}
