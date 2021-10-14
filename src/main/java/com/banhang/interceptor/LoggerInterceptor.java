package com.banhang.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoggerInterceptor extends HandlerInterceptorAdapter{
	@Override
	public boolean preHandle (HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception{
		System.out.println("LoggerInterceptor.preHandle()");
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, 
			Object handler, ModelAndView modelAndView) throws Exception{
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,HttpServletResponse response, 
			Object handler, Exception ex) throws Exception{
		
	}
}