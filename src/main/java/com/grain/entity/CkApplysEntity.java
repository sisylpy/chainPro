package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkApplysEntity implements Serializable  {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  申请id
	 */
	private Integer applyId;
	/**
	 *  申请商品id
	 */
	private Integer applyGoodsId;
	/**
	 * fatherid
	 */
	private Integer applyGoodsFatherId;
	/**
	 *  申请数量
	 */
	private Float applyNumber;
	/**
	 * 申请次数
	 */
	private Integer orderNumber;
	/**
	 *  申请规格
	 */
	private String applyStandardname;
	/**
	 *  申请分店id
	 */
	private Integer applyStoreId;
	/**
	 *  出货部门id
	 */
	private Integer outDepId;
	/**
	 *  申请时间
	 */
	private String applyTime;
	/**
	 *  送达日期
	 */
	private String deliveryDate;
	/**
	 *  备注
	 */
	private String applyRemark;
	/**
	 * 订货状态
	 */
	private Integer applyStatus;
	/**
	 * 商品实例
	 */
	private CkGoodsEntity ckGoodsEntity;
	/**
	 * 出货实例
	 */
	private CkStockRecordEntity stockRecordEntity;
	/**
	 * 路线id
	 */
	private Integer applyLineId;
	/**
	 * 打印页码
	 */
	private Integer pageNumber;

	/**
	 * store实例
	 */
	private CkStoreEntity storeEntity;

	/**
	 * weixinfocus
	 */
	private Boolean onFocus ;







}
