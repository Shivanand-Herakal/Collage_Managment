package org.spring.jesa5.dao;

import java.util.List;
import java.util.Optional;

import org.spring.jesa5.dto.Staff;
import org.spring.jesa5.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class StaffDao {

	@Autowired
	StaffRepository staffRepository;
	

	public void save(Staff staff) {
		staffRepository.save(staff);
	}

	public Staff fetch(String email)
	{
		return staffRepository.findByEmail(email);
	}

	public Staff fetch(long mobile)
	{
		return staffRepository.findByMobile(mobile);
	}
	public List<Staff> fetch() {
		return staffRepository.findAll();
	}

	public Staff fetchById(int id) {
		Optional<Staff> op = staffRepository.findById(id);
		if (op.isPresent())
			return op.get();
		else
			return null;
			
	}
}
