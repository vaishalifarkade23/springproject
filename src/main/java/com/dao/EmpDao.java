package com.dao;

import java.util.List;

import com.model.EmpModel;
import com.model.LoginModel;

public interface EmpDao
{
	public void addemp(EmpModel em);
	public List<EmpModel> getAllModel();
	public List<EmpModel> dologin(LoginModel lm);

}
