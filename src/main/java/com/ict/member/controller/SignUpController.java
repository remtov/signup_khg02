package com.ict.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.member.service.SignUpService;
import com.ict.member.vo.SignUp;

@Controller
public class SignUpController {

	@Autowired
	private SignUpService sus;

	@RequestMapping(value="/signup",method=RequestMethod.GET)
	public @ResponseBody List<SignUp> selectSignUpList(@ModelAttribute SignUp su) {
		return sus.selectSignUpList(su);
	}
	@RequestMapping(value="/signup/{signupnum}",method=RequestMethod.GET)
	public @ResponseBody SignUp selectOneSignUpList(@PathVariable Integer signupNum) {
		return sus.selectOneSignUpList(signupNum);
	}

	@RequestMapping(value="/signup",method=RequestMethod.POST)
	@ResponseBody 
	public Integer insertList(@RequestBody SignUp su) {
		return sus.insertList(su); 
	}

	@RequestMapping(value="/signup/{signupnum}",method=RequestMethod.PUT)
	@ResponseBody 
	public Integer updateList(@RequestBody SignUp su,@PathVariable Integer signupNum) {
		su.setSignupNum(signupNum);
		return sus.updateList(su);
	}
	@RequestMapping(value="/signup/{signupnum}",method=RequestMethod.DELETE)
	@ResponseBody 
	public String deleteSignUpList(@PathVariable int signupNum) {
		return sus.deleteSignUpList(signupNum)+""; 
	}

}
