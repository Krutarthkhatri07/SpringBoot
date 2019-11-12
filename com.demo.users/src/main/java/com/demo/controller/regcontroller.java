package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.service.RegService;

@Controller
public class regcontroller {

	@Autowired
	RegService regservice;
	
	@RequestMapping(value="/search_reg.xx")
	public ModelAndView serach_reg()
	{
		return new ModelAndView("ajexone");
	}
	
	@RequestMapping(value="/json.xx")
	public ModelAndView json(HttpServletRequest request)
	{
		String s=request.getParameter("username1");
		return new  ModelAndView("json","registation",this.regservice.search(s));
	}
	
}
