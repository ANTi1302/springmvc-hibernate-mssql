package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class ProductCartPK implements Serializable{

	private String cartId;
	private String productId;
	public ProductCartPK() {
		super();
	}
	@Override
	public int hashCode() {
		return Objects.hash(cartId, productId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductCartPK other = (ProductCartPK) obj;
		return Objects.equals(cartId, other.cartId) && Objects.equals(productId, other.productId);
	}
	
	
}
