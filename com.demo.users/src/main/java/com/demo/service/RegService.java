package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.DAO.RegDAO;

@Service
public class RegService {

	@Autowired
	RegDAO regDAO;
	
	@Transactional
	public String search(String s1)
	{
		
	    if(this.regDAO.search(s1).size()>0)
	    {
	    	return "true";
	    }
	    else {
			return "false";
		}
	}

	
}
