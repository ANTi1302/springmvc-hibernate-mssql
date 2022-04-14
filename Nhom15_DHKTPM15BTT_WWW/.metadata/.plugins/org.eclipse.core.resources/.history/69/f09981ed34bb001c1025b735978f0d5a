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

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Cart implements Serializable {

	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "cart_id", columnDefinition = "uniqueidentifier")
	private String cartId;
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@Column(name = "created_at")
	private Date createdAt;
	
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "user_id", columnDefinition = "uniqueidentifier")
	private Users user;
	
	@OneToMany(mappedBy = "cartId")
	private List<ProductCart> productCarts;

	public String getCartId() {
		return cartId;
	}

	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public List<ProductCart> getProductCarts() {
		return productCarts;
	}

	public void setProductCarts(List<ProductCart> productCarts) {
		this.productCarts = productCarts;
	}

	public Cart(String cartId, Date createdAt, Users user, List<ProductCart> productCarts) {
		super();
		this.cartId = cartId;
		this.createdAt = createdAt;
		this.user = user;
		this.productCarts = productCarts;
	}

	public Cart(String cartId) {
		super();
		this.cartId = cartId;
	}

	public Cart() {
		super();
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", createdAt=" + createdAt + ", user=" + user + ", productCarts="
				+ productCarts + "]";
	}
	
	
	
}
