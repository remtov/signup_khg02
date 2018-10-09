package com.ict.member.dao;

import java.util.List;

import com.ict.member.vo.MemberVO;

public interface MemberDAO {
	
	public List<MemberVO> selectMember() throws Exception;
}
