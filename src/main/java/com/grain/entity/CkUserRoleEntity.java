package com.grain.entity;

/**
 * 用户与角色对应关系
 * @author lpy
 * @date 2019-10-27 16:13:06
 */

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter@Getter@ToString

public class CkUserRoleEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Long userRoleId;
	/**
	 *  用户ID
	 */
	private Long roleUserId;
	/**
	 *  角色ID
	 */
	private Long sysRoleId;

}
