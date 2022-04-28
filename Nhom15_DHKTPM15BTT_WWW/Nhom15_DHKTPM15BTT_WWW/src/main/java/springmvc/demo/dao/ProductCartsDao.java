package springmvc.demo.dao;

import java.util.List;

import springmvc.demo.entity.ProductCart;


public interface ProductCartsDao{

	public void addProductCarts(ProductCart cart);
	public List<Object[]> getProductByUserID(String userId);
	public int demSLCartTheoIdUser(String userId);
	public void deleteProductCarts(String id);
	public void deleteProductCartsByCreated_At(String id);
}
