package com.springframework.mvc.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springframework.mvc.model.Student;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Value("#{countryOptions}")
	private Map<String, String> countryOptions;
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		model.addAttribute("countryOptions",countryOptions);
		return "student-form";
	}
	
	@RequestMapping("/processForm")
	public String ProcessForm(@ModelAttribute("student") Student student) {
		System.out.println("Student :"+student.getFirstName());
		return "student-confirmation";
	}
	
}
