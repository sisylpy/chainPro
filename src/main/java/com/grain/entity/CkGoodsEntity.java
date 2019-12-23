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
import java.util.Objects;


@Setter@Getter@ToString
public class CkGoodsEntity implements Serializable, Comparable{
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
	 *  进货规格
	 */
	private String purStandardName;

	/**
	 *  申请规格
	 */
	private String applyStandardName;
	/**
	 *  销售规格
	 */
	private String sellStandardName;
	/**
	 *  进货规格库存数量
	 */
	private String stockPurStandard;

	/**
	 *  申请规格库存数量
	 */
	private String stockApplyStandard;
	/**
	 *  销售规格库存数量
	 */
	private String stockSellStandard;
	/**
	 *  "1"产品，“2”原料
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
	private Integer outDepId;
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
	private String price;
	/**
	 *  零售价单位
	 */
//	private String priceStandard;
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
	private CkDepEntity depEntity;



	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		CkGoodsEntity that = (CkGoodsEntity) o;
		return Objects.equals(goodsId, that.goodsId) &&
				Objects.equals(goodsName, that.goodsName) &&
				Objects.equals(fatherId, that.fatherId) &&
				Objects.equals(purStandardName, that.purStandardName) &&
				Objects.equals(applyStandardName, that.applyStandardName) &&
				Objects.equals(sellStandardName, that.sellStandardName) &&
				Objects.equals(stockPurStandard, that.stockPurStandard) &&
				Objects.equals(stockApplyStandard, that.stockApplyStandard) &&
				Objects.equals(stockSellStandard, that.stockSellStandard) &&
				Objects.equals(type, that.type) &&
				Objects.equals(isWeight, that.isWeight) &&
				Objects.equals(status, that.status) &&
				Objects.equals(outDepId, that.outDepId) &&
				Objects.equals(alarmWeight, that.alarmWeight) &&
				Objects.equals(qualityPeriod, that.qualityPeriod) &&
				Objects.equals(price, that.price) &&
				Objects.equals(gSort, that.gSort) &&
				Objects.equals(pinyin, that.pinyin) &&
				Objects.equals(headPinyin, that.headPinyin) &&
				Objects.equals(depEntity, that.depEntity);
	}

	@Override
	public int hashCode() {
		return Objects.hash(goodsId, goodsName, fatherId, purStandardName, applyStandardName, sellStandardName, stockPurStandard, stockApplyStandard, stockSellStandard, type, isWeight, status, outDepId, alarmWeight, qualityPeriod, price, gSort, pinyin, headPinyin, depEntity);
	}

	@Override
	public int compareTo(Object o) {
		if (o instanceof CkGoodsEntity) {
			CkGoodsEntity e = (CkGoodsEntity) o;
			return this.goodsId.compareTo(e.goodsId);
		}
		return 0;	}
}
