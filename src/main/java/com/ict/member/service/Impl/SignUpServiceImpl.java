package com.ict.member.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.member.DAO.SignUpDAO;
import com.ict.member.service.SignUpService;
import com.ict.member.vo.SignUp;
@Repository
public class SignUpServiceImpl implements SignUpService {

	@Autowired
	private SignUpDAO sdao;
	
	@Override
	public List<SignUp> selectSignUpList(SignUp su) {
	
		return sdao.selectSignUpList(su);
	}

	@Override
	public SignUp selectOneSignUpList(Integer SignNum) {
		// TODO Auto-generated method stub
		return sdao.selectOneSignUpList(SignNum);
	}

	@Override
	public int insertList(SignUp su) {
		// TODO Auto-generated method stub
		return sdao.insertList(su);
	}

	@Override
	public int updateList(SignUp su) {
		// TODO Auto-generated method stub
		return sdao.updateList(su);
	}

	@Override
	public int deleteSignUpList(int SignNum) {
		// TODO Auto-generated method stub
		return sdao.deleteSignUpList(SignNum);
	}

}
