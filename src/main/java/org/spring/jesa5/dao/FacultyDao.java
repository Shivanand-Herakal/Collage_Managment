package org.spring.jesa5.dao;

import java.util.List;
import java.util.Optional;

import org.spring.jesa5.dto.Faculty;
import org.spring.jesa5.repository.FacultyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FacultyDao {
	@Autowired
	FacultyRepository repository;

	public void save(Faculty faculty) {
		repository.save(faculty);
	}

	public Faculty fetch(String email) {
		return repository.findByEmail(email);
	}

	public Faculty fetch(long mobile) {
		return repository.findByMobile(mobile);
	}
	public List<Faculty> fetch() {
		return repository.findAll();
	}

	public Faculty fetchById(int id) {
		Optional<Faculty> op = repository.findById(id);
		if (op.isPresent())
			return op.get();
		else
			return null;		
	}
}