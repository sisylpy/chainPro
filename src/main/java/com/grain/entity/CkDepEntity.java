package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkDepEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer depId;
	/**
	 *  
	 */
	private Integer depType;
	/**
	 *  
	 */
	private String depName;

}
