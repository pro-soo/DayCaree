package com.daycaree.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daycaree.service.daycareeService;
import com.daycaree.service.dao.daycareeDAO;
import com.daycaree.vo.InformationVO;
import com.daycaree.vo.MemberVO;

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

}
