package com.pos.chicken.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.pos.chicken.domain.ProdBean;

public interface ProdRepository extends JpaRepository<ProdBean, Integer> {

}