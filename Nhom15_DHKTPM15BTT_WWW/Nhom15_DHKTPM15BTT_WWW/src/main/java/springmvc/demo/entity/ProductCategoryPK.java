package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class ProductCategoryPK implements Serializable{

	private String categoryId;
	private String productId;
	
	public ProductCategoryPK() {
		super();
	}
	@Override
	public int hashCode() {
		return Objects.hash(categoryId, productId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductCategoryPK other = (ProductCategoryPK) obj;
		return Objects.equals(categoryId, other.categoryId) && Objects.equals(productId, other.productId);
	}
	
}
