package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-18 17:12:45
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkLineStoreEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer lineStoreId;
	/**
	 *  
	 */
	private Integer reLineId;
	/**
	 *  
	 */
	private Integer reStoreId;
	/**
	 *  
	 */
	private Integer sort;

	private CkStoreEntity storeEntity;

}
