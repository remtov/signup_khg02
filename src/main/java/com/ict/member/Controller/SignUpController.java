package com.ict.member.Controller;

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
	public SignUpService sus;

	@RequestMapping(value="/SignUp",method=RequestMethod.GET)
	public @ResponseBody List<SignUp> getList(@ModelAttribute SignUp su) {
									//@RequestParam("liname") String liname으로도 가능
									// @RequestParam Map<String,String> map로 넣어도 됨
									//,@PathVariable int linum
		return sus.selectSignUpList(su);
	}
	@RequestMapping(value="/SignUp/{linum}",method=RequestMethod.GET)
	public @ResponseBody SignUp getSignUpOne(@PathVariable Integer SignNum) {
	
	return sus.selectOneSignUpList(SignNum);
	}
	
	@RequestMapping(value="/SignUp",method=RequestMethod.POST)
	@ResponseBody
	public int getDo(@RequestBody SignUp su) {
								
		return sus.insertList(su);
	}
	
}
 