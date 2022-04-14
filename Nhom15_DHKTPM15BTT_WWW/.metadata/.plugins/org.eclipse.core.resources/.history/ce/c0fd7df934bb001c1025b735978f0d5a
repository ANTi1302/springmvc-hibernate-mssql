package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Permission implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "permission_id", columnDefinition = "uniqueidentifier")
	private String permissionId;
	@Column(columnDefinition = "nvarchar(50)")
	private String title;
	@Column(columnDefinition = "nvarchar(1000)")
	private String description;
	private int active;
	@Column(name = "created_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date createdAt;
	@Column(name = "update_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date updateAt;
	
	@OneToMany(mappedBy = "permissionId")
	private List<RolePermission> rolePermissions;

	public String getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(String permissionId) {
		this.permissionId = permissionId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
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

	public List<RolePermission> getRolePermissions() {
		return rolePermissions;
	}

	public void setRolePermissions(List<RolePermission> rolePermissions) {
		this.rolePermissions = rolePermissions;
	}

	public Permission(String permissionId, String title, String description, int active, Date createdAt, Date updateAt,
			List<RolePermission> rolePermissions) {
		super();
		this.permissionId = permissionId;
		this.title = title;
		this.description = description;
		this.active = active;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.rolePermissions = rolePermissions;
	}

	public Permission() {
		super();
	}

	public Permission(String permissionId) {
		super();
		this.permissionId = permissionId;
	}

	@Override
	public String toString() {
		return "Permission [permissionId=" + permissionId + ", title=" + title + ", description=" + description
				+ ", active=" + active + ", createdAt=" + createdAt + ", updateAt=" + updateAt + ", rolePermissions="
				+ rolePermissions + "]";
	}
	
	
	
	
	
}
