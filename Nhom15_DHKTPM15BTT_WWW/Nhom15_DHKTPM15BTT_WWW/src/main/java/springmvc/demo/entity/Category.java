package springmvc.demo.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

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
	@Column(columnDefinition = "nvarchar(1000)")
	private String icon;
	@Transient
	private MultipartFile file;
		
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
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
