package com.dallae.www.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dallae.www.dao.SignUpDAO;
import com.dallae.www.service.SignUpService;
import com.dallae.www.vo.SignUp;
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
	public int deleteSignUpList(int signupNum) {
		// TODO Auto-generated method stub
		return sdao.deleteSignUpList(signupNum);
	}

	@Override
	public SignUp selectId(SignUp su) {
		// TODO Auto-generated method stub
		return sdao.selectId(su);
	}

	@Override
	public SignUp selectPassword(SignUp su) {
		// TODO Auto-generated method stub
		return sdao.selectPassword(su);
	}

	@Override
	public SignUp login(SignUp su) {
		
		return sdao.login(su);
	}



}
