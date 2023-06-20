package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.EmpDao;
import com.model.EmpModel;
import com.model.LoginModel;
@Service
public class EmpServiceIMPL implements EmpService
{
	@Autowired
	private EmpDao dao;
	
	@Transactional
	public void addemp(EmpModel em) {
		// TODO Auto-generated method stub
		dao.addemp(em);
	}
	
	@Transactional
	public List<EmpModel> getAllModel() {
		// TODO Auto-generated method stub
		List<EmpModel> list=dao.getAllModel();
		return list;
	}
	
	@Transactional
	public List<EmpModel> dologin(LoginModel lm) {
		// TODO Auto-generated method stub
		List<EmpModel> list=dao.dologin(lm);
		return list;
	}

}
