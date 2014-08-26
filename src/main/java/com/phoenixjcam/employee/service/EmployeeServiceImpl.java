package com.phoenixjcam.employee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.phoenixjcam.employee.dao.EmployeeDAO;
import com.phoenixjcam.employee.model.EmployeeModel;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService
{
	@Autowired
	private EmployeeDAO employeeDAO;

	@Override
	public void addEmployee(EmployeeModel employeeModel)
	{
		employeeDAO.addEmployee(employeeModel);
	}

	@Override
	public void updateEmployee(EmployeeModel employeeModel)
	{
		employeeDAO.updateEmployee(employeeModel);
	}

	@Override
	public EmployeeModel getEmployee(int id)
	{
		return employeeDAO.getEmployee(id);
	}

	@Override
	public void deleteEmployee(int id)
	{
		employeeDAO.deleteEmployee(id);
	}

	@Override
	public List<EmployeeModel> getEmployees()
	{
		return employeeDAO.getEmployees();
	}

}
