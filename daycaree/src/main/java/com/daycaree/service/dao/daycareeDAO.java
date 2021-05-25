package com.daycaree.service.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.daycaree.vo.InformationVO;
import com.daycaree.vo.MemberVO;

public interface daycareeDAO {
	public List<?> login(MemberVO memberVO) throws Exception; // 로그인
	public List<?> selectDaycare() throws Exception; // 전체 어린이집 검색
	public List<?> selectOne(int i_number) throws Exception; // 어린이집 상세보기
	public List<?> search(String i_name) throws Exception; // 검색기능
	public int update(InformationVO informationVO) throws Exception; // 수정하기
	public List<?> selectWarning() throws Exception; // 위반 어린이집
}
