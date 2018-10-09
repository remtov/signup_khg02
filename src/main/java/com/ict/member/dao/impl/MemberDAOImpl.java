package com.ict.member.dao.impl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ict.member.dao.MemberDAO;
import com.ict.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.ict.erp.mapper.memberMapper";
	
	@Override
	public List<MemberVO> selectMember() throws Exception {

		return sqlSession.selectList(Namespace+".selectMember");
	}

}
