package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Color implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "color_id", columnDefinition = "uniqueidentifier")
	private String colorId;
	@Column(columnDefinition = "nvarchar(500)")
	private String name;
	@Column(columnDefinition = "nvarchar(500)")
	private String code;
	@Column(columnDefinition = "nvarchar(1000)")
	@NotNull(message = "{product.color.nullErr}")
	private String img;
	@Transient
	private MultipartFile file;
	
	
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "product_id", columnDefinition = "uniqueidentifier")
	private Product product;

	public String getColorId() {
		return colorId;
	}

	public void setColorId(String colorId) {
		this.colorId = colorId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
//
//	public Color(String colorId, String name, String code, String img, Product product) {
//		super();
//		this.colorId = colorId;
//		this.name = name;
//		this.code = code;
//		this.img = img;
//		this.product = product;
//	}
//
//	public Color() {
//		super();
//	}

//	public Color(String colorId) {
//		super();
//		this.colorId = colorId;
//	}

	@Override
	public String toString() {
		return "Color [colorId=" + colorId + ", name=" + name + ", code=" + code + ", img=" + img + ", product="
				+ product + "]";
	}
	
	
}
