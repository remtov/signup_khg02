package com.ict.member.service;

import java.util.List;

import com.ict.member.vo.MemberVO;

public interface MemberService {
	
	public List<MemberVO> selectMember() throws Exception;
}
