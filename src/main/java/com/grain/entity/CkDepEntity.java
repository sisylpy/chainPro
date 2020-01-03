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
import java.util.Objects;


@Setter@Getter@ToString
public class CkDepEntity implements Serializable, Comparable {
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

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		CkDepEntity that = (CkDepEntity) o;
		return Objects.equals(depId, that.depId) &&
				Objects.equals(depType, that.depType) &&
				Objects.equals(depName, that.depName);
	}

	@Override
	public int hashCode() {
		return Objects.hash(depId, depType, depName);
	}


	@Override
	public int compareTo(Object o) {
		if (o instanceof CkDepEntity) {
			CkDepEntity e = (CkDepEntity) o;
			return this.depId.compareTo(e.depId);
		}
		return 0;
	}

}
