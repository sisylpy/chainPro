package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-09-26 12:59:43
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;


@Setter@Getter@ToString
public class CkLineEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  线路id
	 */
	private Integer lineId;
	/**
	 *  线路名称
	 */
	private String lineName;
	/**
	 *  始发地
	 */
	private String originPoint;

	/**
	 * 送货店铺
	 */
	private List<CkStoreEntity> storeEntityList;



}
