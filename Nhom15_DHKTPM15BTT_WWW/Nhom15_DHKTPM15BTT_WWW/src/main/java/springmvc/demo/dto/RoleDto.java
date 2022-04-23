package springmvc.demo.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import springmvc.demo.entity.RolePermission;
import springmvc.demo.entity.Users;

public class RoleDto implements Serializable {

	private String roleId;
	private String title;
	private int active;
	private String description;
	private Date createdAt;
	private Date updateAt;
	private List<RolePermissionDto> rolePermissions;
	private List<UsersDto> users;
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public List<UsersDto> getUsers() {
		return users;
	}
	public void setUsers(List<UsersDto> users) {
		this.users = users;
	}
	
}
