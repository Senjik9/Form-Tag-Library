package ru.sysoev.controllers;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.validation.Valid;
import ru.sysoev.beans.Welcome;

@Controller
public class TestController {

	@GetMapping("/")
	public String formPage(Model model) {
		Welcome welcome = new Welcome();
		model.addAttribute("welcome", welcome);
		return "formPage";
	}
	
	@PostMapping("/submit")
    public String submit(@Valid @ModelAttribute("welcome") Welcome welcome, BindingResult result) {
          
        if (result.hasErrors()) {
            return "formPage";
        } else {
            return "summary";
        }
    }
	
	@ModelAttribute("jobType")
    public List<String> jobType(){
        List<String> type = Arrays.asList("Permanent", "Contract Based");
        return type;
    }
	
	@ModelAttribute("experienceYears")
    public List<String> experienceYears(){
        List<String> years = Arrays.asList("1-3", "3-5", "Above 5 Years");
        return years;
    }
	
	@ModelAttribute("programmingSkills")
    public List<String> programmingSkills(){
        List<String> skills = Arrays.asList("Java", "C++", "Python", "PHP", "JavaScript");
        return skills;
    }

}
