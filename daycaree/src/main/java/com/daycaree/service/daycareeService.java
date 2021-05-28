package com.daycaree.service;

import java.util.List;

import com.daycaree.vo.InformationVO;
import com.daycaree.vo.MemberVO;
import com.daycaree.vo.NoticeVO;
import com.daycaree.vo.WarningVO;


public interface daycareeService {
	
	public List<?> login(MemberVO memberVO) throws Exception;// 로그인
	public List<?> selectDaycare() throws Exception; // 전체 어린이집 검색
	public List<?> selectOne(int i_number) throws Exception; // 어린이집 상세보기
	public List<?> search(String i_name) throws Exception; // 검색기능
	public int update(InformationVO informationVO) throws Exception; // 수정하기
	public List<?> selectWarning() throws Exception; // 위반 어린이집
	public List<?> w_selectOne(int w_number) throws Exception; // 위반 어린이집 상세보기
	public int deleteDay(int i_number) throws Exception; // 어린이집 삭제하기
	public int ad_insertDay(InformationVO informationVO) throws Exception; // 어린이집 등록하기
	public int w_update(WarningVO warningVO) throws Exception; // 위반 어린이집 수정하기
	public int w_deleteDay(int w_number) throws Exception; // 위반 어린이집 삭제하기
	public int ad_w_insertDay(WarningVO warningVO) throws Exception; // 위반 어린이집 등록하기
	public List<?> selectNotice() throws Exception; // 공지사항
	public List<?> n_selectOne(int n_postnum) throws Exception; // 공지사항 상세보기
	public int n_update(NoticeVO noticeVO) throws Exception; // 공지사항 수정하기
	public int n_deleteDay(int n_postnum) throws Exception; // 공지사항 삭제하기
	public int ad_n_insertDay(NoticeVO noticeVO) throws Exception; // 공지사항 등록하기

}
