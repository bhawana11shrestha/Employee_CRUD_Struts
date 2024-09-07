package com.example.action;

import com.example.dao.EmployeeDAO;
import com.example.model.Employee;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

public class EmployeeAction extends ActionSupport {

    // Data Access Object for Employee
    private EmployeeDAO employeeDAO = new EmployeeDAO();

    // Model object and other fields
    private Employee employee;
    private List<Employee> employeeList;
    private Long id;

    // List Employees
    public String list() {
        employeeList = employeeDAO.getAll();  // Fetch all employees
        return SUCCESS;  // Return success to load the list.jsp view
    }

    // Create/Update Employee
    public String saveOrUpdate() {
        if (id != null) {
            employeeDAO.update(employee);  // Update existing employee
        } else {
            employeeDAO.save(employee);  // Save new employee
        }
        return SUCCESS;  // Return success to load the list after saving
    }

    // Edit Employee
    public String edit() {
        employee = employeeDAO.getById(id);  // Fetch the employee by ID for editing
        return SUCCESS;  // Load the form with employee data
    }

    // Delete Employee
    public String delete() {
        employeeDAO.delete(id);  // Delete the employee by ID
        return SUCCESS;  // Return success and reload the employee list
    }

    // Getter and Setter for Employee (to be used in the form)
    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    // Getter for Employee List (to be used in the employee list view)
    public List<Employee> getEmployeeList() {
        return employeeList;
    }

    // Setter and Getter for ID (used when editing or deleting an employee)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
