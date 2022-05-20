package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Product implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "product_id", columnDefinition = "uniqueidentifier")
	private String productId;
	@Column(columnDefinition = "nvarchar(1000)")
	@Size(min = 5, max=100, message = "{product.name.lenErr}")
	private String name;
	@Min(value = 1, message = "{product.price.minErr}")
	@Max(value = 100000000,message = "{product.price.maxErr}")
	private double price;
	private float sale;
	@Column(columnDefinition = "nvarchar(1000)")
	private String title;
	@Column(columnDefinition = "nvarchar(1000)")
	private String details;
	private int highlight;
	@Column(name = "new_product")
	private int newProduct;
	@Column(columnDefinition = "nvarchar(50)")
	private String size;
	@DateTimeFormat(pattern = "MM-dd-yyyy")
	@Column(name = "created_at")
	private Date createdAt;
	@Column(name = "update_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updateAt;
	@Min(value = 1, message = "{product.amount.minErr}")
	private int amount;
	@Min(value = 1, message = "{product.quatity.minErr}")
	private int quatity;

	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "branch_id", columnDefinition = "uniqueidentifier")
	private Branchs branchs;
	
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "voucher_id", columnDefinition = "uniqueidentifier")
	private Voucher voucher;
	
	@OneToMany(mappedBy = "product")
	private List<Color> colors;
	
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "saller_id", columnDefinition = "uniqueidentifier")
	private Users user;
	
	@OneToMany(mappedBy = "productId")
	private List<ProductCart> productCarts;
	
	@OneToMany(mappedBy = "productId")
	private List<ProductCategory> productCategories;
	
	@OneToMany(mappedBy = "productId")
	private List<OrderDetail> orderDetails;

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

	public int getQuatity() {
		return quatity;
	}

	public void setQuatity(int quatity) {
		this.quatity = quatity;
	}

	public Branchs getBranchs() {
		return branchs;
	}

	public void setBranchs(Branchs branchs) {
		this.branchs = branchs;
	}

	public Voucher getVoucher() {
		return voucher;
	}

	public void setVoucher(Voucher voucher) {
		this.voucher = voucher;
	}

	public List<Color> getColors() {
		return colors;
	}

	public void setColors(List<Color> colors) {
		this.colors = colors;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public List<ProductCart> getProductCarts() {
		return productCarts;
	}

	public void setProductCarts(List<ProductCart> productCarts) {
		this.productCarts = productCarts;
	}

	public List<ProductCategory> getProductCategories() {
		return productCategories;
	}

	public void setProductCategories(List<ProductCategory> productCategories) {
		this.productCategories = productCategories;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}

	public Product(String productId, String name, double price, float sale, String title, String details, int highlight,
			int newProduct, String size, Date createdAt, Date updateAt, int amount, int quatity, Branchs branchs,
			Voucher voucher, List<Color> colors, Users user, List<ProductCart> productCarts,
			List<ProductCategory> productCategories, List<OrderDetail> orderDetails) {
		super();
		this.productId = productId;
		this.name = name;
		this.price = price;
		this.sale = sale;
		this.title = title;
		this.details = details;
		this.highlight = highlight;
		this.newProduct = newProduct;
		this.size = size;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.amount = amount;
		this.quatity = quatity;
		this.branchs = branchs;
		this.voucher = voucher;
		this.colors = colors;
		this.user = user;
		this.productCarts = productCarts;
		this.productCategories = productCategories;
		this.orderDetails = orderDetails;
	}

	public Product(String name, double price, float sale, String title, String details, int highlight, int newProduct,
			String size, Date createdAt, Date updateAt, int amount, int quatity, Branchs branchs, Voucher voucher,
			Users user) {
		super();
		this.name = name;
		this.price = price;
		this.sale = sale;
		this.title = title;
		this.details = details;
		this.highlight = highlight;
		this.newProduct = newProduct;
		this.size = size;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.amount = amount;
		this.quatity = quatity;
		this.branchs = branchs;
		this.voucher = voucher;
		this.user = user;
	}

	public Product(String productId) {
		super();
		this.productId = productId;
	}

	public Product() {
		super();
	}

	public Product(String productId, String name, double price, float sale, String title, String details, int highlight,
			int newProduct, String size, int amount, Branchs branchs, Voucher voucher, List<Color> colors) {
		super();
		this.productId = productId;
		this.name = name;
		this.price = price;
		this.sale = sale;
		this.title = title;
		this.details = details;
		this.highlight = highlight;
		this.newProduct = newProduct;
		this.size = size;
		this.amount = amount;
		this.branchs = branchs;
		this.voucher = voucher;
		this.colors = colors;
	}

	public Product(String productId, String name, double price, String title, String details, int highlight,
			int newProduct, String size, Date createdAt, int amount, List<Color> colors) {
		super();
		this.productId = productId;
		this.name = name;
		this.price = price;
		this.title = title;
		this.details = details;
		this.highlight = highlight;
		this.newProduct = newProduct;
		this.size = size;
		this.createdAt = createdAt;
		this.amount = amount;
		this.colors = colors;
	}

	@Override
	public int hashCode() {
		return Objects.hash(productId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		return Objects.equals(productId, other.productId);
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", price=" + price + ", sale=" + sale + ", title="
				+ title + ", details=" + details + ", highlight=" + highlight + ", newProduct=" + newProduct + ", size="
				+ size + ", createdAt=" + createdAt + ", updateAt=" + updateAt + ", amount=" + amount + ", quatity="
				+ quatity + ", branchs=" + branchs + ", voucher=" + voucher + ", colors=" + colors + ", user=" + user
				+ ", productCarts=" + productCarts + ", productCategories=" + productCategories + ", orderDetails="
				+ orderDetails + "]";
	}
	
	
}
