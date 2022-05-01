package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Slides implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "slides_id", columnDefinition = "uniqueidentifier")
	private String slidesId;
	@Column(columnDefinition = "nvarchar(500)")
	private String img;
	@Column(columnDefinition = "nvarchar(500)")
	private String caption;
	@Column(columnDefinition = "nvarchar(500)")
	private String contents;
	public String getSlidesId() {
		return slidesId;
	}
	public void setSlidesId(String slidesId) {
		this.slidesId = slidesId;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Slides(String slidesId, String img, String caption, String contents) {
		super();
		this.slidesId = slidesId;
		this.img = img;
		this.caption = caption;
		this.contents = contents;
	}
	public Slides(String slidesId) {
		super();
		this.slidesId = slidesId;
	}
	public Slides() {
		super();
	}
	@Override
	public String toString() {
		return "Slides [slidesId=" + slidesId + ", img=" + img + ", caption=" + caption + ", contents=" + contents
				+ "]";
	}
	
	

}
