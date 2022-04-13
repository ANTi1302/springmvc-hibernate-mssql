package springmvc.demo.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Users")
public class Users implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "user_id", columnDefinition = "uniqueidentifier")
	private String userId;
	@Column(name = "first_Name",columnDefinition = "nvarchar(500)")
	private String firstName;
	@Column(name = "last_Name",columnDefinition = "nvarchar(500)")
	private String lastName;
	@Column(columnDefinition = "nvarchar(500)")
	private String address;
	@Column(columnDefinition = "nvarchar(500)")
	private String email;
	@Column(columnDefinition = "nvarchar(500)")
	private String phone;
	@Column(columnDefinition = "nvarchar(1000)")
	private String password;
	@Column(name = "access_tokenID",columnDefinition = "nvarchar(1000)")
	private String accessTokenID;
	
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name ="role_id", columnDefinition = "uniqueidentifier")
	private Role role;
	
	@OneToMany(mappedBy = "user")
	private List<Cart> carts;
	
	@OneToMany(mappedBy = "user")
	private List<Product> products;
	
	@OneToMany(mappedBy = "user")
	private List<Order> orders;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccessTokenID() {
		return accessTokenID;
	}

	public void setAccessTokenID(String accessTokenID) {
		this.accessTokenID = accessTokenID;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Cart> getCarts() {
		return carts;
	}

	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public Users(String userId, String firstName, String lastName, String address, String email, String phone,
			String password, String accessTokenID, Role role, List<Cart> carts, List<Product> products,
			List<Order> orders) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.address = address;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.accessTokenID = accessTokenID;
		this.role = role;
		this.carts = carts;
		this.products = products;
		this.orders = orders;
	}

	public Users() {
		super();
	}

	public Users(String userId) {
		super();
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", address=" + address
				+ ", email=" + email + ", phone=" + phone + ", password=" + password + ", accessTokenID="
				+ accessTokenID + ", role=" + role + ", carts=" + carts + ", products=" + products + ", orders="
				+ orders + "]";
	}
	
	
	
}
