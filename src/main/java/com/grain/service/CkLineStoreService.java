package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-18 17:12:45
 */

import com.grain.entity.CkLineStoreEntity;

import java.util.List;
import java.util.Map;

public interface CkLineStoreService {
	
	CkLineStoreEntity queryObject(Integer lineStoreId);
	
	List<CkLineStoreEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkLineStoreEntity ckLineStore);
	
	void update(CkLineStoreEntity ckLineStore);
	
	void delete(Integer lineStoreId);
	
	void deleteBatch(Integer[] lineStoreIds);
}
