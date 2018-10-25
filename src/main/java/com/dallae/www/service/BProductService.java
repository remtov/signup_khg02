package com.dallae.www.service;

import java.util.List;

import com.dallae.www.vo.ATProductInfo;



public interface BProductService {

	public List<ATProductInfo> getBProductList(ATProductInfo ATProductInfo);
	public ATProductInfo getBProductInfo(int ProductNumber);
	public int insertBProduct(ATProductInfo ATProductInfo);
	public int deleteBProduct(int ProductNumber);
	public int updateBProduct(ATProductInfo ATProductInfo);
}
