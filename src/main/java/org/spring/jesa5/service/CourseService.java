package org.spring.jesa5.service;

import java.util.ArrayList;
import java.util.List;

import org.spring.jesa5.dao.CourseDao;
import org.spring.jesa5.dao.StreamDao;
import org.spring.jesa5.dto.Course;
import org.spring.jesa5.dto.StreamDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class CourseService {

	@Autowired
	CourseDao courseDao;
	
	@Autowired
	StreamDto streamDto;
	
	@Autowired
	StreamDao streamDao;

	public ModelAndView add(Course course) {
		ModelAndView view = new ModelAndView();

		Course course2 = courseDao.fetch(course.getName());
		if (course2 == null) {
			courseDao.add(course);
			view.setViewName("/AdminHome");
			view.addObject("success", "Course Added Successfully");
		} else {
			view.setViewName("AddCourse");
			view.addObject("fail", course.getName() + " Course Already Exists");
		}
		return view;
	}

	public ModelAndView checkCourse() {
		ModelAndView view = new ModelAndView();

		List<Course> list = courseDao.fetch();
		if (list.isEmpty()) {
			view.setViewName("/AdminHome");
			view.addObject("fail", "First Add Course");
		} else {
			view.setViewName("AddStream");
			view.addObject("list", list);
		}
		return view;
	}

	public ModelAndView saveStream(StreamDto stream, String courseName) {
		ModelAndView view=new ModelAndView();
		stream.setNseat(stream.getSeat()-((stream.getSeat()*30)/100));
		stream.setMseat(stream.getSeat()-stream.getNseat());
		Course course = courseDao.fetch(courseName);
		List<StreamDto> streams = course.getStreams();
		if (streams == null) {
			streams = new ArrayList<StreamDto>();
		}
		boolean flag=true;
		for(StreamDto s:streams)
		{
			if(s.getName().equalsIgnoreCase(stream.getName()))
			{
				flag=false;
			}
		}
		if(flag)
		{
			streams.add(stream);
			course.setStreams(streams);
			courseDao.add(course);
			view.setViewName("/AdminHome");
			view.addObject("success","Stream Added Success");
		}
		else {
			List<Course> list = courseDao.fetch();
			view.addObject("list", list);
			view.addObject("fail","Stream "+stream.getName()+" already exists in the course "+courseName+"");
			view.setViewName("AddStream");
		}
		return view;
	}
	public ModelAndView update_course(@PathVariable int id, @RequestParam double fee) {
		ModelAndView view = new ModelAndView();
		Course course = courseDao.fetchById(id);
		if (course != null) {
			course.setFee(fee);
			courseDao.add(course);
			view.addObject("success", "Course Fee updated successfully!");
		} else {
			view.addObject("fail", "Failed to update fee. Course not found.");
		}
		view.setViewName("AdminHome");
		return view;
	}

	public ModelAndView fetchAll_stream(HttpSession session) {
		ModelAndView view = new ModelAndView();
		List<StreamDto> streamlist = streamDao.fetchall();
		List<Course> courselist = courseDao.fetch();
		System.out.println(streamlist);
		if (streamlist.isEmpty()) {
			view.addObject("fail", "No Stream fee to update");
			view.setViewName("Admin_Home");
		} else {
			session.setAttribute("streamlist", streamlist);
			session.setAttribute("courselist", courselist);
			view.setViewName("update_fee_stream");
		}
		return view;
	}

	public ModelAndView update_stream(int id, double fee,HttpSession session) {
		ModelAndView view = new ModelAndView();
		List<Course> list = courseDao.fetch();
		StreamDto stream = streamDao.fetchById(id);
		if (stream != null) {
			stream.setFee(fee);
			session.setAttribute("list", list);
			streamDao.save(stream);
			view.addObject("success", "Stream Fee updated successfully!");
		} else {
			view.addObject("fail", "Failed to update fee. Course not found.");
		}
		view.setViewName("update_fee_course");
		return view;
	}
}
