package com.grain.entity;

/**
 * 零售终端
 * @author lpy
 * @date 2019-10-19 16:47:58
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;


@Setter@Getter@ToString
public class CkStoreEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  店铺Id
	 */
	private Integer storeId;
	/**
	 *  店铺名称
	 */
	private String storeName;
	/**
	 *  详细地址
	 */
	private String address;
	/**
	 *  手机号码
	 */
	private String phone;
	/**
	 *  横坐标
	 */
	private String lat;
	/**
	 *  纵坐标
	 */
	private String lun;
	/**
	 *  区域
	 */
	private String district;
	/**
	 *  城市
	 */
	private String city;
	/**
	 *  微信号码
	 */
	private String wxNickName;
	/**
	 *  微信id
	 */
	private String wxOpenid;
	/**
	 *  微信头像
	 */
	private String wxAvatarUrl;
	/**
	 *  微信号码
	 */
	private String wxNumber;
	/**
	 *  打印名称
	 */
	private String printLabel;
	/**
	 *  对外名称
	 */
	private String outLabel;
	/**
	 * 加入路线
	 */
	private Integer joinLine;

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		CkStoreEntity that = (CkStoreEntity) o;
		return Objects.equals(storeId, that.storeId) &&
				Objects.equals(storeName, that.storeName) &&
				Objects.equals(address, that.address) &&
				Objects.equals(phone, that.phone) &&
				Objects.equals(lat, that.lat) &&
				Objects.equals(lun, that.lun) &&
				Objects.equals(district, that.district) &&
				Objects.equals(city, that.city) &&
				Objects.equals(wxNickName, that.wxNickName) &&
				Objects.equals(wxOpenid, that.wxOpenid) &&
				Objects.equals(wxAvatarUrl, that.wxAvatarUrl) &&
				Objects.equals(wxNumber, that.wxNumber) &&
				Objects.equals(printLabel, that.printLabel) &&
				Objects.equals(outLabel, that.outLabel) &&
				Objects.equals(joinLine, that.joinLine);
	}

	@Override
	public int hashCode() {
		return Objects.hash(storeId, storeName, address, phone, lat, lun, district, city, wxNickName, wxOpenid, wxAvatarUrl, wxNumber, printLabel, outLabel, joinLine);
	}

	//	public boolean equals(Object obj) {
//		         User u = (User) obj;
//		         return name.equals(u.name);
//		     }
//
//		     public int hashCode() {
//		 String in = name;
//		        return in.hashCode();
//		    }

}
