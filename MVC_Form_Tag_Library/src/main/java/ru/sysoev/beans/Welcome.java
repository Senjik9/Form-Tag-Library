package ru.sysoev.beans;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Welcome {
	
	@NotEmpty(message = "Please enter your name.")
    private String name;
    @Min(value= 6, message = "Minimum password length is 6 characters.")
    private String password;
    private String email;
    private String gender;
    private String education;
    private String company;
    private String job;
    private String jobType;
    private String years;
    private String skill;
    private String note;
      
}
