package org.spring.jesa5.repository;

import java.util.List;

import org.spring.jesa5.dto.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StudentRepository extends JpaRepository<Student, Integer> {
	Student findByEmail(String email);

	Student findByMobile(long mobile);

	@Query("select x from Student x where status=true and doj=null")
	List<Student> featchAllAcceptedStudent();


}
