package springmvc.demo.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.NamedAttributeNode;
import javax.persistence.NamedEntityGraph;

import springmvc.demo.entity.Branchs;
import springmvc.demo.entity.Color;
import springmvc.demo.entity.OrderDetail;
import springmvc.demo.entity.ProductCart;
import springmvc.demo.entity.ProductCategory;
import springmvc.demo.entity.Users;
import springmvc.demo.entity.Voucher;
public class ProductDto implements Serializable{

	private String productId;
	private String name;
	private double price;
	private float sale;
	private String title;
	private String details;
	private int highlight;
	private int newProduct;
	private String size;
	private Date createdAt;
	private Date updateAt;
	private int amount;
	private String quatity ;
	private BranchsDto branchs;
	private VoucherDto voucher;
	private List<ColorDto> colors;
	private UsersDto user;
	private List<ProductCartDto> productCarts;
	private List<ProductCategoryDto> productCategories;
	private List<OrderDetailDto> orderDetails;
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public float getSale() {
		return sale;
	}
	public void setSale(float sale) {
		this.sale = sale;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getHighlight() {
		return highlight;
	}
	public void setHighlight(int highlight) {
		this.highlight = highlight;
	}
	public int getNewProduct() {
		return newProduct;
	}
	public void setNewProduct(int newProduct) {
		this.newProduct = newProduct;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getQuatity() {
		return quatity;
	}
	public void setQuatity(String quatity) {
		this.quatity = quatity;
	}
	public BranchsDto getBranchs() {
		return branchs;
	}
	public void setBranchs(BranchsDto branchs) {
		this.branchs = branchs;
	}
	public VoucherDto getVoucher() {
		return voucher;
	}
	public void setVoucher(VoucherDto voucher) {
		this.voucher = voucher;
	}
	public List<ColorDto> getColors() {
		return colors;
	}
	public void setColors(List<ColorDto> colors) {
		this.colors = colors;
	}
	public UsersDto getUser() {
		return user;
	}
	public void setUser(UsersDto user) {
		this.user = user;
	}
	public List<ProductCartDto> getProductCarts() {
		return productCarts;
	}
	public void setProductCarts(List<ProductCartDto> productCarts) {
		this.productCarts = productCarts;
	}
	public List<ProductCategoryDto> getProductCategories() {
		return productCategories;
	}
	public void setProductCategories(List<ProductCategoryDto> productCategories) {
		this.productCategories = productCategories;
	}
	public List<OrderDetailDto> getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(List<OrderDetailDto> orderDetails) {
		this.orderDetails = orderDetails;
	}
	
}
