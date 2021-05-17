package com.daycaree.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daycaree.service.daycareeService;
import com.daycaree.service.dao.daycareeDAO;
import com.daycaree.vo.MemberVO;

@Service("daycareeService")
public class daycareeServiceImpl implements daycareeService{
	
	@Autowired
	private daycareeDAO mapper;
	
	@Override
	public List<?> login(MemberVO memberVO) throws Exception {	// 로그인
		return mapper.login(memberVO);
	}

	@Override
	public List<?> selectDaycare() throws Exception {	// 전체 어린이집 조회
		return mapper.selectDaycare();
	}

	@Override
	public List<?> selectOne(int i_number) throws Exception {	// 어린이집 상세보기
		return mapper.selectOne(i_number);
	}

}
