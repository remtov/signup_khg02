package com.ict.member.service.Impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ict.member.dao.MemberDAO;
import com.ict.member.service.MemberService;
import com.ict.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public List<MemberVO> selectMember() throws Exception {

		return dao.selectMember();
	}

}
