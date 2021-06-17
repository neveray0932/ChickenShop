package com.pos.chicken.domain;





import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Table(name="orderdetail")
@Data
public class OrderDetailBean {
	
	@Id
	@Column(name="Order_ID")
	private Integer orderId;
	
	
	

	@Column(name="Order_count")
	private Integer orderCount;
	@Column(name="Order_price")
	private Integer orderPrice;
	@Column(name="Order_Unitsprice")
	private Integer orderUnitsprice;
	
//	@JsonBackReference	
	@JsonIgnore
	@ManyToOne
	@JoinColumn(
			name="Order_ID",
			referencedColumnName = "Order_ID",
			insertable=false,updatable=false
	)
	
	private OrderBean orderfk;
//	@JsonBackReference
	@JsonIgnore
	@ManyToOne
	@JoinColumn(
			name="Prod_ID",
			referencedColumnName = "Prod_ID",
			insertable=true,updatable=true
	)
	
	private ProdBean prodfk;

	@Override
	public String toString() {
		return "OrderDetailBean [orderId=" + orderId + ", orderCount=" + orderCount + ", orderPrice=" + orderPrice
				+ ", orderUnitsprice=" + orderUnitsprice + "]";
	}


	
}
