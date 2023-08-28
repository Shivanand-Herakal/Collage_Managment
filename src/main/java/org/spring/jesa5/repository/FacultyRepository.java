package org.spring.jesa5.repository;

import java.util.List;

import org.spring.jesa5.dto.Faculty;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface FacultyRepository extends JpaRepository<Faculty, Integer> {
	Faculty findByEmail(String email);

	Faculty findByMobile(long mobile);

	@Query("select x from Faculty x where status=true and doj=null")
	List<Faculty> featchAllAcceptedFaculty();
}
