package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-12-28 10:30:47
 */

import com.grain.entity.CkStockBillEntity;

import java.util.List;
import java.util.Map;

public interface CkStockBillService {
	
	CkStockBillEntity queryObject(Integer stockBillId);
	
	List<CkStockBillEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkStockBillEntity ckStockBill);
	
	void update(CkStockBillEntity ckStockBill);
	
	void delete(Integer stockBillId);
	
	void deleteBatch(Integer[] stockBillIds);

	List<CkStockBillEntity> queryByInStoreId(Integer storeId);
}
