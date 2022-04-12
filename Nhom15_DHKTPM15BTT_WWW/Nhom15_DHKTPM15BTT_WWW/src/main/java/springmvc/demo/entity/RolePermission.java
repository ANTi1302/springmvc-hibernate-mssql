package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@IdClass(RolePermissionPK.class)
@Table(name ="Role_Permission" )
public class RolePermission implements Serializable{

	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "role_id", columnDefinition = "uniqueidentifier")
	private Role roleId;
	
	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "permission_id", columnDefinition = "uniqueidentifier")
	private Permission permissionId;

	public Role getRoleId() {
		return roleId;
	}

	public void setRoleId(Role roleId) {
		this.roleId = roleId;
	}

	public Permission getPermissionId() {
		return permissionId;
	}

	public void setPermissionId(Permission permissionId) {
		this.permissionId = permissionId;
	}

	public RolePermission(Role roleId, Permission permissionId) {
		super();
		this.roleId = roleId;
		this.permissionId = permissionId;
	}

	public RolePermission() {
		super();
	}

	@Override
	public String toString() {
		return "RolePermission [roleId=" + roleId + ", permissionId=" + permissionId + "]";
	}
	
	
}
