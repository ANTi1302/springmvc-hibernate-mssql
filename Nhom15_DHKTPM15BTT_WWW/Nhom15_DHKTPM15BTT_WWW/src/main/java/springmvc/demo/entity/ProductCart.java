package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@IdClass(ProductCartPK.class)
@Table(name = "Product_Cart")
public class ProductCart implements Serializable{

	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name ="cart_id", columnDefinition = "uniqueidentifier")
	private Cart cartId;
	
	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name ="product_id", columnDefinition = "uniqueidentifier")
	private Product productId;
	
	private int quatity;
	private double price;
	public Cart getCartId() {
		return cartId;
	}
	public void setCartId(Cart cartId) {
		this.cartId = cartId;
	}
	public Product getProductId() {
		return productId;
	}
	public void setProductId(Product productId) {
		this.productId = productId;
	}
	public int getQuatity() {
		return quatity;
	}
	public void setQuatity(int quatity) {
		this.quatity = quatity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public ProductCart(Cart cartId, Product productId, int quatity, double price) {
		super();
		this.cartId = cartId;
		this.productId = productId;
		this.quatity = quatity;
		this.price = price;
	}
	public ProductCart() {
		super();
	}
	@Override
	public String toString() {
		return "ProductCart [cartId=" + cartId + ", productId=" + productId + ", quatity=" + quatity + ", price="
				+ price + "]";
	}
	
	
}
