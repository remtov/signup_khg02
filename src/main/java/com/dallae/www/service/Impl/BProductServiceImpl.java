package com.dallae.www.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dallae.www.dao.impl.BProductDAOImpl;
import com.dallae.www.fileupload.Util;
import com.dallae.www.service.BProductService;
import com.dallae.www.vo.ATProductInfo;

@Service
public class BProductServiceImpl implements BProductService {

	@Autowired
	private BProductDAOImpl BProductDAOImpl;
	
	@Override
	public List<ATProductInfo> getBProductList(ATProductInfo ATProductInfo) {
		return BProductDAOImpl.getBProductList(ATProductInfo);
	}

	@Override
	public ATProductInfo getBProductInfo(int ProductNumber) {
		return BProductDAOImpl.getBProductInfo(ProductNumber);
	}

	@Override
	public int insertBProduct(ATProductInfo ATProductInfo) {
		System.out.println(ATProductInfo);
		int success =BProductDAOImpl.insertBProduct(ATProductInfo);
		
		if(success != 1) {
			String filePath = Util.uploadPath + ATProductInfo.getProductImage();
			
			Util.deleteFile(filePath);
		}
		
		return success;
	}

	@Override
	public int deleteBProduct(int ProductNumber) {
		
		String file = BProductDAOImpl.getBProductInfo(ProductNumber).getProductImage();
		int success = BProductDAOImpl.deleteBProduct(ProductNumber);
		
		if(success == 1) {
			String filePath =Util.uploadPath + file;
			
			Util.deleteFile(filePath);
		}
		
		return success;
	}

	@Override
	public int updateBProduct(ATProductInfo ATProductInfo) { 

		String file = BProductDAOImpl.getBProductInfo(ATProductInfo.getProductNumber()).getProductImage();
		int success = BProductDAOImpl.updateBProduct(ATProductInfo);
		if(ATProductInfo.getProductImage() != null) {
			if(success == 1) {
				String filePath = Util.uploadPath + file;
				
				Util.deleteFile(filePath);
			}
		}
		return success;
	}

}
