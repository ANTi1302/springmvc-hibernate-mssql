package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Order implements Serializable{

	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "orderId", columnDefinition = "uniqueidentifier")
	private String orderId;
	@Column(columnDefinition = "nvarchar(500)")
	private String status;
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@Column(name = "created_at")
	private Date createdAt;
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@Column(name = "update_at")
	private Date updateAt;
	private float discount;
	@Column(name = "ship_Address",columnDefinition = "nvarchar(1000)")
	private String shipAddress;
	@Column(name = "ship_Phone",columnDefinition = "nvarchar(1000)")
	private String shipPhone;
	
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "user_id", columnDefinition = "uniqueidentifier")
	//Tu dong them id ảo cho phần update, delete
	@Cascade(value= {org.hibernate.annotations.CascadeType.SAVE_UPDATE, org.hibernate.annotations.CascadeType.ALL})
	private User user;
	
	@OneToMany(mappedBy = "orderId")
	private List<OrderDetail> orderDetails;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getShipPhone() {
		return shipPhone;
	}

	public void setShipPhone(String shipPhone) {
		this.shipPhone = shipPhone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Order(String orderId, String status, Date createdAt, Date updateAt, float discount, String shipAddress,
			String shipPhone, User user, List<OrderDetail> orderDetails) {
		super();
		this.orderId = orderId;
		this.status = status;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.discount = discount;
		this.shipAddress = shipAddress;
		this.shipPhone = shipPhone;
		this.user = user;
		this.orderDetails = orderDetails;
	}

	public Order(String orderId) {
		super();
		this.orderId = orderId;
	}

	public Order() {
		super();
	}

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", status=" + status + ", createdAt=" + createdAt + ", updateAt="
				+ updateAt + ", discount=" + discount + ", shipAddress=" + shipAddress + ", shipPhone=" + shipPhone
				+ ", user=" + user + ", orderDetails=" + orderDetails + "]";
	}
	
	
}
