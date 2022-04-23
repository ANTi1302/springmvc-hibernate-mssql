package springmvc.demo.dto;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;

import org.springframework.format.annotation.DateTimeFormat;

import springmvc.demo.entity.Order;
import springmvc.demo.entity.Product;

public class OrderDetailDto implements Serializable {

	private OrderDto orderId;
	private ProductDto productId;
	private int amount;
	private int amountShip;
	private Date createdAt;
	private Date updateAt;
	private float discount;
	private double price;
	public OrderDto getOrderId() {
		return orderId;
	}
	public void setOrderId(OrderDto orderId) {
		this.orderId = orderId;
	}
	public ProductDto getProductId() {
		return productId;
	}
	public void setProductId(ProductDto productId) {
		this.productId = productId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getAmountShip() {
		return amountShip;
	}
	public void setAmountShip(int amountShip) {
		this.amountShip = amountShip;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
