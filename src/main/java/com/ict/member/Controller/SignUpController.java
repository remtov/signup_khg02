package com.ict.member.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="/SignUpView/{SignNum}",method=RequestMethod.GET)
	public String getSignUpOne(Model m ,@PathVariable Integer SignNum) {
	m.addAttribute("getOne",sus.selectOneSignUpList(SignNum));
	return "SignUp/View";
	}
	
	@RequestMapping(value="/SignUp",method=RequestMethod.POST)
	@ResponseBody
	public int getDo(@RequestBody SignUp su) {
								
		return sus.insertList(su);
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	@ResponseBody
	public int getLogin(@RequestBody SignUp su) {
								
		return sus.login(su);
	}
	
	@RequestMapping(value="/Delete/{signupNum}",method=RequestMethod.DELETE)
	@ResponseBody
	public int getDelete(@PathVariable Integer signupNum) {
	
		return sus.deleteSignUpList(signupNum);
	}
	@RequestMapping(value="/update/{signupNum}",method=RequestMethod.PUT)
	@ResponseBody
	public Integer updateLevelInfo(@RequestBody SignUp su,@PathVariable Integer signupNum) {
		su.setSignupNum(signupNum);
		return sus.updateList(su);
		
	}
	
	@RequestMapping(value="/findId",method=RequestMethod.GET)
	public @ResponseBody SignUp getSignUpOne2(@ModelAttribute SignUp su) {

	return sus.selectId(su);
	}
	@RequestMapping(value="/findpass",method=RequestMethod.GET)
	public @ResponseBody SignUp getSignUpOne3(@ModelAttribute SignUp su) {

	return sus.selectPassword(su);
	}

	
}
 