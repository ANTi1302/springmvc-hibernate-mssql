package springmvc.demo.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import springmvc.demo.entity.ProductCart;
import springmvc.demo.entity.Users;

public class CartDto implements Serializable {

	private String cartId;
	private Date createdAt;
	private Users user;
	private List<ProductCartDto> productCarts;
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
	public List<ProductCartDto> getProductCarts() {
		return productCarts;
	}
	public void setProductCarts(List<ProductCartDto> productCarts) {
		this.productCarts = productCarts;
	}
	
	
}
