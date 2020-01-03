package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-28 13:22:25
 */

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter@Getter@ToString

public class CkInBillEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  入库单据id
	 */
	private Integer inBillId;
	/**
	 *  入库供货商id
	 */
	private Integer inSupplierId;
	/**
	 *  入库时间
	 */
	private String inDatetime;
	/**
	 *  入库部门id
	 */
	private Integer inDepId;
	/**
	 *  入库操作员id
	 */
	private Integer inUserId;
	/**
	 *  是否支付
	 */
	private Integer isPay;
	/**
	 *  支付方式：“1:现金”，“2, 记账”“3，微信”
	 */
	private Integer payMode;

	/**
	 * 子订单
	 */
	private List<CkInSubBillEntity> subBillEntities;

	/**
	 * 供货商
	 */
	private CkSupplierEntity ckSupplierEntity;


}
