package com.phoenixjcam.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.phoenixjcam.employee.model.EmployeeModel;
import com.phoenixjcam.employee.service.EmployeeService;

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController
{
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView addEmployeePage()
	{
		ModelAndView modelAndView = new ModelAndView("add");
		modelAndView.addObject("employeeModel", new EmployeeModel());

		return modelAndView;
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView addingEmployee(@ModelAttribute EmployeeModel employeeModel)
	{
		ModelAndView modelAndView = new ModelAndView("home");

		// change startDate in db to time stamp 

		employeeService.addEmployee(employeeModel);

		String message = "New employee successfully added.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView employeeList()
	{
		ModelAndView modelAndView = new ModelAndView("list");

		List<EmployeeModel> employees = employeeService.getEmployees();
		modelAndView.addObject("employees", employees);

		return modelAndView;
	}

	@RequestMapping(value = "/detiles/{id}", method = RequestMethod.GET)
	public ModelAndView detilesEmployeePage(@PathVariable Integer id)
	{
		ModelAndView modelAndView = new ModelAndView("details");

		EmployeeModel employeeModel = employeeService.getEmployee(id);
		modelAndView.addObject("employee", employeeModel);
		// + picture path stored in db - employee table
		// pic of empl stored in res folder

		return modelAndView;
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView editEmployeePage(@PathVariable Integer id)
	{
		ModelAndView modelAndView = new ModelAndView("update");

		EmployeeModel employeeModel = employeeService.getEmployee(id);
		modelAndView.addObject("employee", employeeModel);

		return modelAndView;
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public ModelAndView edditingEmployee(@ModelAttribute EmployeeModel employeeModel, @PathVariable Integer id)
	{
		ModelAndView modelAndView = new ModelAndView("home");
		// employeeModel.setStartDate(new Date());

		employeeService.updateEmployee(employeeModel);
		String message = "Employee successfully updated.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView home(@PathVariable Integer id)
	{
		ModelAndView modelAndView = new ModelAndView("home");

		employeeService.deleteEmployee(id);
		String message = "Employee successfully deleted.";
		modelAndView.addObject("message", message);

		return modelAndView;
	}	
}
