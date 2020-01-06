package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-09-19 19:11:01
 */

import com.grain.entity.CkGoodsEntity;

import java.util.List;
import java.util.Map;

public interface CkGoodsService {
	
	CkGoodsEntity queryObject(Integer goodsId);
	
	List<CkGoodsEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkGoodsEntity ckGoods);
	
	void update(CkGoodsEntity ckGoods);
	
	void delete(Integer goodsId);
	
	void deleteBatch(Integer[] goodsIds);

	List<CkGoodsEntity> queryGoodsList(Map<String, Object> map);

	List<CkGoodsEntity> queryPinyin(String pinyin);

    List<CkGoodsEntity> queryRecordGoods(String substring);

    List<CkGoodsEntity> downloadGoods();

	List<CkGoodsEntity> queryPurchaseGoods(Integer purDepId);

	List<CkGoodsEntity> queryGoodsByParams(Map<String, Object> map);

	int queryTotalByParams(Map<String, Object> map);

	List<CkGoodsEntity> queryPurchaseGoodsByFatherId(Map<String, Object> map);

	List<CkGoodsEntity> queryTypeCateList(Integer type);

	List<CkGoodsEntity> queryPurchaseGoodsByType(Integer type);
}
