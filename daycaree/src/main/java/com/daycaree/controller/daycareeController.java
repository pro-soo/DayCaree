package com.daycaree.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.daycaree.service.daycareeService;
import com.daycaree.vo.InformationVO;
import com.daycaree.vo.MemberVO;

@Controller
public class daycareeController {
	@Resource(name="daycareeService")
	public daycareeService daycareeService;
	
	@RequestMapping(value="/", method=RequestMethod.GET)	// 첫 페이지
	public String start(Locale locale, Model model) throws Exception{
		return "welcome";
	}
	
	
	@RequestMapping(value="/loginpage.do", method=RequestMethod.GET)	// 로그인
	public String loginpage(Locale locale, Model model) throws Exception{
		return "login";
	}
	
	@RequestMapping(value="/joinpage.do", method=RequestMethod.GET)		// 회원가입
	public String joinpage(Locale locale, Model model) throws Exception{
		return "join";
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.POST)	// 로그인 기능
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String m_id = request.getParameter("id");
		String m_pass = request.getParameter("pass");
		
		MemberVO memberVO = new MemberVO();
		memberVO.setM_id(m_id);
		memberVO.setM_pass(m_pass);
		
		List<?> list = daycareeService.login(memberVO);
		System.out.println(list);
		
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		String next = null;
		if(list.size()>0) {
			next = "main";
		}else {
			session.setAttribute("list", 0);
			next = "login";
		}
		
		return next;
	}
	
	@RequestMapping(value="/allday.do", method=RequestMethod.GET)	// 전체 어린이집 조회
	public String allDaycare(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectDaycare();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "allday";
	}
	
	@RequestMapping(value="/selectOne.do", method=RequestMethod.GET)	// 상세보기 기능
	public String selectOne(HttpServletRequest request) throws Exception{
		
		int i_number = Integer.parseInt(request.getParameter("i_number"));
		
		List<?> one =daycareeService.selectOne(i_number);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "selectOne";
	}
	
	@RequestMapping(value="/searchOne.do", method=RequestMethod.POST)	// 검색하기 기능
	public void searchOne(HttpServletRequest request, HttpServletResponse response) throws Exception{
		System.out.println("넘어온다.");
		String i_name = request.getParameter("i_name");
		System.out.println(i_name);
		
		List<?> search = daycareeService.search(i_name);
		System.out.println(search);
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(search);
	}
}
