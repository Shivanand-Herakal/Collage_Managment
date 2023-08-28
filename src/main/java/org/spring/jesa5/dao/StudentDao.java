package org.spring.jesa5.dao;

import java.util.List;
import java.util.Optional;

import org.spring.jesa5.dto.Student;
import org.spring.jesa5.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDao {

	@Autowired
	StudentRepository repository;

	public Student save(Student student) {
		return repository.save(student);
	}

	public Student fetch(String email)
	{
		return repository.findByEmail(email);
	}

	public Student fetch(long mobile)
	{
		return repository.findByMobile(mobile);
	}

	public List<Student> featchAllAcceptedStudent() {
		return repository.featchAllAcceptedStudent();
	}
	public Student fetch(int id)
	{
		Optional<Student> optional=repository.findById(id);
		if(optional.isPresent())
		return optional.get();
		else{
			return null;
		}
	}

}
