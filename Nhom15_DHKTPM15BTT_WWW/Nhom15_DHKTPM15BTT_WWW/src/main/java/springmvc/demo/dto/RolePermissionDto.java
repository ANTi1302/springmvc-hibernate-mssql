package springmvc.demo.dto;

import java.io.Serializable;

public class RolePermissionDto implements Serializable {
	private RoleDto roleId;
	private PermissionDto permissionId;
	public RoleDto getRoleId() {
		return roleId;
	}
	public void setRoleId(RoleDto roleId) {
		this.roleId = roleId;
	}
	public PermissionDto getPermissionId() {
		return permissionId;
	}
	public void setPermissionId(PermissionDto permissionId) {
		this.permissionId = permissionId;
	}
	
}
