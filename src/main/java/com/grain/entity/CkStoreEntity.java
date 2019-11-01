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

}
