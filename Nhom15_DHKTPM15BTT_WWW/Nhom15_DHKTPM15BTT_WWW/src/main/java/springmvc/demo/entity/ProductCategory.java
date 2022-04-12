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
@IdClass(ProductCategoryPK.class)
@Table(name = "Product_Category")
public class ProductCategory implements Serializable{

	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "category_id", columnDefinition = "uniqueidentifier")
	private Category categoryId;
	
	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "product_id", columnDefinition = "uniqueidentifier")
	private Product productId;
	
	public Category getCategory() {
		return categoryId;
	}
	public void setCategory(Category categoryId) {
		this.categoryId = categoryId;
	}
	public Product getProduct() {
		return productId;
	}
	public void setProduct(Product productId) {
		this.productId = productId;
	}
	public ProductCategory(Category categoryId, Product productId) {
		super();
		this.categoryId = categoryId;
		this.productId = productId;
	}
	public ProductCategory() {
		super();
	}
	@Override
	public String toString() {
		return "ProductCategory [category=" + categoryId + ", product=" + productId + "]";
	}
	
}
