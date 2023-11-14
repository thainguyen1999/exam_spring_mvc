package com.example.exam_spring_mvc.service;

import com.example.exam_spring_mvc.entity.Employee;

import java.util.List;

public interface EmployeeService {
     void saveEmployee(Employee employee);
     List<Employee> findAllEmployee();
}
