package springmvc.demo.dto;

import java.io.Serializable;
import java.util.List;


public class CategoryDto implements Serializable {

	private String categoryId;
	private String name;
	private String icon;
	private List<ProductCategoryDto> productCategories;
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
	public List<ProductCategoryDto> getProductCategories() {
		return productCategories;
	}
	public void setProductCategories(List<ProductCategoryDto> productCategories) {
		this.productCategories = productCategories;
	}
	
}
