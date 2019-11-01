package com.grain.service;

/**
 * 
 *
 * @author lpy
 * @date 2019-10-26 12:11:19
 */

import com.grain.entity.CkStoreDepEntity;

import java.util.List;
import java.util.Map;

public interface CkStoreDepService {
	
	CkStoreDepEntity queryObject(Integer depId);
	
	List<CkStoreDepEntity> queryList(Map<String, Object> map);
	
	int queryTotal(Map<String, Object> map);
	
	void save(CkStoreDepEntity ckStoreDep);
	
	void update(CkStoreDepEntity ckStoreDep);
	
	void delete(Integer depId);
	
	void deleteBatch(Integer[] depIds);

    List<CkStoreDepEntity> queryTypeDepList(Integer type);
}
