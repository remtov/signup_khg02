package com.ict.member.DAO;

import java.util.List;

import com.ict.member.vo.SignUp;

public interface SignUpDAO {

	public List<SignUp> selectSignUpList(SignUp su);
	public SignUp selectOneSignUpList(Integer SignNum);
	public int insertList(SignUp su);
	public int updateList(SignUp su);
	public int deleteSignUpList(int SignNum);
	
}
