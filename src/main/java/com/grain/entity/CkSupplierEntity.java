package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-09-19 23:44:01
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkSupplierEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  供货商id
	 */
	private Integer supplierId;
	/**
	 *  供货商名称
	 */
	private String supplierName;
	/**
	 *  业务员
	 */
	private String salesPerson;
	/**
	 *  业务电话
	 */
	private String salesPhone;
	/**
	 *  是否有app
	 */
	private Integer hasApp;
	/**
	 *  付款方式
	 */
	private Integer payMethods;

}
