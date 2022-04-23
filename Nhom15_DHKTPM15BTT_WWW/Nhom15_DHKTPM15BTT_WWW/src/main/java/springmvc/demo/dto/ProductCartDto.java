package springmvc.demo.dto;

import java.io.Serializable;


public class ProductCartDto implements Serializable {

	private CartDto cartId;
	private ProductDto productId;
	private int quatity;
	private double price;
	public CartDto getCartId() {
		return cartId;
	}
	public void setCartId(CartDto cartId) {
		this.cartId = cartId;
	}
	public ProductDto getProductId() {
		return productId;
	}
	public void setProductId(ProductDto productId) {
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
	
}
