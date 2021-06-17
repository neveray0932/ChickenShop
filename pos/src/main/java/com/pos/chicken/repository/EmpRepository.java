package com.pos.chicken.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pos.chicken.domain.EmpBean;

public interface EmpRepository extends JpaRepository<EmpBean, String> {

}
