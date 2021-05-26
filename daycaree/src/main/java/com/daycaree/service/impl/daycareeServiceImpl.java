package com.daycaree.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daycaree.service.daycareeService;
import com.daycaree.service.dao.daycareeDAO;
import com.daycaree.vo.InformationVO;
import com.daycaree.vo.MemberVO;
import com.daycaree.vo.WarningVO;

@Service("daycareeService")
public class daycareeServiceImpl implements daycareeService{
	
	@Autowired
	private daycareeDAO daycareeDAO;
	
	@Override
	public List<?> login(MemberVO memberVO) throws Exception {	// 로그인
		return daycareeDAO.login(memberVO);
	}

	@Override
	public List<?> selectDaycare() throws Exception {	// 전체 어린이집 조회
		return daycareeDAO.selectDaycare();
	}

	@Override
	public List<?> selectOne(int i_number) throws Exception {	// 어린이집 상세보기
		return daycareeDAO.selectOne(i_number);
	}

	@Override
	public List<?> search(String i_name) throws Exception {	// 검색 기능
		return daycareeDAO.search(i_name);
	}

	@Override
	public int update(InformationVO informationVO) throws Exception {	// 수정하기
		return daycareeDAO.update(informationVO);
	}

	@Override
	public List<?> selectWarning() throws Exception {	// 위반 어린이집
		return daycareeDAO.selectWarning();
	}

	@Override
	public List<?> w_selectOne(int w_number) throws Exception {	// 위반 어린이집 상세보기
		return daycareeDAO.w_selectOne(w_number);
	}

	@Override
	public int deleteDay(int i_number) throws Exception {	// 어린이집 삭제하기
		return daycareeDAO.deleteDay(i_number);
	}

	@Override
	public int ad_insertDay(InformationVO informationVO) throws Exception {	// 어린이집 등록하기
		return daycareeDAO.ad_insertDay(informationVO);
	}

	@Override
	public int w_update(WarningVO warningVO) throws Exception {	// 위반 어린이집 수정하기
		return daycareeDAO.w_update(warningVO);
	}

	@Override
	public int w_deleteDay(int w_number) throws Exception {	// 위반 어린이집 삭제하기
		return daycareeDAO.w_deleteDay(w_number);
	}

	@Override
	public int ad_w_insertDay(WarningVO warningVO) throws Exception {	// 위반 어린이집 등록하기
		return daycareeDAO.ad_w_insertDay(warningVO);
	}

}
