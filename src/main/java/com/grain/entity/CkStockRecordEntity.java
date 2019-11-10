package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter@Getter@ToString

public class CkStockRecordEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer stockRecordId;
	/**
	 *  申请id
	 */
	private Integer stApplyId;
	/**
	 *  出库数量
	 */
	private Float quantity;
	/**
	 *  出库时间
	 */
	private String outTime;
	/**
	 *  拣货人员
	 */
	private String pickUserId;
	/**
	 *  检查人员
	 */
	private String checkUserId;
	/**
	 *  录入人员
	 */
	private String enterUserId;
	/**
	 * 出库库类型
	 */
	private Integer inOutType;
	/**
	 * 出库部门id
	 */
	private Integer outDepId;
	/**
	 * 申请分店id
	 */
	private Integer inStoreId;
	/**
	 * shang
	 */
	private Integer stGoodsId;
	/**
	 * 状态
	 */
	private Integer deliveryStatus;
	/**
	 * danjia
	 */
	private String discountPrice;
	/**
	 * shifoudazhe
	 */
	private Integer isDiscount;

	/**
	 * fendian
	 */
	private CkStoreEntity storeEntity;

	/**
	 * apply
	 */
	private CkApplysEntity applysEntity;
	/**
	 * goods
	 */
	private CkGoodsEntity goodsEntity;
	/**
	 * store_dep
	 */
	private CkDepEntity storeDepEntity;

}
