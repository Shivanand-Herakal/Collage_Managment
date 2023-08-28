package org.spring.jesa5.controller;

import java.io.IOException;

import org.spring.jesa5.dto.Staff;
import org.spring.jesa5.helper.Login;
import org.spring.jesa5.service.StaffService;
import org.spring.jesa5.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
@Controller
@RequestMapping("staff")
public class StaffController {

	@Autowired
	StaffService staffService;

	@PostMapping("signup")
	public ModelAndView signup(@ModelAttribute Staff staff,@RequestParam MultipartFile pic,@RequestParam String date) throws IOException
	{
		return staffService.signup(staff,date,pic);
	}
	
	@PostMapping("login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session) {
		return staffService.login(login, session);
	}
	@GetMapping("fetchall")
	public ModelAndView fetchAll()
	{
		return staffService.fetchAll();
	}

	@GetMapping("change/{id}")
	public ModelAndView changeStatus(@PathVariable int id)
	{
		return staffService.changeStatus(id);
	}

}
