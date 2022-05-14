package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Product;
import springmvc.demo.entity.ProductCategory;

public interface ProductCategoryDao{

	public void saveProductCategory(ProductCategory theProductCategory);
	public int demSLTheoProductId(String productId);
	public void deleteProductCategory(String id);
	
}
