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
import com.daycaree.vo.NoticeVO;
import com.daycaree.vo.WarningVO;

import oracle.net.aso.w;

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
			if(m_id.equals("admin")&&m_pass.equals("admin")) {
				next = "redirect:ad_allday.do";
			}else {				
				next = "redirect:allday.do";
			}
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
	
	@RequestMapping(value="/ad_allday.do", method=RequestMethod.GET)	// 전체 어린이집 조회 (관리자)
	public String ad_allDaycare(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectDaycare();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "ad_allday";
	}
	
	@RequestMapping(value="/selectOne.do", method=RequestMethod.GET)	// 상세보기 기능
	public String selectOne(HttpServletRequest request) throws Exception{
		
		int i_number = Integer.parseInt(request.getParameter("i_number"));
		
		List<?> one =daycareeService.selectOne(i_number);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "selectOne";
	}
	
	@RequestMapping(value="/ad_selectOne.do", method=RequestMethod.GET)	// 상세보기 기능(관리자)
	public String ad_selectOne(HttpServletRequest request) throws Exception{
		
		int i_number = Integer.parseInt(request.getParameter("i_number"));
		
		List<?> one =daycareeService.selectOne(i_number);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "ad_selectOne";
	}
	
	@RequestMapping(value="/warning.do", method=RequestMethod.GET)	// 위반시설 조회
	public String allWarning(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectWarning();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "warning";
	}
	
	@RequestMapping(value="/ad_warning.do", method=RequestMethod.GET)	// 위반시설 조회(관리자)
	public String ad_allWarning(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectWarning();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "ad_warning";
	}
	
	@RequestMapping(value="/w_selectOne.do", method=RequestMethod.GET)	// 위반시설 상세보기 기능
	public String w_selectOne(HttpServletRequest request) throws Exception{
		
		int w_number = Integer.parseInt(request.getParameter("w_number"));
		
		List<?> one =daycareeService.w_selectOne(w_number);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "w_selectOne";
	}
	@RequestMapping(value="/ad_w_selectOne.do", method=RequestMethod.GET)	// 위반시설 상세보기 기능 (관리자)
	public String ad_w_selectOne(HttpServletRequest request) throws Exception{
		
		int w_number = Integer.parseInt(request.getParameter("w_number"));
		
		List<?> one =daycareeService.w_selectOne(w_number);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "ad_w_selectOne";
	}
	
	@RequestMapping(value="/updateOne.do", method=RequestMethod.POST)	// 어린이집 정보 수정 기능(관리자)
	public void updateDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		int i_number = Integer.parseInt(request.getParameter("i_number"));
		String i_name = request.getParameter("i_name");
		String i_address = request.getParameter("i_address");
		String i_loca = request.getParameter("i_loca");
		String i_type = request.getParameter("i_type");
		String i_state = request.getParameter("i_state");
		String i_cctv = request.getParameter("i_cctv");
		int i_cctv_all = Integer.parseInt(request.getParameter("i_cctv_all"));
		int i_cctv_bo = Integer.parseInt(request.getParameter("i_cctv_bo"));
		int i_cctv_gong = Integer.parseInt(request.getParameter("i_cctv_gong"));
		int i_cctv_nol = Integer.parseInt(request.getParameter("i_cctv_nol"));
		int i_cctv_sik = Integer.parseInt(request.getParameter("i_cctv_sik"));
		int i_cctv_gang = Integer.parseInt(request.getParameter("i_cctv_gang"));
		int i_cctv_jo = Integer.parseInt(request.getParameter("i_cctv_jo"));
		int i_cctv_bok = Integer.parseInt(request.getParameter("i_cctv_bok"));
		int i_cctv_office = Integer.parseInt(request.getParameter("i_cctv_office"));
		int i_cctv_yang = Integer.parseInt(request.getParameter("i_cctv_yang"));
		int i_cctv_out = Integer.parseInt(request.getParameter("i_cctv_out"));
		String i_cctv_time = request.getParameter("i_cctv_time");
		String i_cctv_hd = request.getParameter("i_cctv_hd");
		String i_cctv_date = request.getParameter("i_cctv_date");
		String i_cctv_money = request.getParameter("i_cctv_money");
		String i_system = request.getParameter("i_system");
		
		InformationVO informationVO = new InformationVO();
		informationVO.setI_number(i_number);
		informationVO.setI_name(i_name);
		informationVO.setI_address(i_address);
		informationVO.setI_loca(i_loca);
		informationVO.setI_type(i_type);
		informationVO.setI_state(i_state);
		informationVO.setI_cctv(i_cctv);
		informationVO.setI_cctv_all(i_cctv_all);
		informationVO.setI_cctv_bo(i_cctv_bo);
		informationVO.setI_cctv_gong(i_cctv_gong);
		informationVO.setI_cctv_nol(i_cctv_nol);
		informationVO.setI_cctv_sik(i_cctv_sik);
		informationVO.setI_cctv_gang(i_cctv_gang);
		informationVO.setI_cctv_jo(i_cctv_jo);
		informationVO.setI_cctv_bok(i_cctv_bok);
		informationVO.setI_cctv_office(i_cctv_office);
		informationVO.setI_cctv_yang(i_cctv_yang);
		informationVO.setI_cctv_out(i_cctv_out);
		informationVO.setI_cctv_time(i_cctv_time);
		informationVO.setI_cctv_hd(i_cctv_hd);
		informationVO.setI_cctv_date(i_cctv_date);
		informationVO.setI_cctv_money(i_cctv_money);
		informationVO.setI_system(i_system);
		
		System.out.println(informationVO);
		int cnt = daycareeService.update(informationVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	
	@RequestMapping(value="/w_updateOne.do", method=RequestMethod.POST)	// 위반시설 정보 수정 기능(관리자)
	public void w_updateDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		int w_number = Integer.parseInt(request.getParameter("w_number"));
		String w_name = request.getParameter("w_name");
		String w_address = request.getParameter("w_address");
		String w_loca = request.getParameter("w_loca");
		String w_type = request.getParameter("w_type");
		String w_leader = request.getParameter("w_leader");
		String w_boss = request.getParameter("w_boss");
		String w_act = request.getParameter("w_act");
		String w_content = request.getParameter("w_content");
		
		WarningVO warningVO = new WarningVO();
		warningVO.setW_number(w_number);
		warningVO.setW_name(w_name);
		warningVO.setW_address(w_address);
		warningVO.setW_loca(w_loca);
		warningVO.setW_type(w_type);
		warningVO.setW_leader(w_leader);
		warningVO.setW_boss(w_boss);
		warningVO.setW_act(w_act);
		warningVO.setW_content(w_content);
		
		int cnt = daycareeService.w_update(warningVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	@RequestMapping(value="/n_updateOne.do", method=RequestMethod.POST)	// 공지사항 수정 기능(관리자)
	public void n_updateDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String n_title = request.getParameter("n_title");
		String n_content = request.getParameter("n_content");
		String n_date = request.getParameter("n_date");
		int n_postnum = Integer.parseInt(request.getParameter("n_postnum"));
		
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setN_title(n_title);
		noticeVO.setN_content(n_content);
		noticeVO.setN_date(n_date);
		noticeVO.setN_postnum(n_postnum);
		
		int cnt = daycareeService.n_update(noticeVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	
	@RequestMapping(value="/deleteDay.do", method=RequestMethod.POST)	// 어린이집 삭제하기 기능 (관리자)
	public void deleteDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int i_number = Integer.parseInt(request.getParameter("i_number"));
		
		int cnt = daycareeService.deleteDay(i_number);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	@RequestMapping(value="/w_deleteDay.do", method=RequestMethod.POST)	// 위반시설 삭제하기 기능 (관리자)
	public void w_deleteDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int w_number = Integer.parseInt(request.getParameter("w_number"));
		
		int cnt = daycareeService.w_deleteDay(w_number);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	@RequestMapping(value="/n_deleteDay.do", method=RequestMethod.POST)	// 공지사항 삭제하기 기능 (관리자)
	public void n_deleteDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int n_postnum = Integer.parseInt(request.getParameter("n_postnum"));
		
		int cnt = daycareeService.n_deleteDay(n_postnum);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	
	@RequestMapping(value="/ad_insertDaypage.do", method=RequestMethod.GET)		// 어린이집 등록기능 페이지 (관리자)
	public String ad_insertDay(Locale locale, Model model) throws Exception{
		return "ad_insertDay";
	}
	@RequestMapping(value="/ad_w_insertDaypage.do", method=RequestMethod.GET)		// 위반시설 등록기능 페이지 (관리자)
	public String ad_w_insertDay(Locale locale, Model model) throws Exception{
		return "ad_w_insertDay";
	}
	@RequestMapping(value="/ad_n_insertDaypage.do", method=RequestMethod.GET)		// 공지사항 등록기능 페이지 (관리자)
	public String ad_n_insertDay(Locale locale, Model model) throws Exception{
		return "ad_n_insertDay";
	}
	
	@RequestMapping(value="/ad_insertDay.do", method=RequestMethod.POST)	// 어린이집 정보 등록 기능(관리자)
	public void ad_insertDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String i_name = request.getParameter("i_name");
		String i_address = request.getParameter("i_address");
		String i_loca = request.getParameter("i_loca");
		String i_type = request.getParameter("i_type");
		String i_state = request.getParameter("i_state");
		String i_cctv = request.getParameter("i_cctv");
		int i_cctv_all = Integer.parseInt(request.getParameter("i_cctv_all"));
		int i_cctv_bo = Integer.parseInt(request.getParameter("i_cctv_bo"));
		int i_cctv_gong = Integer.parseInt(request.getParameter("i_cctv_gong"));
		int i_cctv_nol = Integer.parseInt(request.getParameter("i_cctv_nol"));
		int i_cctv_sik = Integer.parseInt(request.getParameter("i_cctv_sik"));
		int i_cctv_gang = Integer.parseInt(request.getParameter("i_cctv_gang"));
		int i_cctv_jo = Integer.parseInt(request.getParameter("i_cctv_jo"));
		int i_cctv_bok = Integer.parseInt(request.getParameter("i_cctv_bok"));
		int i_cctv_office = Integer.parseInt(request.getParameter("i_cctv_office"));
		int i_cctv_yang = Integer.parseInt(request.getParameter("i_cctv_yang"));
		int i_cctv_out = Integer.parseInt(request.getParameter("i_cctv_out"));
		String i_cctv_time = request.getParameter("i_cctv_time");
		String i_cctv_hd = request.getParameter("i_cctv_hd");
		String i_cctv_date = request.getParameter("i_cctv_date");
		String i_cctv_money = request.getParameter("i_cctv_money");
		String i_system = request.getParameter("i_system");
		
		InformationVO informationVO = new InformationVO();
		informationVO.setI_name(i_name);
		informationVO.setI_address(i_address);
		informationVO.setI_loca(i_loca);
		informationVO.setI_type(i_type);
		informationVO.setI_state(i_state);
		informationVO.setI_cctv(i_cctv);
		informationVO.setI_cctv_all(i_cctv_all);
		informationVO.setI_cctv_bo(i_cctv_bo);
		informationVO.setI_cctv_gong(i_cctv_gong);
		informationVO.setI_cctv_nol(i_cctv_nol);
		informationVO.setI_cctv_sik(i_cctv_sik);
		informationVO.setI_cctv_gang(i_cctv_gang);
		informationVO.setI_cctv_jo(i_cctv_jo);
		informationVO.setI_cctv_bok(i_cctv_bok);
		informationVO.setI_cctv_office(i_cctv_office);
		informationVO.setI_cctv_yang(i_cctv_yang);
		informationVO.setI_cctv_out(i_cctv_out);
		informationVO.setI_cctv_time(i_cctv_time);
		informationVO.setI_cctv_hd(i_cctv_hd);
		informationVO.setI_cctv_date(i_cctv_date);
		informationVO.setI_cctv_money(i_cctv_money);
		informationVO.setI_system(i_system);
		
		System.out.println(informationVO);
		int cnt = daycareeService.ad_insertDay(informationVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	
	@RequestMapping(value="/ad_w_insertDay.do", method=RequestMethod.POST)	// 위반시설 등록 기능(관리자)
	public void ad_w_insertDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String w_name = request.getParameter("w_name");
		String w_address = request.getParameter("w_address");
		String w_loca = request.getParameter("w_loca");
		String w_type = request.getParameter("w_type");
		String w_leader = request.getParameter("w_leader");
		String w_boss = request.getParameter("w_boss");
		String w_act = request.getParameter("w_act");
		String w_content = request.getParameter("w_content");
		
		WarningVO warningVO = new WarningVO();
		warningVO.setW_name(w_name);
		warningVO.setW_address(w_address);
		warningVO.setW_loca(w_loca);
		warningVO.setW_type(w_type);
		warningVO.setW_leader(w_leader);
		warningVO.setW_boss(w_boss);
		warningVO.setW_act(w_act);
		warningVO.setW_content(w_content);
		
		int cnt = daycareeService.ad_w_insertDay(warningVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	@RequestMapping(value="/ad_n_insertDay.do", method=RequestMethod.POST)	// 공지사항 등록 기능(관리자)
	public void ad_n_insertDay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String n_title = request.getParameter("n_title");
		String n_content = request.getParameter("n_content");
		String n_date = request.getParameter("n_date");
		
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setN_title(n_title);
		noticeVO.setN_content(n_content);
		noticeVO.setN_date(n_date);
		
		int cnt = daycareeService.ad_n_insertDay(noticeVO);
		
		response.setContentType("text/plain;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(cnt);
	}
	@RequestMapping(value="/ad_notice.do", method=RequestMethod.GET)	// 공지사항 조회 (관리자)
	public String ad_notice(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectNotice();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "ad_notice";
	}
	@RequestMapping(value="/notice.do", method=RequestMethod.GET)	// 공지사항 조회
	public String notice(HttpServletRequest request) throws Exception{
		
		List<?> all =daycareeService.selectNotice();
		
		HttpSession session = request.getSession();
		session.setAttribute("all", all);
		return "notice";
	}
	@RequestMapping(value="/ad_n_selectOne.do", method=RequestMethod.GET)	// 공지사항 상세보기 기능 (관리자)
	public String ad_n_selectOne(HttpServletRequest request) throws Exception{
		
		int n_postnum = Integer.parseInt(request.getParameter("n_postnum"));
		
		List<?> one =daycareeService.n_selectOne(n_postnum);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "ad_n_selectOne";
	}
	@RequestMapping(value="/n_selectOne.do", method=RequestMethod.GET)	// 공지사항 상세보기 기능 
	public String n_selectOne(HttpServletRequest request) throws Exception{
		
		int n_postnum = Integer.parseInt(request.getParameter("n_postnum"));
		
		List<?> one =daycareeService.n_selectOne(n_postnum);
		
		HttpSession session = request.getSession();
		session.setAttribute("one", one);
		return "n_selectOne";
	}
	
	@RequestMapping(value="/logout.do",method=RequestMethod.GET)	// 로그아웃 기능
	public void logout(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session.invalidate();
		
		PrintWriter out = response.getWriter();
		out.print(1);
	}
}
