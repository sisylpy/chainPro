package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import com.grain.entity.CkApplysEntity;
import com.grain.entity.CkDepEntity;
import com.grain.entity.CkGoodsEntity;
import com.grain.entity.CkStoreEntity;

import java.util.List;
import java.util.Map;

public interface CkApplysService {



	CkApplysEntity queryObject(Integer applyId);
	
	List<CkApplysEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkApplysEntity ckApplys);
	
	void update(CkApplysEntity ckApplys);
	
	void delete(Integer applyId);
	
	void deleteBatch(Integer[] applyIds);

	Integer queryPintMax(String date);

	List<CkApplysEntity> queryApplysByQueryIds(Map<String, Object> map);

	List<CkApplysEntity> queryApplysByQueryId(Map<String, Object> map);

	List<CkApplysEntity> queryApplysByLimit(Map<String, Object> map);

	int queryTotalByLimit(Map<String, Object> map);

	List<CkApplysEntity> queryApplysAndSorts(Map<String, Object>  map);

	List<CkApplysEntity> getTodayApplysStores(Map<String, Object>  map);


	List<CkApplysEntity> queryApplysForWeigh(Map<String, Object> map);

	List<CkApplysEntity> queryApplysByGoodsIdForWeigh(Map<String, Object> map);

}
