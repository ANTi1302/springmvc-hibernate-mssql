package springmvc.demo.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Branchs implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "branch_id", columnDefinition = "uniqueidentifier")
	private String branchId;
	@Column(columnDefinition = "nvarchar(500)")
	private String title;
	@Column(columnDefinition = "nvarchar(500)")
	private String img;
	@Column(columnDefinition = "nvarchar(1000)")
	private String description;
	@Column(columnDefinition = "nvarchar(50)")
	
	@OneToMany(mappedBy = "branchs", fetch = FetchType.EAGER)
	private List<Product> products;
	
	
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public String getBranchId() {
		return branchId;
	}
	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public Branchs(String branchId, String title, String img, String description, List<Product> products) {
		super();
		this.branchId = branchId;
		this.title = title;
		this.img = img;
		this.description = description;
		this.products = products;
	}
	public Branchs(String branchId) {
		super();
		this.branchId = branchId;
	}
	public Branchs() {
		super();
	}
	@Override
	public String toString() {
		return "Branchs [branchId=" + branchId + ", title=" + title + ", img=" + img + ", description=" + description
				+ "]";
	}
	

}
