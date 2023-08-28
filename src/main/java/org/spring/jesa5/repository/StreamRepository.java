package org.spring.jesa5.repository;

import org.spring.jesa5.dto.StreamDto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StreamRepository extends JpaRepository<StreamDto, Integer> {

}
