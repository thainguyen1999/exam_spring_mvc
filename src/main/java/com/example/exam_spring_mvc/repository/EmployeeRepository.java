package com.example.exam_spring_mvc.repository;

import com.example.exam_spring_mvc.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
        List<Employee> findEmployeeByName(String name);
}
