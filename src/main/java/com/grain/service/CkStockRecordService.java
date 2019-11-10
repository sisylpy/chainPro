package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-11-07 19:44:55
 */

import com.grain.entity.CkStockRecordEntity;
import com.grain.entity.CkStoreEntity;

import java.util.List;
import java.util.Map;

public interface CkStockRecordService {
	
	CkStockRecordEntity queryObject(Integer stockRecordId);
	
	List<CkStockRecordEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkStockRecordEntity ckStockRecord);
	
	void update(CkStockRecordEntity ckStockRecord);
	
	void delete(Integer stockRecordId);
	
	void deleteBatch(Integer[] stockRecordIds);

	List<CkStockRecordEntity> getDeliverOrderStores();

}
