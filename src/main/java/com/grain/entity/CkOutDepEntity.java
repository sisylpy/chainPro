package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-20 13:35:40
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkOutDepEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  
	 */
	private Integer outDepId;
	/**
	 *  
	 */
	private String outDepName;

}
