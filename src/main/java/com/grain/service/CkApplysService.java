package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-24 18:30:32
 */

import com.grain.entity.CkApplysEntity;

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

	List<CkApplysEntity> getStoreApplys(Integer storeId);

	List<CkApplysEntity> queryOutDepApplysWithStatus(Map<String, Object> map);

	List<CkApplysEntity> queryOutDepStores(Map<String, Object> map);

	int outDepQueryTotalByStatus(Map<String, Object> map);
}
