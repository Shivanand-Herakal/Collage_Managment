package org.spring.jesa5.controller;

import org.spring.jesa5.dto.Course;
import org.spring.jesa5.dto.StreamDto;
import org.spring.jesa5.helper.Login;
import org.spring.jesa5.service.AdminService;
import org.spring.jesa5.service.CourseService;
import org.spring.jesa5.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	AdminService adminService;

	@Autowired
	CourseService courseService;
	
	@Autowired
	StudentService studentService;

	@PostMapping("login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session) {
		return adminService.login(login, session);
	}

	@PostMapping("course")
	public ModelAndView addCourse(@ModelAttribute Course course) {
		return courseService.add(course);
	}
	
	@GetMapping("stream")
	public ModelAndView checkCourse()
	{
		return courseService.checkCourse();
	}

	@PostMapping("stream")
	public ModelAndView saveStream(@ModelAttribute StreamDto stream,@RequestParam String courseName)
	{
		return courseService.saveStream(stream,courseName);
	}
	@GetMapping("admission")
	public ModelAndView admission()
	{
		return studentService.fetchAllAcceptedStudent();
	}
	@PostMapping("updateFee/{id}")
	public ModelAndView update_course(@PathVariable int id, @RequestParam double fee) {
		return courseService.update_course(id, fee);
	}

	@GetMapping("update_stream")
	public ModelAndView update_stream_fee(HttpSession session) {
		return courseService.fetchAll_stream(session);
	}

	@PostMapping("/updateFeestream/{id}")
	public ModelAndView updateStreamFee(@PathVariable int id, @RequestParam double fee, HttpSession session) {
		return courseService.update_stream(id, fee, session);
	}
}

