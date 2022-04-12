package springmvc.demo.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Category")
public class Category implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "category_id", columnDefinition = "uniqueidentifier")
	private String categoryId;
	@Column(columnDefinition = "nvarchar(500)")
	private String name;
	@Column(columnDefinition = "nvarchar(50)")
	private String icon;
	
	@OneToMany(mappedBy = "categoryId")
	private List<ProductCategory> productCategories;
	
	public List<ProductCategory> getProductCategories() {
		return productCategories;
	}
	public void setProductCategories(List<ProductCategory> productCategories) {
		this.productCategories = productCategories;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	
	public Category(String categoryId, String name, String icon, List<ProductCategory> productCategories) {
		super();
		this.categoryId = categoryId;
		this.name = name;
		this.icon = icon;
		this.productCategories = productCategories;
	}
	public Category(String categoryId) {
		super();
		this.categoryId = categoryId;
	}
	public Category() {
		super();
	}
	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", name=" + name + ", icon=" + icon + "]";
	}
	
	

}
