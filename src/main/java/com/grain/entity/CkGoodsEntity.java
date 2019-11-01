package com.grain.entity;

/**
 * 
 * @author lpy
 * @date 2019-10-26 12:07:07
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;


@Setter@Getter@ToString
public class CkGoodsEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 *  商品id
	 */
	private Integer goodsId;
	/**
	 *  商品名称
	 */
	private String goodsName;
	/**
	 *  父级id
	 */
	private Integer fatherId;
	/**
	 *  规格
	 */
	private String standardName;
	/**
	 *  申请规格
	 */
	private String applyStandardName;
	/**
	 *  "1"正常销售，“2”库存报警，“3”断货
	 */
	private Integer type;
	/**
	 *  是否称重
	 */
	private Integer isWeight;
	/**
	 *  商品状态
	 */
	private Integer status;
	/**
	 *  出货部门id
	 */
	private Integer gOutDepId;
	/**
	 *  库存报警重量
	 */
	private Integer alarmWeight;
	/**
	 *  保质期天数
	 */
	private Integer qualityPeriod;
	/**
	 *  零售价
	 */
	private Float price;
	/**
	 *  零售价单位
	 */
	private String priceStandard;
	/**
	 *  商品排序
	 */
	private Integer gSort;
	/**
	 * 拼音
	 */
	private String pinyin;
	/**
	 * 拼音首字母
	 */
	private String headPinyin;

	/**
	 * 出货部门
	 */
	private CkStoreDepEntity storeDepEntity;

}
