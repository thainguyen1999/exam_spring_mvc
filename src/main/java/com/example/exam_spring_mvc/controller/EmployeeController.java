package com.example.exam_spring_mvc.controller;

import com.example.exam_spring_mvc.entity.Employee;
import com.example.exam_spring_mvc.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/employee")

public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/getFormCreateEmployee")
    public String getFormCreate(ModelMap modelMap){
            String view="createOrUpdateForm";
            try{
                Employee employee=new Employee();
                modelMap.addAttribute("employee", employee);

            }catch (Exception e){
                System.err.println(e.getMessage());
            }
            return view;
    }
    @PostMapping("/create")
    public  String saveEmployee( Employee employee){
            String view="redirect:/employee/getAll";
            try {
               employeeService.saveEmployee(employee);
            }catch (Exception e){
                System.err.println(e.getMessage());
            }
        return view;
    }
    @GetMapping("/getAll")
    public String getAll(ModelMap modelMap){
        String view="listEmployee";
        try {
            List<Employee> employee=employeeService.findAllEmployee();
            modelMap.addAttribute("employee",employee);

        }catch (Exception e){
            System.err.println(e.getMessage());
        }
        return view;
    }

}
