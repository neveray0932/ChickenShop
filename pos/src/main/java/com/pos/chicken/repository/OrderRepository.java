package com.pos.chicken.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pos.chicken.domain.OrderBean;

public interface OrderRepository extends JpaRepository<OrderBean, Integer> {

}
