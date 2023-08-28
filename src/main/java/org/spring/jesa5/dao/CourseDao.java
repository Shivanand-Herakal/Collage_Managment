package org.spring.jesa5.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.spring.jesa5.dto.Course;
import org.spring.jesa5.dto.StreamDto;
import org.spring.jesa5.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jakarta.persistence.EntityManager;

@Repository
public class CourseDao {

	@Autowired
	CourseRepository repository;
	
	@Autowired
	private EntityManager em;


	public void add(Course course) {
		repository.save(course);
	}

	public Course fetch(String name) {
		return repository.findByName(name);
	}

	public List<Course> fetch() {
		return repository.findAll();
	}
	public Course update(Course course) {

		return repository.save(course);
	}

	public List<StreamDto> fetchstreambycourse(int courseId) {
		Course course = em.find(Course.class, courseId);
		if (course != null) {
			return course.getStreams();
		} else {
			return new ArrayList<>();
		}
	}

	public Course fetchById(int id) {
		Optional<Course> op = repository.findById(id);
		if (op.isEmpty())
			return null;
		else
			return op.get();
	}

}
