package com.grain.service;

/**
 * 零售终端
 *
 * @author lpy
 * @date 2019-10-15 23:48:27
 */

import com.grain.entity.CkStoreEntity;

import java.util.List;
import java.util.Map;

public interface CkStoreService {
	
	CkStoreEntity queryObject(Integer storeId);
	
	List<CkStoreEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkStoreEntity ckStore);
	
	void update(CkStoreEntity ckStore);
	
	void delete(Integer storeId);
	
	void deleteBatch(Integer[] storeIds);

    CkStoreEntity storeLogin(String phone);

	List<CkStoreEntity> queryLineStore();

    List<CkStoreEntity> queryListAll();

}
