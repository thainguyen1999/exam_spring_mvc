package com.example.exam_spring_mvc.service.impl;

import com.example.exam_spring_mvc.entity.Employee;
import com.example.exam_spring_mvc.repository.EmployeeRepository;
import com.example.exam_spring_mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;
    @Override
    public void saveEmployee(Employee employee) {
        try{
            employeeRepository.save(employee);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    public List<Employee> findAllEmployee() {
        return employeeRepository.findAll();
    }
}
