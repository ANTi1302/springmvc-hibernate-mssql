package springmvc.demo.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class PermissionDto implements Serializable {

	private String permissionId;
	private String title;
	private String description;
	private int active;
	private Date createdAt;
	private Date updateAt;
	private List<RolePermissionDto> rolePermissions;
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
	public List<RolePermissionDto> getRolePermissions() {
		return rolePermissions;
	}
	public void setRolePermissions(List<RolePermissionDto> rolePermissions) {
		this.rolePermissions = rolePermissions;
	}
	

}
