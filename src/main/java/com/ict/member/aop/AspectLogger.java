package com.ict.member.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



@Service
@Aspect
public class AspectLogger {

	private static final Logger logger = LoggerFactory.getLogger(AspectLogger.class);        
	private long sTime;  
	@Before("execution(* com.ict.member.Controller.URIController.*(..))")
	public void beforeLog(JoinPoint jp) {
		logger.debug("jp=>{}",jp);//시작
		sTime=System.currentTimeMillis();
	}
	@After("execution(* com.ict.member.Controller.URIController.*(..))")
	public void afterLog(JoinPoint jp) {
		logger.debug("end={}",jp);//끝날때 찍는것
		logger.debug("execution time=>{}ms",(System.currentTimeMillis()-sTime));
	}
	
}
