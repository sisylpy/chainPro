package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-28 13:18:57
 */

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter@Getter@ToString

public class CkInSubBillEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  子单据id
	 */
	private Integer inSubBillId;
	/**
	 *  主单据id
	 */
	private Integer mainBillId;
	/**
	 *  商品id
	 */
	private Integer sGoodsId;
	/**
	 *  入库数量
	 */
	private Float inQuantity;
	/**
	 *  库存数量
	 */
	private Float stockQuantity;
	/**
	 * 单价
	 */
	private Float unitPrice;

}
