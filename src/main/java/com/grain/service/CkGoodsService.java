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

	List<CkGoodsEntity> queryCateGoods();


	List<CkGoodsEntity> queryCateGoodsList(Map<String, Object> map);


	List<CkGoodsEntity> queryPinyin(String pinyin);
}
