package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-25 20:17:53
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkPickEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer pickId;
	/**
	 *  
	 */
	private Integer pApplyId;
	/**
	 *  
	 */
	private Float pickNumber;
	/**
	 *  
	 */
	private Integer pUserId;
	/**
	 *  
	 */
	private String pickTime;
	/**
	 *  
	 */
	private Integer pickStatus;

}
