package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-12-28 10:30:47
 */

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Setter@Getter@ToString

public class CkStockBillEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  出库单id
	 */
	private Integer stockBillId;
	/**
	 *  总金额
	 */
	private Float total;
	/**
	 *  出库日期
	 */
	private String billDate;
	/**
	 *  操作元id
	 */
	private String userId;
	/**
	 *  入库店铺id
	 */
	private Integer inStoreId;

	/**
	 * zijilu
	 */
	private List<CkStockRecordEntity> ckStockRecordEntities;

}
