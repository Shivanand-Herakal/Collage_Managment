package org.spring.jesa5.service;

import org.spring.jesa5.helper.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;

@Service
public class AdminService {
	
	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();
		if (login.getEmail().equals("admin")) {
			if (login.getPassword().equals("admin")) {
					session.setAttribute("admin", "admin");
					view.setViewName("AdminHome");
					view.addObject("success", "Login Success");
			} else {
				view.setViewName("AdminLogin");
				view.addObject("fail", "Password Wrong");
			}
		} else {
			view.setViewName("AdminLogin");
			view.addObject("fail", "Email Wrong");
		}
		return view;
	}
}
