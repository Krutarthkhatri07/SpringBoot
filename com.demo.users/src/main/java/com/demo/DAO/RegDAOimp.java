package com.demo.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegDAOimp implements RegDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	public List search(String s1)
	{
		Session session=sessionFactory.getCurrentSession();
		List list=session.createQuery("from RegVO where uname='"+s1+"'").list();
		return list;
	}

}
