package springmvc.demo.dto;

import java.io.Serializable;

public class ProductCategoryDto implements Serializable {

	private CategoryDto categoryId;
	private ProductDto productId;
	public CategoryDto getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(CategoryDto categoryId) {
		this.categoryId = categoryId;
	}
	public ProductDto getProductId() {
		return productId;
	}
	public void setProductId(ProductDto productId) {
		this.productId = productId;
	}
	

}
