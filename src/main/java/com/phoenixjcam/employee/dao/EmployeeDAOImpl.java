package com.phoenixjcam.employee.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.phoenixjcam.employee.model.EmployeeModel;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO
{

	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession()
	{
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void addEmployee(EmployeeModel employeeModel)
	{
		getCurrentSession().save(employeeModel);
	}

	@Override
	public void updateEmployee(EmployeeModel employeeModel)
	{
		EmployeeModel employeeUpdate = getEmployee(employeeModel.getId());

		employeeUpdate.setLastName(employeeModel.getLastName());
		employeeUpdate.setFirstName(employeeModel.getFirstName());
		employeeUpdate.setPosition(employeeModel.getPosition());
		employeeUpdate.setOffice(employeeModel.getOffice());
		employeeUpdate.setStartDate(employeeModel.getStartDate());
		employeeUpdate.setSalary(employeeModel.getSalary());

		getCurrentSession().update(employeeUpdate);
	}

	@Override
	public EmployeeModel getEmployee(int id)
	{
		EmployeeModel employeeModel = (EmployeeModel) getCurrentSession().get(EmployeeModel.class, id);

		return employeeModel;
	}

	@Override
	public void deleteEmployee(int id)
	{
		EmployeeModel employeeModel = getEmployee(id);

		if (employeeModel != null)
			getCurrentSession().delete(employeeModel);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<EmployeeModel> getEmployees()
	{
		return getCurrentSession().createQuery("from EmployeeModel").list();
	}

}
