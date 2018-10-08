package com.ict.member.DAO.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ict.member.DAO.SignUpDAO;
import com.ict.member.vo.SignUp;
@Repository
public class SignUpDAOImpl implements SignUpDAO {


	@Autowired
	private SqlSession ss;
	@Override
	public List<SignUp> selectSignUpList(SignUp su) {
		
		return ss.selectList("SQL.SIGNUP.selectSignUp",su);
	}

	@Override
	public SignUp selectOneSignUpList(Integer SignNum) {
		
		return ss.selectOne("SQL.SIGNUP.selectone",SignNum);
	}

	@Override
	public int insertList(SignUp su) {
		
		return ss.insert("SQL.SIGNUP.insertSignUp",su);
	}

	@Override
	public int updateList(SignUp su) {
		
		return ss.update("SQL.SIGNUP.updateSignUp",su);
	}

	@Override
	public int deleteSignUpList(int SignNum) {
		
		return ss.delete("SQL.SIGNUP.deleteSignUp",SignNum);
	}

}
