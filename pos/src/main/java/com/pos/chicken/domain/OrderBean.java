package com.pos.chicken.domain;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import com.fasterxml.jackson.annotation.JsonIgnore;


import lombok.Data;

@Entity
@Table(name="orders")
@Data
public class OrderBean {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Order_ID")
	private Integer orderId;
	@Column(name="Order_Date")
	private java.util.Date orderDate;
	@Column(name="Order_mark")
	private String orderMark;
	
//	@JsonManagedReference
	@JsonIgnore
	@OneToMany(mappedBy="orderfk",cascade= {CascadeType.ALL},fetch = FetchType.EAGER)
	private List<OrderDetailBean> orderdetails;
	
//	@JsonBackReference
	@JsonIgnore
	@ManyToOne
	@JoinColumn(
			name="Emp_ID",
			referencedColumnName = "Emp_ID",
			insertable=true,updatable=true
	)
	
	private EmpBean empfk;
	
	

	@Override
	public String toString() {
		return "OrderBean [orderId=" + orderId + ", orderDate=" + orderDate + ", orderMark=" + orderMark
				+ "]";
	}
	
//	@ManyToOne
//	@JoinColumn(
//			name="OrderD_id",
//			referencedColumnName = "OrderD_id",
//			insertable=false,updatable=false
//	)
//	
//	private OrderDetailBean orderdetail;
	
	

}
