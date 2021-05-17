package com.daycaree.service.dao;

import java.util.List;

import com.daycaree.vo.MemberVO;

public interface daycareeDAO {
	public List<?> login(MemberVO memberVO) throws Exception; // 로그인
	public List<?> selectDaycare() throws Exception; // 전체 어린이집 검색
	public List<?> selectOne(int i_number) throws Exception; // 어린이집 상세보기
}
