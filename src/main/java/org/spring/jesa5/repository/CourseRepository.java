package org.spring.jesa5.repository;

import org.spring.jesa5.dto.Course;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CourseRepository  extends JpaRepository<Course, Integer>{

	Course findByName(String name);

}
