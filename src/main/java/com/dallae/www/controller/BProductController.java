package com.dallae.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dallae.www.fileupload.PM;
import com.dallae.www.fileupload.Util;
import com.dallae.www.service.BProductService;
import com.dallae.www.vo.ATProductInfo;

@Controller
public class BProductController {

	@Autowired
	private BProductService BProductService;
	
	@RequestMapping(value = "/BProductInfo", method = RequestMethod.GET)
	@ResponseBody
	public List<ATProductInfo> getBProductInfoList() {
		return BProductService.getBProductList(null);
	}
	@RequestMapping(value = "/BProductInfo/{ProductNumber}", method = RequestMethod.GET)
	public ModelAndView getBProductInfo(@PathVariable Integer ProductNumber) {
		return new ModelAndView("bproduct/view", "product", BProductService.getBProductInfo(ProductNumber));
	}
	@RequestMapping(value = "/BProductInfo/{ProductNumber}", method = RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteBProductInfo(@PathVariable int ProductNumber) {
		return BProductService.deleteBProduct(ProductNumber);
	}
	@RequestMapping(value = "/BProductInfo/{ProductNumber}", method = RequestMethod.POST)
	@ResponseBody
	public Integer updateBProductInfo(MultipartHttpServletRequest request, @PathVariable int ProductNumber) {
		System.out.println(ProductNumber);
		ATProductInfo ATProductInfo =PM.MapToVo(Util.saveFile(request), ATProductInfo.class);
		ATProductInfo.setProductNumber(ProductNumber);
		return BProductService.updateBProduct(ATProductInfo);
	}
	@RequestMapping(value = "/BProductInfo", method = RequestMethod.POST)
	@ResponseBody
	public Integer insertBProductInfo(MultipartHttpServletRequest request) {
		ATProductInfo ATProductInfo =PM.MapToVo(Util.saveFile(request), ATProductInfo.class);
		return BProductService.insertBProduct(ATProductInfo);
	}
	
}
