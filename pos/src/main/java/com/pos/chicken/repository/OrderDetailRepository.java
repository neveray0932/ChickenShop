package com.pos.chicken.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import com.pos.chicken.domain.OrderDetailBean;

public interface OrderDetailRepository extends JpaRepository<OrderDetailBean, Integer> {

}
