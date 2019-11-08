package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-26 17:09:17
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


@Setter@Getter@ToString

public class CkUserEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer ckUserId;
	/**
	 *  
	 */
	private String ckUserName;
	/**
	 *  
	 */
	private String ckPassword;
	/**
	 *  
	 */
	private Integer userDepId;
	/**
	 *  
	 */
	private Integer userStatus;
	/**
	 *  
	 */
	private String uCreateTime;


	/**
	 * 部门实例
	 */
	private CkDepEntity ckStoreDepEntity;

	/**
	 * 角色
	 */
	private List<SysRoleEntity> roleEntities;
	/**
	 * 保存角色ids
	 */
	private List<Long> roleIds;

}
