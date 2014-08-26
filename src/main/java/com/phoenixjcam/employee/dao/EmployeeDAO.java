package com.phoenixjcam.employee.dao;

import java.util.List;

import com.phoenixjcam.employee.model.EmployeeModel;


public interface EmployeeDAO
{
	public void addEmployee(EmployeeModel employeeModel);

	public void updateEmployee(EmployeeModel employeeModel);

	public EmployeeModel getEmployee(int id);

	public void deleteEmployee(int id);

	public List<EmployeeModel> getEmployees();
}
