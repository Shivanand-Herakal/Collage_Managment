package org.spring.jesa5.dao;

import java.util.List;
import java.util.Optional;

import org.spring.jesa5.dto.StreamDto;
import org.spring.jesa5.repository.StreamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StreamDao {

	@Autowired
	StreamRepository repository;
	
	public List<StreamDto> fetchall() {
		return repository.findAll();
	}

	public StreamDto fetchById(int id) {
		Optional<StreamDto> op = repository.findById(id);
		if (op.isEmpty())
			return null;
		else
			return op.get();
	}

	public void save(StreamDto stream) {
	     repository.save(stream);
	}
	
}
